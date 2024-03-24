/* 
 * File:   ESU_BUTTON.C
 * Author: hasan  ismail
 *
 * Created on 22 ????, 2024, 08:11 ?
 */
#include  "ESU_BUTTON.h"
#include "../../MCAL_layer/GPIO_1/HAL_GPIOI.h"
std_returntype button_initialize(const btn_t *btn){
   std_returntype RET=E_OK;
   if(btn==NULL){
       RET=E_NOK;
   }
   else{
       RET=gpio_pin_direction_intialize(&(btn->button_pin));
   }
   return RET;
}
std_returntype button_read_state(const btn_t *btn,btn_statuse*btn_state_1){
    std_returntype RET=E_OK;
    logic_t   pin_logic_statuse=LOW;
   if((btn==NULL) || (btn_state_1== NULL)){
       RET=E_NOK;
   }
   else
   {
     gpio_pin_read_logic(&(btn->button_pin),&pin_logic_statuse);
      if(button_active_high == btn->btn_connection){
          if(HIGH==pin_logic_statuse){
             *btn_state_1=button_pressed;
          }
          else{
             *btn_state_1=button_released; 
          }
      }
      else if(button_active_low == btn->btn_connection)
          
      {
          if(HIGH==pin_logic_statuse){
            *btn_state_1=button_released; 

          }
          else{
           *btn_state_1=button_pressed;

          }
      }
          else{  
             RET=E_OK; 
          }
      }
   
   
   return RET;
}
