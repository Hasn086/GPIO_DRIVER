#include "application.h"
#define _XTAL_FREQ 8000000
/*led_t led0={
 .port_name=PORTC_INDEX,
 .pin=PIN0,
 .led_statuse=LOW
};
led_t led1={
 .port_name=PORTC_INDEX,
 .pin=PIN1,
 .led_statuse=HIGH
};
led_t led2={
 .port_name=PORTC_INDEX,
 .pin=PIN2,
 .led_statuse=HIGH
};
led_t led3={
 .port_name=PORTC_INDEX,
 .pin=PIN3,
 .led_statuse=HIGH
};*/
/*btn_t btn_1={
.button_pin.port=PORTC_INDEX,
.button_pin.pin=PIN2,
.button_pin.direction=INPUT,
.button_pin.logic=LOW,
.btn_state=button_released,
.btn_connection=button_active_high
};*/
led_t led1={
 .port_name=PORTC_INDEX,
 .pin=PIN1,
 .led_statuse=LOW
};
btn_t btn_2={
.button_pin.port=PORTD_INDEX,
.button_pin.pin=PIN0,
.button_pin.direction=INPUT,
.button_pin.logic=LOW,
.btn_state=button_released,
.btn_connection=button_active_high
};
relay_t relay_1={
   .relay_port=PORTC_INDEX,
   .relay_pin=PIN0,
   .relay_status=RELAY_OFF
};

btn_statuse btn_state_2=button_released;
uint8 flag=0;
        
int main(){
    std_returntype RET=E_NOK;
    //RET= button_initialize(&btn_1);
    RET= button_initialize(&btn_2);
    //RET= led_initialize(&led0);
    RET= led_initialize(&led1);
    RET=led_initialize(&relay_1);
    while(1){
       RET=button_read_state(&btn_2,&btn_state_2);
       if((btn_state_2==button_pressed)&&(0==flag)){
          
             relay_turn_on(&relay_1);
          led_turn_on(&led1);
          flag=1;
       }
       else if((btn_state_2==button_pressed)&&(1==flag)){
           
             relay_turn_off(&relay_1);
          led_turn_off(&led1); 
          flag=0;
           
          }
       }
       
       return(EXIT_SUCCESS); 
    }
   

