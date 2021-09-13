<?php

/**
 * @version Opencart v 2.0.1.1
 */
if (!defined('OWNER'))
    define('OWNER', 'Admin');

    include_once(DIR_SYSTEM . 'library/openpaycardscontroller.php');
    
    
    
class ControllerPaymentOpenpayCards extends OpenpayCardsController {

    public function __construct($registry) {
        parent::__construct($registry);
    }

    public function index() {

        $this->language->load('payment/openpay_cards');

        $this->document->setTitle($this->language->get('heading_title'));

        $this->load->model('setting/setting');

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {

            $setting = $this->model_setting_setting->getSetting('openpay');
            $this->merge($setting, $this->request->post, true);
            
            $this->model_setting_setting->editSetting('openpay', $setting);
            $this->model_setting_setting->editSetting('openpay_cards', $setting);

            $this->session->data['success'] = $this->language->get('text_success');
            
            
            $this->redirect($this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'));
        }

        $this->data['heading_title'] = $this->language->get('heading_title');

        $this->data['tab_api'] = $this->language->get('tab_api');
        $this->data['tab_general'] = $this->language->get('tab_general');
        $this->data['tab_status'] = $this->language->get('tab_status');

        $this->data['text_enabled'] = $this->language->get('text_enabled');
        $this->data['text_disabled'] = $this->language->get('text_disabled');
        $this->data['text_all_zones'] = $this->language->get('text_all_zones');
        $this->data['text_test'] = $this->language->get('text_test');
        $this->data['text_live'] = $this->language->get('text_live');
        $this->data['text_authorization'] = $this->language->get('text_authorization');
        $this->data['text_charge'] = $this->language->get('text_charge');
        $this->data['text_test_mode'] = $this->language->get('text_test_mode');
        $this->data['text_debug_mode'] = $this->language->get('text_debug_mode');
        $this->data['text_yes'] = $this->language->get('text_yes');
        $this->data['text_no'] = $this->language->get('text_no');
        $this->data['text_default_payment_mode'] = $this->language->get('text_default_payment_mode');
        $this->data['text_one_step_mode'] = $this->language->get('text_one_step_mode');
        $this->data['text_two_step_mode'] = $this->language->get('text_two_step_mode');
        $this->data['text_wait_page_load'] = $this->language->get('text_wait_page_load');
        $this->data['text_form'] = $this->language->get('text_form');

        $this->data['entry_test_merchant_id'] = $this->language->get('entry_test_merchant_id');
        $this->data['entry_live_merchant_id'] = $this->language->get('entry_live_merchant_id');
        $this->data['entry_test_secret_key'] = $this->language->get('entry_test_secret_key');
        $this->data['entry_test_public_key'] = $this->language->get('entry_test_public_key');
        $this->data['entry_live_secret_key'] = $this->language->get('entry_live_secret_key');
        $this->data['entry_live_public_key'] = $this->language->get('entry_live_public_key');
        $this->data['entry_mode'] = $this->language->get('entry_mode');
        $this->data['entry_method'] = $this->language->get('entry_method');
        $this->data['entry_total'] = $this->language->get('entry_total');
        $this->data['entry_order_status'] = $this->language->get('entry_order_status');
        $this->data['entry_geo_zone'] = $this->language->get('entry_geo_zone');
        $this->data['entry_status'] = $this->language->get('entry_status');
        $this->data['entry_sort_order'] = $this->language->get('entry_sort_order');
        $this->data['entry_completed_status'] = $this->language->get('entry_completed_status');
        $this->data['entry_new_status'] = $this->language->get('entry_new_status');
        $this->data['entry_title'] = $this->language->get('entry_title');

        $this->data['button_save'] = $this->language->get('button_save');
        $this->data['button_cancel'] = $this->language->get('button_cancel');

        $this->data['help_title'] = $this->language->get('help_title');
        $this->data['help_total'] = sprintf($this->language->get('help_total'), $this->currency->format(MIN_TOTAL, $this->config->get('config_currency')));
        $this->data['help_charge'] = $this->language->get('help_charge');

        foreach ($this->error as $key => $val) {
            if (is_array($val)) {
                $this->data['error_' . $key] = implode('<br>', $val);
            } else {
                $this->data['error_' . $key] = $val;
            }
        }
                if (isset($this->error['warning'])) {
			$this->data['error_warning'] = $this->error['warning'];
		} else {
			$this->data['error_warning'] = '';
		}
		if (isset($this->error['test_merchant_id'])) {
			$this->data['error_test_merchant_id'] = $this->error['test_merchant_id'];
		} else {
			$this->data['error_test_merchant_id'] = '';
		}
		
		if (isset($this->error['test_secret_key'])) {
			$this->data['error_test_secret_key'] = $this->error['test_secret_key'];
		} else {
			$this->data['error_test_secret_key'] = '';
		}
		
		if (isset($this->error['test_public_key'])) {
			$this->data['error_test_public_key'] = $this->error['test_public_key'];
		} else {
			$this->data['error_test_public_key'] = '';
		}
		if (isset($this->error['test_merchant_account'])) {
			$this->data['error_test_merchant_account'] = $this->error['test_merchant_account'];
		} else {
			$this->data['error_test_merchant_account'] = '';
		}


		if (isset($this->error['live_merchant_id'])) {
			$this->data['error_live_merchant_id'] = $this->error['live_merchant_id'];
		} else {
			$this->data['error_live_merchant_id'] = '';
		}
		if (isset($this->error['live_secret_key'])) {
			$this->data['error_live_secret_key'] = $this->error['live_secret_key'];
		} else {
			$this->data['error_live_secret_key'] = '';
		}
		if (isset($this->error['live_public_key'])) {
			$this->data['error_live_public_key'] = $this->error['live_public_key'];
		} else {
			$this->data['error_live_public_key'] = '';
		}

		if (isset($this->error['live_merchant_account'])) {
			$this->data['error_live_merchant_account'] = $this->error['live_merchant_account'];
		} else {
			$this->data['error_live_merchant_account'] = '';
		}                
                
                
                
		if (isset($this->error['total'])) {
			$this->data['error_total'] = $this->error['total'];
		} else {
			$this->data['error_total'] = '';
		}
                
                
                
                

        $this->data['breadcrumbs'] = array();

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/home', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => false
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_payment'),
            'href' => $this->url->link('extension/payment', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/payment/openpay_cards', 'token=' . $this->session->data['token'], 'SSL'),
            'separator' => ' :: '
        );

        $this->data['action'] = $this->url->link('payment/openpay_cards', 'token=' . $this->session->data['token'], 'SSL');
        $this->data['cancel'] = $this->url->link('extension/payment', 'token=' . $this->session->data['token']. '&type=payment', true);        

        $this->data['openpay_card_test_merchant_id'] = $this->fillSetting('openpay_card_test_merchant_id');
        $this->data['openpay_card_live_merchant_id'] = $this->fillSetting('openpay_card_live_merchant_id');
        $this->data['openpay_card_test_public_key'] = $this->fillSetting('openpay_card_test_public_key');
        $this->data['openpay_card_test_secret_key'] = $this->fillSetting('openpay_card_test_secret_key');
        $this->data['openpay_card_live_public_key'] = $this->fillSetting('openpay_card_live_public_key');
        $this->data['openpay_card_live_secret_key'] = $this->fillSetting('openpay_card_live_secret_key');
        $this->data['openpay_card_test_mode'] = $this->fillSetting('openpay_card_test_mode');
        $this->data['openpay_card_new_status_id'] = $this->fillSetting('openpay_card_new_status_id');
        $this->data['openpay_card_title'] = $this->fillSetting('openpay_card_title', $this->language->get('text_title'));
        
        $this->load->model('localisation/order_status');

        $this->data['order_statuses'] = $this->model_localisation_order_status->getOrderStatuses();
        $this->data['openpay_cards_geo_zone_id'] = $this->fillSetting('openpay_cards_geo_zone_id');
        $this->data['currency_symbol_left'] = $this->currency->getSymbolLeft($this->config->get('config_currency'));
        $this->data['currency_symbol_right'] = $this->currency->getSymbolRight($this->config->get('config_currency'));

        $this->load->model('localisation/geo_zone');
        $this->data['geo_zones'] = $this->model_localisation_geo_zone->getGeoZones();

        $this->data['openpay_cards_status'] = $this->fillSetting('openpay_cards_status');
        $this->data['openpay_card_total'] = $this->fillSetting('openpay_card_total');
        $this->data['openpay_cards_sort_order'] = $this->fillSetting('openpay_cards_sort_order');
        $this->data['openpay_charge'] = $this->fillSetting('openpay_charge', 1);
        $this->data['openpay_cards_geo_zone_id'] = $this->fillSetting('openpay_cards_geo_zone_id');
        
        /*
         * MESES SIN INTERESES
         */
        $this->data['months_interest_free'] = array('3' => '3 meses', '6' => '6 meses', '9' => '9 meses', '12' => '12 meses', '18' => '18 meses'); // Se definen los meses disponibles 
        
        if (isset($this->request->post['openpay_card_interest_free'])) {
            $this->data['openpay_card_interest_free'] = $this->request->post['openpay_card_interest_free'];        
        } elseif ($this->config->get('openpay_card_interest_free')) {
            $this->data['openpay_card_interest_free'] = $this->config->get('openpay_card_interest_free');        
        } else {
            $this->data['openpay_card_interest_free'] = array();
        }        
        
      
      
      $this->template = 'payment/openpay_cards.tpl';
		$this->children = array(
			'common/header',
			'common/footer'
		);

		$this->response->setOutput($this->render());
                
                
    }

    protected function validate() {
       
        
        
        if (!$this->user->hasPermission('modify', 'payment/openpay_cards')) {
            $this->error['warning'] = $this->language->get('error_permission');
        }

        if ($this->request->post['openpay_card_test_mode']) {

            if (empty($this->request->post['openpay_card_test_merchant_id'])) {
                $this->error['test_merchant_id'] = $this->language->get('error_test_merchant_id');
            }

            if (empty($this->request->post['openpay_card_test_secret_key'])) {
                $this->error['test_secret_key'] = $this->language->get('error_test_secret_key');
            }
            if (empty($this->request->post['openpay_card_test_public_key'])) {
                $this->error['test_public_key'] = $this->language->get('error_test_public_key');
            }

            if(!$this->getMerchantInfo($this->request->post['openpay_card_test_merchant_id'], $this->request->post['openpay_card_test_secret_key'], $this->request->post['openpay_card_test_mode'])){
                $this->error['test_merchant_account'] = $this->language->get('error_test_merchant_account');
            }

        } else {

            if (empty($this->request->post['openpay_card_live_merchant_id'])) {
                $this->error['live_merchant_id'] = $this->language->get('error_live_merchant_id');
            }

            if (empty($this->request->post['openpay_card_live_secret_key'])) {
                $this->error['live_secret_key'] = $this->language->get('error_live_secret_key');
            }
            if (empty($this->request->post['openpay_card_live_public_key'])) {
                $this->error['live_public_key'] = $this->language->get('error_live_public_key');
            }

            if(!$this->getMerchantInfo($this->request->post['openpay_card_live_merchant_id'], $this->request->post['openpay_card_live_secret_key'], $this->request->post['openpay_card_test_mode'])){
                $this->error['live_merchant_account'] = $this->language->get('error_live_merchant_account');
                
            }

        }

        if (!isset($this->request->post['openpay_card_total']) || (float) $this->request->post['openpay_card_total'] < (float) MIN_TOTAL) {
            $this->error['total'] = sprintf($this->language->get('error_total'), $this->currency->format(MIN_TOTAL, $this->config->get('config_currency')));
        }

        if ($this->isEmptyArray($this->error)) {
            return true;
        }

        if (!empty($this->error['warning'])) {
            if (is_array($this->error['warning'])) {
                $this->error['warning'][] = $this->language->get('error_correct_data');
            } else {
                $this->error['warning'] = array($this->error['warning'], $this->language->get('error_correct_data'),);
            }
        } else {
            $this->error['warning'] = $this->language->get('error_correct_data');
        }
        return false;
    }

    public function install() {
        $this->load->model('extension/payment/openpay_cards');
        $this->model_extension_payment_openpay_cards->install();        
    }

    public function uninstall() {
        //$this->load->model('extension/payment/openpay_cards');
        //$this->model_extension_payment_openpay_cards->uninstall();
        
        //$this->load->model('setting/setting');
        //$this->setting_setting->deleteSetting('openpay');
    }

    public function orderAction() {
        if (defined('PRO_MOD') && PRO_MOD && isset($this->request->get['order_id']) && ( $charge = $this->fetchCharge($this->request->get['order_id']) )) {
            $this->language->load('payment/openpay_cards');
            $this->load->model('payment/openpay_cards');

            $this->data['text_openpay_header'] = $this->language->get('text_openpay_header');
            $this->data['text_charge_id'] = $this->language->get('text_charge_id');
            $this->data['text_amount'] = $this->language->get('text_amount');
            $this->data['text_capture'] = $this->language->get('text_capture');
            $this->data['text_capturing'] = $this->language->get('text_capturing');
            $this->data['text_refund'] = $this->language->get('text_refund');
            $this->data['text_captured'] = $this->language->get('text_captured');
            $this->data['text_processing'] = $this->language->get('text_processing');
            $this->data['text_transaction'] = $this->language->get('text_transaction');
            $this->data['text_date'] = $this->language->get('text_date');
            $this->data['text_type'] = $this->language->get('text_type');
            $this->data['text_amount'] = $this->language->get('text_amount');
            $this->data['text_description'] = $this->language->get('text_description');
            $this->data['text_initiator'] = $this->language->get('text_initiator');
            $this->data['text_status'] = $this->language->get('text_status');
            $this->data['text_amount_refunded'] = $this->language->get('text_amount_refunded');
            $this->data['text_refunded'] = $this->language->get('text_refunded');
            $this->data['text_charge_refunded'] = $this->language->get('text_charge_refunded');

            $this->data['error_error'] = $this->language->get('error_error');

            $this->data['charge'] = $charge;
            $this->data['amount'] = $this->currency->format($this->minToCurrency($charge->amount, $charge->currency), $charge->currency);
            $this->data['amount_refunded'] = $this->currency->format($this->minToCurrency($charge->amount_refunded, $charge->currency), $charge->currency);
            $this->data['non_formatted_amount'] = $this->minToCurrency($charge->amount, $charge->currency);
            $this->data['non_formatted_amount_refunded'] = $this->minToCurrency($charge->amount_refunded, $charge->currency);
            $this->data['order_id'] = $this->request->get['order_id'];
            $this->data['txn'] = $this->model_extension_payment_openpay_cards->getTransactions(array('charge_ref' => $charge->id));
            $this->data['url_capture'] = HTTPS_SERVER . 'index.php?route=payment/openpay_cards/jsonCapture&token=' . $this->session->data['token'] . '&order_id=' . $this->request->get['order_id'];
            $this->data['url_refund'] = HTTPS_SERVER . 'index.php?route=payment/openpay_cards/jsonRefund&token=' . $this->session->data['token'] . '&order_id=' . $this->request->get['order_id'];

            return $this->load->view('extension/payment/openpay_cards_order', $this->data);
        }
    }

}

?>