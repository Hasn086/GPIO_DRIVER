#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GPIO.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/GPIO.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ECU_layer/BUTTON/ESU_BUTTON.c ECU_layer/LED/ESU_LED.c MCAL_layer/GPIO_1/HAL_GPIO.c MCAL_layer/device_config.c GPIO.c application.c ECU_layer/relay/esu_relay.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1 ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1 ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1 ${OBJECTDIR}/MCAL_layer/device_config.p1 ${OBJECTDIR}/GPIO.p1 ${OBJECTDIR}/application.p1 ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1.d ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1.d ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1.d ${OBJECTDIR}/MCAL_layer/device_config.p1.d ${OBJECTDIR}/GPIO.p1.d ${OBJECTDIR}/application.p1.d ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1 ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1 ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1 ${OBJECTDIR}/MCAL_layer/device_config.p1 ${OBJECTDIR}/GPIO.p1 ${OBJECTDIR}/application.p1 ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1

# Source Files
SOURCEFILES=ECU_layer/BUTTON/ESU_BUTTON.c ECU_layer/LED/ESU_LED.c MCAL_layer/GPIO_1/HAL_GPIO.c MCAL_layer/device_config.c GPIO.c application.c ECU_layer/relay/esu_relay.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/GPIO.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4620
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1: ECU_layer/BUTTON/ESU_BUTTON.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_layer/BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1 ECU_layer/BUTTON/ESU_BUTTON.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.d ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1: ECU_layer/LED/ESU_LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1 ECU_layer/LED/ESU_LED.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.d ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1: MCAL_layer/GPIO_1/HAL_GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_layer/GPIO_1" 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1 MCAL_layer/GPIO_1/HAL_GPIO.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.d ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/device_config.p1: MCAL_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_layer" 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/device_config.p1 MCAL_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/device_config.d ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GPIO.p1: GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GPIO.p1.d 
	@${RM} ${OBJECTDIR}/GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/GPIO.p1 GPIO.c 
	@-${MV} ${OBJECTDIR}/GPIO.d ${OBJECTDIR}/GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/relay/esu_relay.p1: ECU_layer/relay/esu_relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_layer/relay" 
	@${RM} ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=none    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1 ECU_layer/relay/esu_relay.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/relay/esu_relay.d ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1: ECU_layer/BUTTON/ESU_BUTTON.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_layer/BUTTON" 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1 ECU_layer/BUTTON/ESU_BUTTON.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.d ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/BUTTON/ESU_BUTTON.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1: ECU_layer/LED/ESU_LED.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_layer/LED" 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1 ECU_layer/LED/ESU_LED.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.d ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/LED/ESU_LED.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1: MCAL_layer/GPIO_1/HAL_GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_layer/GPIO_1" 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1 MCAL_layer/GPIO_1/HAL_GPIO.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.d ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/GPIO_1/HAL_GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/MCAL_layer/device_config.p1: MCAL_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/MCAL_layer" 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/MCAL_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/MCAL_layer/device_config.p1 MCAL_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/MCAL_layer/device_config.d ${OBJECTDIR}/MCAL_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/MCAL_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/GPIO.p1: GPIO.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/GPIO.p1.d 
	@${RM} ${OBJECTDIR}/GPIO.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/GPIO.p1 GPIO.c 
	@-${MV} ${OBJECTDIR}/GPIO.d ${OBJECTDIR}/GPIO.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/GPIO.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ECU_layer/relay/esu_relay.p1: ECU_layer/relay/esu_relay.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ECU_layer/relay" 
	@${RM} ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1.d 
	@${RM} ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits $(COMPARISON_BUILD)  -std=c99 -gcoff -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1 ECU_layer/relay/esu_relay.c 
	@-${MV} ${OBJECTDIR}/ECU_layer/relay/esu_relay.d ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ECU_layer/relay/esu_relay.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/GPIO.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/GPIO.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=none  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto        $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/GPIO.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/GPIO.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/GPIO.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/GPIO.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1    -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mno-default-config-bits -std=c99 -gcoff -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/GPIO.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
