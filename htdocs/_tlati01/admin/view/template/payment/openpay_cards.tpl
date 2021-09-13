<?php echo $header; ?>
<div id="content">
    <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
 <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
   <?php if ($error_attention) { ?>
  <div class="warning"><?php echo $error_attention; ?></div>
  <?php } ?>
   <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" />Openpay Tarjetas</h1>
      <div class="buttons">
        <a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a>
        <a onclick="location = '<?php echo $cancel; ?>';" class="button"><?php echo $button_cancel; ?></a>
      </div>
    </div>
    
    <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form" class="form-horizontal">
                    
         <table class="form">
          <tr>
            <td><label class="col-sm-2 control-label" for="radio-test-mode"><?php echo $text_test_mode; ?></label></td>
            <td>
                            <div class="col-sm-10">
                                    <label class="radio-inline">
                                        <input id="radio-test-mode" type="radio" name="openpay_card_test_mode" value="0" <?php if( ! $openpay_card_test_mode )echo' checked'; ?> ><?php echo $text_no; ?>
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" name="openpay_card_test_mode" value="1" <?php if( $openpay_card_test_mode )echo' checked'; ?> ><?php echo $text_yes; ?>
                                    </label>
                                </div>
            </td>
          </tr>
          <tr>
            <td>
                 <label class="col-sm-2 control-label" for="input-test-merchant-id">
                                    <?php echo $entry_test_merchant_id; ?>
                </label>
            </td>
            <td>
                           <div class="col-sm-10">
                                    <input type="text" name="openpay_card_test_merchant_id" value="<?php echo $openpay_card_test_merchant_id; ?>" class="form-control" id="input-test-merchant" placeholder="<?php echo $entry_test_merchant_id; ?>">
                                    <?php if(( $error_test_merchant_id ) ) : ?>
                                        <div class="error"><?php echo $error_test_merchant_id; ?></div>
                                    <?php endif; ?>
                                </div>
            </td>
          </tr>
          
           <tr>
            <td>
                 <label class="col-sm-2 control-label" for="input-test-secret">
                                    <?php echo $entry_test_secret_key; ?>
                                </label> 
            </td>
            <td>
                      <div class="col-sm-10">
                                    <input type="text" name="openpay_card_test_secret_key" value="<?php echo $openpay_card_test_secret_key; ?>" class="form-control" id="input-test-secret" placeholder="<?php echo $entry_test_secret_key; ?>">
                                    <?php if(( $error_test_secret_key ) ) : ?>
                                    <div class="error"><?php echo $error_test_secret_key; ?></div>
                                    <?php endif; ?>
                                    <?php if(( $error_test_merchant_account ) ) : ?>
                                        <div class="error"><?php echo $error_test_merchant_account; ?></div>
                                    <?php endif; ?>
                                </div>       
            </td>
          </tr>
             
           <tr>
            <td>
                   <label class="col-sm-2 control-label" for="input-test-public">
                                    <?php echo $entry_test_public_key; ?>
                                </label>
            </td>
            <td>
                  <div class="col-sm-10">
                                    <input type="text" id="input-test-public" class="form-control" name="openpay_card_test_public_key" placeholder="<?php echo $entry_test_public_key; ?>" value="<?php echo $openpay_card_test_public_key; ?>" >
                                    <?php if( ( $error_test_public_key ) ) : ?>
                                    <div class="error"><?php echo $error_test_public_key; ?></div>
                                    <?php endif; ?>
                                    <?php if( ( $error_test_merchant_account ) ) : ?>
                                        <div class="error"><?php echo $error_test_merchant_account; ?></div>
                                    <?php endif; ?>
                                </div>       
            </td>
          </tr>
             
           <tr>
            <td>
                  <label class="col-sm-2 control-label" for="input-live-merchant-id">
                                    <?php echo $entry_live_merchant_id; ?>
                                </label>
            </td>
            <td>
                 <div class="col-sm-10">
                                    <input type="text" name="openpay_card_live_merchant_id" value="<?php echo $openpay_card_live_merchant_id; ?>" class="form-control" id="input-live-merchant" placeholder="<?php echo $entry_live_merchant_id; ?>">
                                    <?php if(( $error_live_merchant_id ) ) : ?>
                                        <div class="error"><?php echo $error_live_merchant_id; ?></div>
                                    <?php endif; ?>
                                </div>          
            </td>
          </tr>
             
           <tr>
            <td>
                    <label class="col-sm-2 control-label" for="input-live-secret">
                                    <?php echo $entry_live_secret_key; ?>
                                </label>
            </td>
            <td>
                <div class="col-sm-10">
                                    <input type="text" name="openpay_card_live_secret_key" value="<?php echo $openpay_card_live_secret_key; ?>" class="form-control" id="input-live-secret" placeholder="<?php echo $entry_live_secret_key; ?>">
                                    <?php if( ( $error_live_secret_key ) ) : ?>
                                    <div class="error"><?php echo $error_live_secret_key; ?></div>
                                    <?php endif; ?>
                                    <?php if( ( $error_live_merchant_account ) ) : ?>
                                        <div class="error"><?php echo $error_live_merchant_account; ?></div>
                                    <?php endif; ?>
                                </div>
            </td>
          </tr>
             
           <tr>
            <td>
                            <label class="col-sm-2 control-label" for="input-live-public">
                                    <?php echo $entry_live_public_key; ?>
                                </label>
            </td>
            <td>
                <div class="col-sm-10">
                                    <input type="text" id="input-live-public" class="form-control" name="openpay_card_live_public_key" placeholder="<?php echo $entry_live_public_key; ?>" value="<?php echo $openpay_card_live_public_key; ?>" >
                                    <?php if( ( $error_live_public_key ) ) : ?>
                                    <div class="error"><?php echo $error_live_public_key; ?></div>
                                    <?php endif; ?>
                                    <?php if( ( $error_live_merchant_account ) ) : ?>
                                        <div class="error"><?php echo $error_live_merchant_account; ?></div>
                                    <?php endif; ?>
                                </div> 
            </td>
          </tr>
             
           <tr>
            <td>
                 <label class="col-sm-2 control-label" for="input-title" >
                                    <?php echo $entry_title; ?>
                                    <span class="glyphicon" data-toggle="popover" data-content="<?php echo $help_title; ?>" style="cursor:pointer;" >
                                    </span>
                                </label>
            </td>
            <td>
                   <div class="col-sm-10">
                                    <input type="text" name="openpay_card_title" value="<?php echo $openpay_card_title; ?>" class="form-control" id="input-title" placeholder="<?php echo $entry_title; ?>" >
                                </div>          
            </td>
          </tr>
           
             
           <tr>
            <td>
                   <label class="col-sm-2 control-label" for="select-geo-zone">
                                    <?php echo $entry_geo_zone; ?>
                                </label>
            </td>
            <td>
                <div class="col-sm-10">
                                    <select name="openpay_cards_geo_zone_id" id="select-geo-zone" class="form-control">
                                        <option value="0"><?php echo $text_all_zones; ?></option>
                                        <?php foreach ($geo_zones as $geo_zone) : ?>
                                        <option value="<?php echo $geo_zone['geo_zone_id']; ?>" <?php if( $geo_zone['geo_zone_id'] == $openpay_cards_geo_zone_id ) echo ' selected'; ?> ><?php echo $geo_zone['name']; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div> 
            </td>
          </tr>
             
           <tr>
            <td>
                  <label class="col-sm-2 control-label" for="select-module-status">
                                    <?php echo $entry_status; ?>
                                </label>
            </td>
            <td>
                
                                <div class="col-sm-10">
                                    <select name="openpay_cards_status" id="select-module-status" class="form-control">
                                        <option value="0" ><?php echo $text_disabled; ?></option>
                                        <option value="1" <?php if( $openpay_cards_status )echo' selected'; ?> ><?php echo $text_enabled; ?></option>
                                    </select>
                                </div>
            </td>
          </tr>
             
           <tr>
            <td>
                  <label class="col-sm-2 control-label" for="input-total">
                                    <?php echo $entry_total; ?>
                                    <span class="glyphicon" data-toggle="popover" data-content="<?php echo $help_total; ?>" style="cursor:pointer;" ></span>
                                </label>
            </td>
            <td>
                <div class="col-sm-10">
                                    <div class="input-group">
                                        <?php if( $currency_symbol_left ) : ?>
                                        <span class="input-group-addon"><?php echo $currency_symbol_left; ?></span>
                                        <?php endif; ?>
                                        <input type="text" id="input-total" class="form-control" name="openpay_card_total" value="<?php echo $openpay_card_total; ?>" >
                                        <?php if( $currency_symbol_right ) : ?>
                                        <span class="input-group-addon"><?php echo $currency_symbol_right; ?></span>
                                        <?php endif; ?>
                                    </div>
                                    <?php if ( ( $error_total ) ) : ?>
                                    <div class="error"><?php echo $error_total; ?></div>
                                    <?php endif; ?>
                                </div>          
            </td>
          </tr>
             
           <tr>
            <td>
                   <label class="col-sm-2 control-label" for="input-sort-order">
                                    <?php echo $entry_sort_order; ?>
                                </label>
            </td>
            <td>
                    <div class="col-sm-10">
                                    <input type="text" id="input-sort-order" class="form-control" name="openpay_cards_sort_order" value="<?php echo $openpay_cards_sort_order; ?>" >
                                </div>
            </td>
          </tr>
             
           <tr>
            <td>
                  <label class="col-sm-2 control-label" for="radio-test-mode">Months interest-free</label>
            </td>
            <td>
                        <div class="col-sm-10">
                                    <?php foreach ($months_interest_free as $key => $month): ?>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="openpay_card_interest_free[]" value="<?php echo $key ?>" <?php echo in_array($key, $openpay_card_interest_free) ? 'checked="checked"' : '' ?>> <?php echo $month ?>
                                        </label>
                                    <?php endforeach; ?>
                                </div>   
            </td>
          </tr>
             
           <tr>
            <td>
                   <label class="col-sm-2 control-label" for="select-new">
                                    <?php echo $entry_new_status; ?>
                                </label>
            </td>
            <td>
             <div class="col-sm-10">
                                    <select name="openpay_card_new_status_id" id="select-new" class="form-control">
                                        <?php foreach( $order_statuses as $order_status ) : ?>
                                        <option value="<?php echo $order_status['order_status_id']; ?>" <?php if( $order_status['order_status_id'] == $openpay_card_new_status_id ) echo ' selected'; ?> ><?php echo $order_status['name']; ?></option>
                                        <?php endforeach; ?>
                                    </select>
                                </div>  
            </td>
          </tr>
           
           
           
           
                    
                    
                    
          </table>
                    
                   
                </form><!-- #form -->
                
                
    </div><!--box-->
    
    
  
