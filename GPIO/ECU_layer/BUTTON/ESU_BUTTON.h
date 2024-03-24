/* 
 * File:   ESU_BUTTON.h
 * Author: hasan  ismail
 *
 * Created on 22 ????, 2024, 08:11 ?
 */

#ifndef ESU_BUTTON_H
#define	ESU_BUTTON_H
#include"esu_button_cfg.h"
#include "../../MCAL_layer/GPIO_1/HAL_GPIOI.h"
/*section : includes*/
 
/*section : macro declarations */

/*section  : macro functions declaretions */

/*section : data type declaration */
typedef enum{
    button_pressed=0,
    button_released
}btn_statuse;
typedef enum {
    button_active_high=0,
            button_active_low
}btn_active_t;
typedef struct{
pin_config_t button_pin;
btn_statuse   btn_state;
btn_active_t btn_connection;

}btn_t;
/*section  :  functions declaretions */
std_returntype button_initialize(const btn_t *btn);
std_returntype button_read_state(const btn_t *btn,btn_statuse*btn_state_1);

#endif	/* ESU_BUTTON_H */

