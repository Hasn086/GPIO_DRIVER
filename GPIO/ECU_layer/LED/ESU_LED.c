/* 
 * File:   ESU_LED.c
 * Author: hasan ismail
 *
 * Created on 22.04.2024, 7:24 
 */
#include "ESU_LED.h"

std_returntype led_initialize(const led_t *led){
    std_returntype RET=E_OK;
    
    if(NULL == led){
       RET=E_NOK; 
    }
    else{
        pin_config_t pin_obj={.port=led->port_name,
                              .pin=led->pin,
                              .direction=OUTPUT,
                              .logic=led->led_statuse};
         gpio_pin_intialize(&pin_obj);
    }
    return RET;
}
std_returntype led_turn_on(const led_t *led){
    std_returntype RET=E_OK;
    if(NULL==led){
       RET=E_NOK; 
    }
    else{
       pin_config_t pin_obj={.port=led->port_name,
                          .pin=led->pin,
                          .direction=OUTPUT,
                          .logic=led->led_statuse};
       gpio_pin_write_logic(&pin_obj,HIGH);
    }
    return RET;
}
std_returntype led_turn_off(const led_t *led){
 std_returntype RET=E_OK;
    if(NULL==led){
       RET=E_NOK; 
    }
    else{
        pin_config_t pin_obj={.port=led->port_name,
                          .pin=led->pin,
                          .direction=OUTPUT,
                          .logic=led->led_statuse};
       gpio_pin_write_logic(&pin_obj,LOW);
    }
    return RET;   
}
std_returntype led_toggle(const led_t *led){
  std_returntype RET=E_OK;
    if(NULL==led){
       RET=E_NOK; 
    }
    else{
      pin_config_t pin_obj={.port=led->port_name,
                          .pin=led->pin,
                          .direction=OUTPUT,
                          .logic=led->led_statuse};
       gpio_pin_toggle_logic(&pin_obj);  
    }
    return RET;  
}