<?php

/**
 * @version Opencart v2.0.1.1
 */
if (!defined('OWNER'))
    define('OWNER', 'Customer');
 include_once(DIR_SYSTEM . 'library/openpaycardscontroller.php');
class ControllerPaymentOpenpayCards extends OpenpayCardsController {

    public function __construct($registry) {
        parent::__construct($registry);
    }

    public function index() {        
        $this->language->load('payment/openpay_cards');

        $this->data['action'] = $this->url->link('payment/openpay_cards/confirm', '', 'SSL');

        $this->data['text_credit_card'] = $this->language->get('text_credit_card');
        $this->data['text_wait'] = $this->language->get('text_wait');

        $this->data['help_cvc_front'] = $this->language->get('help_cvc_front');
        $this->data['help_cvc_back'] = $this->language->get('help_cvc_back');

        $this->data['entry_cc_owner'] = $this->language->get('entry_cc_owner');
        $this->data['entry_cc_number'] = $this->language->get('entry_cc_number');
        $this->data['entry_cc_expire_date'] = $this->language->get('entry_cc_expire_date');
        $this->data['entry_cc_cvv2'] = $this->language->get('entry_cc_cvv2');
        $this->data['error_error'] = $this->language->get('error_error');
        $this->data['text_success_payment'] = $this->language->get('text_success_payment');

        $this->data['button_confirm'] = $this->language->get('button_confirm');
        $this->data['button_back'] = $this->language->get('button_back');

        $this->data['merchant_id'] = $this->getMerchantId();
        $this->data['public_key'] = $this->getPublicApiKey();
        $this->data['test_mode'] = $this->isTestMode();

        $this->data['months'] = array();

        $now = new dateTime( '2000-01-01' );
        for( $i = $now->format( 'n' ) , $interval = new DateInterval( 'P1M' ); $i <= 12 ; $i++ , $now->add( $interval ) ){
                $this->data['months'][] = array(
                        'text'  => $now->format( 'm' ),
                        'value' => $now->format( 'm' ),
                );
        }

        $this->data['year_expire'] = array();

        $now = new dateTime;
        for( $i = $now->format( 'y' ) , $interval = new DateInterval( 'P1Y' ) , $stop = $i + 10 ; $i <= $stop ; $i++ , $now->add( $interval ) ){
            $this->data['year_expire'][] = array(
                    'text'  => $now->format( 'y' ),
                    'value' => $now->format( 'y' ),
            );
        }
        
        $this->data['months_interest_free'] = $this->getMonthsInterestFree();
        
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
        $this->data['total'] = $order_info['total'];

        if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/payment/openpay_cards.tpl')) {
            $this->template = $this->config->get('config_template') . '/template/payment/openpay_cards.tpl';
        } else {
            $this->template = 'default/template/payment/openpay_cards.tpl';
        }
        
        $this->render();
                        
                        
                        
    
                        
                        
    //return $this->load->view('extension/payment/openpay_cards', $this->data);        
    }

    public function confirm(){
        
        
      
        $json = array();

        if (empty($this->request->post['token']))
        {
            $json['error'] = 'Missing token';
            $this->response->setOutput(json_encode($json));
            return;
        }

        if (empty($this->session->data['order_id']))
        {
            $json['error'] = 'Missing order ID';
            $this->response->setOutput(json_encode($json));
            return;
        }

        $this->load->model('checkout/order');
        $this->language->load('payment/openpay_cards');
        $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);

        if ($this->currency->convert($order_info['total'], $order_info['currency_code'], $this->config->get('sp_total_currency')) < (float) $this->config->get('sp_total'))
        {
            $json['error'] = $this->language->get('error_min_total');
            $this->response->setOutput(json_encode($json));
            return;
        }

        $amount = round($order_info['total'], 2);

        $this->load->model('payment/openpay_cards');
        $customer = $this->model_payment_openpay_cards->getCustomer($this->customer->getId());

        if ($customer == false) {
            
            $this->log->write("Create Openapy Customer");
            
            $order_info = $this->model_checkout_order->getOrder($this->session->data['order_id']);
            $customer_data = array(
                'name' => $order_info['payment_firstname'],
                'last_name' => $order_info['payment_lastname'],
                'email' => $order_info['email'],
                'requires_account' => false
            );

            $customer = $this->createOpenpayCustomer($customer_data, $this->customer->getId());

            if (isset($customer->error)) {
                $json['error'] = $customer->error;
                $this->response->setOutput(json_encode($json));
                return;
            }
        } else {            
            $customer = $this->getOpenpayCustomer($customer['openpay_customer_id']);
        }


        if (file_exists($this->sanitizePath(dirname(__FILE__) . 'openpay_cards_pro.php'))) {
            include $this->sanitizePath(dirname(__FILE__) . 'openpay_cards_pro.php');
        }

        $charge_request = array(
            'method' => 'card',
            'amount' => $amount,
            'source_id' => $this->request->post['token'],
            'device_session_id' => $this->request->post['device_session_id'],
            'description' => 'Order ID# ' . $this->session->data['order_id'],
            'order_id' => $this->session->data['order_id']
        );
        
        if (isset($this->request->post['interest_free']) && $this->request->post['interest_free'] > 1) {
            $charge_request['payment_plan'] = array('payments' => (int) $this->request->post['interest_free']);
        }        
        
        $charge = $this->createOpenpayCharge($customer, $charge_request);


        if (isset($charge->error)) {
            $json['error'] = $charge->error;
            $this->response->setOutput(json_encode($json));
            return;
        } else {

            
               $this->model_checkout_order->confirm($this->session->data['order_id'], $this->config->get('openpay_card_new_status_id'));
            
                        
                        
            $this->model_payment_openpay_cards->addOrder(array(
                'order_id' => $charge->order_id,
                'charge_ref' => $charge->id,
                'capture_status' => $this->config->get('openpay_card_new_status_id'),
                'description' => $charge->description,
                'total' => $charge->amount,
                'currency_code' => $charge->currency,
            ));

            $this->debugLog->write("Order #" . $charge->order_id . " confirmed");
        }

        $json['success'] = $this->url->link('checkout/success', '', 'SSL');
        
      
                
        $this->response->setOutput(json_encode($json));
    }
    
}

?>