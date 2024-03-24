/* 
 * File:   ESU_LED.h
 * Author: hasan  ismail 
 *
 * Created on 20 ??????, 2023, 09:05 ?
 */

#ifndef ESU_LED_H
#define	ESU_LED_H
/*section : includes*/
#include "../../MCAL_layer/GPIO_1/HAL_GPIOI.h"
#include "esu_led_cfg.h"
/*section : macro declarations */


/*section  : macro functions declaretions */


/*section : data type declaration */
typedef enum{
    LED_OFF=0,
    LED_ON
}led_statuse_t;
typedef struct{
    uint8 port_name : 4;
    uint8 pin       : 3;
    uint8 led_statuse :1;
}led_t;

/*section  :  functions declaretions */
std_returntype led_initialize(const led_t *led);
std_returntype led_turn_on(const led_t *led);
std_returntype led_turn_off(const led_t *led);
std_returntype led_toggle(const led_t *led);
#endif	/* ESU_LED_H */

