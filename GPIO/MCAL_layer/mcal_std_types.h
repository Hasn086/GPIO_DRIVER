/* 
 * File:   mcal_std_types.h
 * Author: hasan
 *
 * Created on 20 ??????, 2023, 08:10 ?
 */

#ifndef MCAL_STD_TYPES_H
#define	MCAL_STD_TYPES_H
/*section : includes*/
#include "std_libraries.h"
#include "compiler.h"


/*section  : macro functions declaretions */


/*section : data type declaration */
typedef unsigned char uint8;
typedef unsigned int uint32;
typedef uint8 std_returntype;
/*section : macro declarations */
#define STD_HIGH       0x01
#define STD_LOW        0x00

#define CONFIG_ENABLE    0x01
#define CONFIG_DISABLE    0x00

#define STD_ON        0x01
#define STD_OFF       0x00

#define STD_ACTIVE       0x01
#define STD_IDLE         0x00


#define E_OK             (std_returntype)0x01
#define E_NOK             (std_returntype)0x00

/*section  :  functions declaretions */
#endif	/* MCAL_STD_TYPES_H */

