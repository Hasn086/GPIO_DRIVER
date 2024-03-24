/* 
 * File:   esu_relay.h
 * Author: hasan ismail
 *
 * Created on 24 ????, 2024, 01:51 ?
 */

#ifndef ESU_RELAY_H
#define	ESU_RELAY_H
/*section : includes*/
#include "esu_relay_cfg.h"
#include "../../MCAL_layer/GPIO_1/HAL_GPIOI.h"
/*section : macro declarations */
#define RELAY_ON     0x01
#define RELAY_OFF    0x00

/*section  : macro functions declaretions */


/*section : data type declaration */
typedef struct{
    uint8 relay_port:4;
    uint8 relay_pin:3;
    uint8 relay_status:1;
}relay_t;
/*section  :  functions declaretions */
std_returntype relay_initialize(const relay_t *relay);
std_returntype relay_turn_on(const relay_t *relay);
std_returntype relay_turn_off(const relay_t *relay);
#endif	/* ESU_RELAY_H */

