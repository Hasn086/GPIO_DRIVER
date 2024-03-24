#include "esu_relay.h"
std_returntype relay_initialize(const relay_t *relay){
    std_returntype RET=E_OK;
    
    if(NULL == relay){
       RET=E_NOK; 
    }
    else{
       pin_config_t pin_obj={.port=relay->relay_port,
                              .pin=relay->relay_pin,
                              .direction=OUTPUT,
                              .logic=relay->relay_status};
         gpio_pin_intialize(&pin_obj); 
    }
   return RET;
}
std_returntype relay_turn_on(const relay_t *relay){
  std_returntype RET=E_OK;
    
    if(NULL == relay){
       RET=E_NOK; 
    }
    else{
       pin_config_t pin_obj={.port=relay->relay_port,
                              .pin=relay->relay_pin,
                              .direction=OUTPUT,
                              .logic=relay->relay_status};
       gpio_pin_write_logic(&pin_obj,HIGH);
    }
   return RET;  
}
std_returntype relay_turn_off(const relay_t *relay){
    std_returntype RET=E_OK;
    
    if(NULL == relay){
       RET=E_NOK; 
    }else{
      pin_config_t pin_obj={.port=relay->relay_port,
                              .pin=relay->relay_pin,
                              .direction=OUTPUT,
                              .logic=relay->relay_status};
       gpio_pin_write_logic(&pin_obj,LOW);  
    }
    return RET;
}
