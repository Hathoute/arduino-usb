	.file	"Arduino-mouse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB91:
	.file 1 "Arduino-mouse.c"
	.loc 1 131 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 133 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
.LBB58:
.LBB59:
	.file 2 "/usr/lib/avr/include/avr/wdt.h"
	.loc 2 515 0
/* #APP */
 ;  515 "/usr/lib/avr/include/avr/wdt.h" 1
	in __tmp_reg__,__SREG__
	cli
	wdr
	lds r24,96
	ori r24,24
	sts 96,r24
	sts 96,__zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL0:
/* #NOAPP */
.LBE59:
.LBE58:
.LBB60:
.LBB61:
	.file 3 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 3 102 0
	ldi r24,lo8(12)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 3 104 0
	ldi r24,lo8(6)
	sts 202,r24
	.loc 3 105 0
	sts 200,__zero_reg__
	.loc 3 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 3 108 0
	sbi 0xa,3
	.loc 3 109 0
	sbi 0xb,2
.LVL1:
.LBE61:
.LBE60:
	.loc 1 138 0
	call USB_Init
.LVL2:
	.loc 1 141 0
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 1 143 0
	ldi r24,lo8(-104)
	st Y,r24
/* epilogue start */
	.loc 1 144 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE91:
	.size	SetupHardware, .-SetupHardware
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB90:
	.loc 1 98 0
	.cfi_startproc
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	rcall .
	rcall .
.LCFI4:
	.cfi_def_cfa_offset 8
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI5:
	.cfi_def_cfa_register 28
/* prologue: function */
/* frame size = 4 */
/* stack size = 6 */
.L__stack_usage = 6
	.loc 1 102 0
	call SetupHardware
.LVL3:
.LBB84:
.LBB85:
	.file 4 "Lib/LightweightRingBuff.h"
	.loc 4 87 0
	in r18,__SREG__
.LVL4:
.LBB86:
.LBB87:
	.file 5 "/usr/lib/avr/include/util/atomic.h"
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.LBE87:
.LBE86:
	.loc 4 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 4 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL6:
.LBB88:
.LBB89:
	.loc 5 70 0
	out __SREG__,r18
	.loc 5 71 0
.LVL7:
.LBE89:
.LBE88:
.LBE85:
.LBE84:
	.loc 1 106 0
/* #APP */
 ;  106 "Arduino-mouse.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
	movw r16,r28
	subi r16,-5
	sbci r17,-1
.LBB90:
.LBB91:
.LBB92:
	.loc 4 184 0
	movw r14,r24
.LBE92:
.LBE91:
	.loc 1 116 0
	clr r13
	inc r13
.LVL8:
.L6:
.LBB99:
.LBB100:
.LBB101:
	.loc 4 111 0
	in r25,__SREG__
.LVL9:
.LBB102:
.LBB103:
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL10:
/* #NOAPP */
.LBE103:
.LBE102:
	.loc 4 113 0
	lds r24,USARTtoUSB_Buffer+132
.LVL11:
.LBB104:
.LBB105:
	.loc 5 70 0
	out __SREG__,r25
	.loc 5 71 0
.LVL12:
.LBE105:
.LBE104:
.LBE101:
.LBE100:
.LBE99:
	.loc 1 111 0
	cpi r24,lo8(4)
	brlo .L3
	movw r26,r28
	adiw r26,1
.LVL13:
.L5:
.LBB106:
.LBB98:
	.loc 4 184 0 discriminator 3
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r25,Z+
.LVL14:
	.loc 4 186 0 discriminator 3
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
	subi r30,lo8(USARTtoUSB_Buffer+128)
	sbci r31,hi8(USARTtoUSB_Buffer+128)
	brne .L4
	.loc 4 187 0
	sts USARTtoUSB_Buffer+130+1,r15
	sts USARTtoUSB_Buffer+130,r14
.L4:
.LBB93:
	.loc 4 189 0
	in r18,__SREG__
.LVL15:
.LBB94:
.LBB95:
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL16:
/* #NOAPP */
.LBE95:
.LBE94:
	.loc 4 191 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r24
.LVL17:
.LBB96:
.LBB97:
	.loc 5 70 0
	out __SREG__,r18
	.loc 5 71 0
.LVL18:
.LBE97:
.LBE96:
.LBE93:
.LBE98:
.LBE106:
	.loc 1 113 0
	st X+,r25
.LVL19:
	.loc 1 112 0
	cp r26,r16
	cpc r27,r17
	brne .L5
	.loc 1 116 0
	sts isNewReport,r13
	.loc 1 118 0
	ldd r24,Y+1
	sts mouseReport,r24
	.loc 1 119 0
	ldd r24,Y+2
	sts mouseReport+1,r24
	.loc 1 120 0
	ldd r24,Y+3
	sts mouseReport+2,r24
	.loc 1 121 0
	ldd r24,Y+4
	sts mouseReport+3,r24
.LVL20:
.L3:
	.loc 1 124 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	call HID_Device_USBTask
.LVL21:
	.loc 1 125 0
	call USB_USBTask
.LVL22:
.LBE90:
	.loc 1 126 0
	rjmp .L6
	.cfi_endproc
.LFE90:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB103:
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE103:
	.size	EVENT_USB_Device_Connect, .-EVENT_USB_Device_Connect
	.section	.text.EVENT_USB_Device_Disconnect,"ax",@progbits
.global	EVENT_USB_Device_Disconnect
	.type	EVENT_USB_Device_Disconnect, @function
EVENT_USB_Device_Disconnect:
.LFB93:
	.loc 1 154 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE93:
	.size	EVENT_USB_Device_Disconnect, .-EVENT_USB_Device_Disconnect
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB94:
	.loc 1 159 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 160 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	call HID_Device_ConfigureEndpoints
.LVL23:
.LBB107:
.LBB108:
	.file 6 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.loc 6 150 0
	ldi r30,lo8(-30)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ret
.LBE108:
.LBE107:
	.cfi_endproc
.LFE94:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB95:
	.loc 1 167 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 168 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	jmp HID_Device_ProcessControlRequest
.LVL24:
	.cfi_endproc
.LFE95:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_StartOfFrame,"ax",@progbits
.global	EVENT_USB_Device_StartOfFrame
	.type	EVENT_USB_Device_StartOfFrame, @function
EVENT_USB_Device_StartOfFrame:
.LFB96:
	.loc 1 173 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL25:
.LBB109:
.LBB110:
	.file 7 "../../LUFA/Drivers/USB/Class/Device/HID.h"
	.loc 7 201 0
	lds r24,Mouse_HID_Interface+11
	lds r25,Mouse_HID_Interface+11+1
	sbiw r24,0
	breq .L13
	.loc 7 202 0
	sbiw r24,1
	sts Mouse_HID_Interface+11+1,r25
	sts Mouse_HID_Interface+11,r24
.LVL26:
.L13:
	ret
.LBE110:
.LBE109:
	.cfi_endproc
.LFE96:
	.size	EVENT_USB_Device_StartOfFrame, .-EVENT_USB_Device_StartOfFrame
	.section	.text.CALLBACK_HID_Device_CreateHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_CreateHIDReport
	.type	CALLBACK_HID_Device_CreateHIDReport, @function
CALLBACK_HID_Device_CreateHIDReport:
.LFB97:
	.loc 1 193 0
	.cfi_startproc
.LVL27:
	push r16
.LCFI6:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI7:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL28:
	.loc 1 196 0
	lds r24,mouseReport
	lds r25,mouseReport+1
	lds r26,mouseReport+2
	lds r27,mouseReport+3
.LVL29:
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	std Z+3,r27
	.loc 1 198 0
	ldi r24,lo8(4)
	ldi r25,0
	movw r30,r16
	std Z+1,r25
	st Z,r24
	.loc 1 200 0
	lds r24,isNewReport
	cpse r24,__zero_reg__
	.loc 1 201 0
	sts isNewReport,__zero_reg__
.L19:
/* epilogue start */
	.loc 1 206 0
	pop r17
	pop r16
.LVL30:
	ret
	.cfi_endproc
.LFE97:
	.size	CALLBACK_HID_Device_CreateHIDReport, .-CALLBACK_HID_Device_CreateHIDReport
	.section	.text.CALLBACK_HID_Device_ProcessHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_ProcessHIDReport
	.type	CALLBACK_HID_Device_ProcessHIDReport, @function
CALLBACK_HID_Device_ProcessHIDReport:
.LFB98:
	.loc 1 221 0
	.cfi_startproc
.LVL31:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE98:
	.size	CALLBACK_HID_Device_ProcessHIDReport, .-CALLBACK_HID_Device_ProcessHIDReport
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB99:
	.loc 1 229 0
	.cfi_startproc
	.loc 1 229 0
	push r1
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI14:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 230 0
	lds r24,206
.LVL32:
	.loc 1 232 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L24
.LVL33:
.LBB118:
.LBB119:
	.loc 4 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 4 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL34:
	adiw r24,1
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
	brne .L26
	.loc 4 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L26:
.LBB120:
	.loc 4 166 0
	in r25,__SREG__
.LVL35:
.LBB121:
.LBB122:
	.loc 5 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL36:
/* #NOAPP */
.LBE122:
.LBE121:
	.loc 4 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL37:
.LBB123:
.LBB124:
	.loc 5 70 0
	out __SREG__,r25
	.loc 5 71 0
.LVL38:
.L24:
/* epilogue start */
.LBE124:
.LBE123:
.LBE120:
.LBE119:
.LBE118:
	.loc 1 234 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE99:
	.size	__vector_23, .-__vector_23
.global	isNewReport
	.section .bss
	.type	isNewReport, @object
	.size	isNewReport, 1
isNewReport:
	.zero	1
	.comm	mouseReport,4,1
	.comm	USARTtoUSB_Buffer,133,1
.global	Mouse_HID_Interface
	.data
	.type	Mouse_HID_Interface, @object
	.size	Mouse_HID_Interface, 13
Mouse_HID_Interface:
	.byte	0
	.byte	1
	.word	8
	.byte	0
	.word	PrevMouseHIDReportBuffer
	.byte	4
	.zero	5
	.comm	PrevMouseHIDReportBuffer,4,1
	.text
.Letext0:
	.file 8 "/usr/lib/avr/include/stdint.h"
	.file 9 "../../LUFA/Drivers/USB/Class/Device/../Common/HID.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.file 11 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x91c
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF77
	.byte	0xc
	.long	.LASF78
	.long	.LASF79
	.long	.Ldebug_ranges0+0x18
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF0
	.byte	0x8
	.byte	0x7d
	.long	0x34
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x2
	.long	.LASF1
	.byte	0x8
	.byte	0x7e
	.long	0x46
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF3
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.long	.LASF4
	.byte	0x8
	.byte	0x80
	.long	0x5f
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF7
	.byte	0x8
	.byte	0x82
	.long	0x78
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF11
	.uleb128 0x5
	.long	.LASF80
	.byte	0x1
	.long	0x46
	.byte	0x6
	.byte	0x72
	.long	0xc9
	.uleb128 0x6
	.long	.LASF12
	.byte	0
	.uleb128 0x6
	.long	.LASF13
	.byte	0x1
	.uleb128 0x6
	.long	.LASF14
	.byte	0x2
	.uleb128 0x6
	.long	.LASF15
	.byte	0x3
	.uleb128 0x6
	.long	.LASF16
	.byte	0x4
	.uleb128 0x6
	.long	.LASF17
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.byte	0x2
	.uleb128 0x8
	.byte	0x4
	.byte	0x9
	.byte	0xaa
	.long	0x108
	.uleb128 0x9
	.long	.LASF18
	.byte	0x9
	.byte	0xac
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"X"
	.byte	0x9
	.byte	0xad
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xa
	.string	"Y"
	.byte	0x9
	.byte	0xae
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF19
	.byte	0x9
	.byte	0xaf
	.long	0x29
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x2
	.long	.LASF20
	.byte	0x9
	.byte	0xb0
	.long	0xcb
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.byte	0x56
	.long	0x170
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x58
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x5a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x5b
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x5c
	.long	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF25
	.byte	0x7
	.byte	0x5e
	.long	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF26
	.byte	0x7
	.byte	0x6a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF27
	.uleb128 0x8
	.byte	0x5
	.byte	0x7
	.byte	0x73
	.long	0x1aa
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x75
	.long	0x170
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF29
	.byte	0x7
	.byte	0x76
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x77
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.byte	0
	.uleb128 0x8
	.byte	0xd
	.byte	0x7
	.byte	0x54
	.long	0x1cf
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x70
	.long	0x1cf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF32
	.byte	0x7
	.byte	0x79
	.long	0x177
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.long	0x113
	.uleb128 0x2
	.long	.LASF33
	.byte	0x7
	.byte	0x7c
	.long	0x1aa
	.uleb128 0x8
	.byte	0x85
	.byte	0x4
	.byte	0x46
	.long	0x222
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.byte	0x48
	.long	0x222
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"In"
	.byte	0x4
	.byte	0x49
	.long	0x232
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.string	"Out"
	.byte	0x4
	.byte	0x4a
	.long	0x232
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.byte	0x4b
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x232
	.uleb128 0xd
	.long	0x8d
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x3b
	.uleb128 0x2
	.long	.LASF36
	.byte	0x4
	.byte	0x4c
	.long	0x1df
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF37
	.uleb128 0xf
	.long	.LASF40
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x263
	.uleb128 0x10
	.string	"__s"
	.byte	0x5
	.byte	0x44
	.long	0x263
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x269
	.uleb128 0xb
	.long	0x3b
	.uleb128 0x11
	.long	.LASF81
	.byte	0x5
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x12
	.long	.LASF48
	.byte	0x4
	.byte	0x6b
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x2bb
	.uleb128 0x13
	.long	.LASF34
	.byte	0x4
	.byte	0x6b
	.long	0x2c1
	.uleb128 0x14
	.long	.LASF35
	.byte	0x4
	.byte	0x6d
	.long	0x3b
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF38
	.byte	0x4
	.byte	0x6f
	.long	0x3b
	.uleb128 0x14
	.long	.LASF39
	.byte	0x4
	.byte	0x6f
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x238
	.uleb128 0xb
	.long	0x2bb
	.uleb128 0x16
	.long	.LASF41
	.byte	0x2
	.word	0x1ec
	.byte	0x1
	.byte	0x3
	.long	0x2e3
	.uleb128 0x15
	.uleb128 0x17
	.long	.LASF42
	.byte	0x2
	.word	0x202
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF82
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.long	.LASF43
	.byte	0x7
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.long	0x305
	.uleb128 0x13
	.long	.LASF44
	.byte	0x7
	.byte	0xc7
	.long	0x30b
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x1d4
	.uleb128 0xb
	.long	0x305
	.uleb128 0xf
	.long	.LASF45
	.byte	0x4
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x341
	.uleb128 0x13
	.long	.LASF34
	.byte	0x4
	.byte	0x55
	.long	0x2c1
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF38
	.byte	0x4
	.byte	0x57
	.long	0x3b
	.uleb128 0x14
	.long	.LASF39
	.byte	0x4
	.byte	0x57
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF46
	.byte	0x4
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0x37d
	.uleb128 0x13
	.long	.LASF34
	.byte	0x4
	.byte	0x9e
	.long	0x2c1
	.uleb128 0x13
	.long	.LASF47
	.byte	0x4
	.byte	0x9f
	.long	0x269
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF38
	.byte	0x4
	.byte	0xa6
	.long	0x3b
	.uleb128 0x14
	.long	.LASF39
	.byte	0x4
	.byte	0xa6
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF49
	.byte	0x4
	.byte	0xb6
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x3bd
	.uleb128 0x13
	.long	.LASF34
	.byte	0x4
	.byte	0xb6
	.long	0x2c1
	.uleb128 0x14
	.long	.LASF47
	.byte	0x4
	.byte	0xb8
	.long	0x3b
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF38
	.byte	0x4
	.byte	0xbd
	.long	0x3b
	.uleb128 0x14
	.long	.LASF39
	.byte	0x4
	.byte	0xbd
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF50
	.byte	0x3
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x3e1
	.uleb128 0x13
	.long	.LASF51
	.byte	0x3
	.byte	0x63
	.long	0x3e1
	.uleb128 0x13
	.long	.LASF52
	.byte	0x3
	.byte	0x64
	.long	0x3e6
	.byte	0
	.uleb128 0xb
	.long	0x6d
	.uleb128 0xb
	.long	0x170
	.uleb128 0x19
	.byte	0x1
	.long	.LASF54
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.long	.LLST0
	.byte	0x1
	.long	0x458
	.uleb128 0x1a
	.long	0x2c6
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.byte	0x86
	.long	0x428
	.uleb128 0x1b
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x1c
	.long	0x2d5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x3bd
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.byte	0x89
	.long	0x44e
	.uleb128 0x1d
	.long	0x3ca
	.long	.LLST1
	.uleb128 0x1d
	.long	0x3d5
	.long	.LLST2
	.byte	0
	.uleb128 0x1e
	.long	.LVL2
	.long	0x8dd
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.long	.LASF83
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	0x4d
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.long	.LLST3
	.byte	0x1
	.long	0x618
	.uleb128 0x20
	.long	.LASF62
	.byte	0x1
	.byte	0x63
	.long	0x108
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x21
	.string	"ind"
	.byte	0x1
	.byte	0x64
	.long	0x4d
	.uleb128 0x1a
	.long	0x310
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0x68
	.long	0x4ed
	.uleb128 0x22
	.long	0x31d
	.uleb128 0x1b
	.long	.LBB85
	.long	.LBE85
	.uleb128 0x23
	.long	0x329
	.long	.LLST4
	.uleb128 0x23
	.long	0x334
	.long	.LLST5
	.uleb128 0x24
	.long	0x26e
	.long	.LBB86
	.long	.LBE86
	.byte	0x4
	.byte	0x57
	.uleb128 0x25
	.long	0x24a
	.long	.LBB88
	.long	.LBE88
	.byte	0x4
	.byte	0x57
	.uleb128 0x1d
	.long	0x257
	.long	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	.LBB90
	.long	.LBE90
	.long	0x60e
	.uleb128 0x14
	.long	.LASF53
	.byte	0x1
	.byte	0x6d
	.long	0x3b
	.uleb128 0x27
	.long	0x37d
	.long	.LBB91
	.long	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x71
	.long	0x571
	.uleb128 0x22
	.long	0x38e
	.uleb128 0x28
	.long	.Ldebug_ranges0+0
	.uleb128 0x23
	.long	0x399
	.long	.LLST7
	.uleb128 0x1b
	.long	.LBB93
	.long	.LBE93
	.uleb128 0x23
	.long	0x3a5
	.long	.LLST8
	.uleb128 0x23
	.long	0x3b0
	.long	.LLST9
	.uleb128 0x24
	.long	0x26e
	.long	.LBB94
	.long	.LBE94
	.byte	0x4
	.byte	0xbd
	.uleb128 0x25
	.long	0x24a
	.long	.LBB96
	.long	.LBE96
	.byte	0x4
	.byte	0xbd
	.uleb128 0x1d
	.long	0x257
	.long	.LLST10
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.long	0x27b
	.long	.LBB99
	.long	.LBE99
	.byte	0x1
	.byte	0x6d
	.long	0x5e8
	.uleb128 0x29
	.long	0x28c
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1b
	.long	.LBB100
	.long	.LBE100
	.uleb128 0x23
	.long	0x297
	.long	.LLST11
	.uleb128 0x1b
	.long	.LBB101
	.long	.LBE101
	.uleb128 0x23
	.long	0x2a3
	.long	.LLST12
	.uleb128 0x23
	.long	0x2ae
	.long	.LLST13
	.uleb128 0x24
	.long	0x26e
	.long	.LBB102
	.long	.LBE102
	.byte	0x4
	.byte	0x6f
	.uleb128 0x25
	.long	0x24a
	.long	.LBB104
	.long	.LBE104
	.byte	0x4
	.byte	0x6f
	.uleb128 0x1d
	.long	0x257
	.long	.LLST14
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.long	.LVL21
	.long	0x8eb
	.long	0x604
	.uleb128 0x2b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.byte	0
	.uleb128 0x1e
	.long	.LVL22
	.long	0x8f8
	.byte	0
	.uleb128 0x1e
	.long	.LVL3
	.long	0x3eb
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	0x618
	.long	.LFB93
	.long	.LFE93
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF55
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x676
	.uleb128 0x24
	.long	0x2e3
	.long	.LBB107
	.long	.LBE107
	.byte	0x1
	.byte	0xa2
	.uleb128 0x2f
	.long	.LVL23
	.long	0x905
	.uleb128 0x2b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF56
	.byte	0x1
	.byte	0xa6
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6aa
	.uleb128 0x30
	.long	.LVL24
	.byte	0x1
	.long	0x912
	.uleb128 0x2b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.byte	0
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF57
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6da
	.uleb128 0x25
	.long	0x2ec
	.long	.LBB109
	.long	.LBE109
	.byte	0x1
	.byte	0xae
	.uleb128 0x22
	.long	0x2f9
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.long	0x170
	.long	.LFB97
	.long	.LFE97
	.long	.LLST15
	.byte	0x1
	.long	0x75a
	.uleb128 0x32
	.long	.LASF44
	.byte	0x1
	.byte	0xbc
	.long	0x30b
	.long	.LLST16
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.byte	0xbd
	.long	0x75a
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.byte	0xbe
	.long	0x269
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.byte	0xbf
	.long	0xc9
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x32
	.long	.LASF61
	.byte	0x1
	.byte	0xc0
	.long	0x765
	.long	.LLST17
	.uleb128 0x20
	.long	.LASF63
	.byte	0x1
	.byte	0xc2
	.long	0x76a
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xb
	.long	0x232
	.uleb128 0xe
	.byte	0x2
	.long	0x54
	.uleb128 0xb
	.long	0x75f
	.uleb128 0xe
	.byte	0x2
	.long	0x108
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF64
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7db
	.uleb128 0x33
	.long	.LASF44
	.byte	0x1
	.byte	0xd8
	.long	0x30b
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x33
	.long	.LASF58
	.byte	0x1
	.byte	0xd9
	.long	0x269
	.byte	0x1
	.byte	0x66
	.uleb128 0x33
	.long	.LASF59
	.byte	0x1
	.byte	0xda
	.long	0x269
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.long	.LASF60
	.byte	0x1
	.byte	0xdb
	.long	0x7db
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x33
	.long	.LASF61
	.byte	0x1
	.byte	0xdc
	.long	0x7e2
	.byte	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x7e1
	.uleb128 0x34
	.uleb128 0xb
	.long	0x54
	.uleb128 0x19
	.byte	0x1
	.long	.LASF65
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST18
	.byte	0x1
	.long	0x873
	.uleb128 0x35
	.long	.LASF66
	.byte	0x1
	.byte	0xe6
	.long	0x3b
	.long	.LLST19
	.uleb128 0x25
	.long	0x341
	.long	.LBB118
	.long	.LBE118
	.byte	0x1
	.byte	0xe9
	.uleb128 0x22
	.long	0x34e
	.uleb128 0x1d
	.long	0x359
	.long	.LLST20
	.uleb128 0x1b
	.long	.LBB120
	.long	.LBE120
	.uleb128 0x23
	.long	0x365
	.long	.LLST21
	.uleb128 0x23
	.long	0x370
	.long	.LLST22
	.uleb128 0x24
	.long	0x26e
	.long	.LBB121
	.long	.LBE121
	.byte	0x4
	.byte	0xa6
	.uleb128 0x25
	.long	0x24a
	.long	.LBB123
	.long	.LBE123
	.byte	0x4
	.byte	0xa6
	.uleb128 0x1d
	.long	0x257
	.long	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x883
	.uleb128 0xd
	.long	0x8d
	.byte	0x3
	.byte	0
	.uleb128 0x36
	.long	.LASF67
	.byte	0x1
	.byte	0x41
	.long	0x873
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrevMouseHIDReportBuffer
	.uleb128 0x36
	.long	.LASF68
	.byte	0x1
	.byte	0x47
	.long	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.uleb128 0x36
	.long	.LASF69
	.byte	0x1
	.byte	0x59
	.long	0x238
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x36
	.long	.LASF70
	.byte	0x1
	.byte	0x5b
	.long	0x108
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	mouseReport
	.uleb128 0x36
	.long	.LASF71
	.byte	0x1
	.byte	0x5c
	.long	0x170
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	isNewReport
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF72
	.long	.LASF72
	.byte	0xa
	.word	0x123
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF73
	.long	.LASF73
	.byte	0x7
	.byte	0x95
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF74
	.long	.LASF74
	.byte	0xb
	.byte	0xb2
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF75
	.long	.LASF75
	.byte	0x7
	.byte	0x87
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF76
	.long	.LASF76
	.byte	0x7
	.byte	0x8e
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x87
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB91
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LFE91
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x5
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LFB90
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI5
	.long	.LFE90
	.word	0x2
	.byte	0x8c
	.sleb128 8
	.long	0
	.long	0
.LLST4:
	.long	.LVL4
	.long	.LVL7
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST5:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1201
	.sleb128 0
	.long	.LVL11
	.long	.LVL13
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1451
	.sleb128 0
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1332
	.sleb128 0
	.long	0
	.long	0
.LLST7:
	.long	.LVL14
	.long	.LVL18
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST8:
	.long	.LVL15
	.long	.LVL18
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST9:
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1332
	.sleb128 0
	.long	0
	.long	0
.LLST11:
	.long	.LVL11
	.long	.LVL12
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST12:
	.long	.LVL9
	.long	.LVL12
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST13:
	.long	.LVL10
	.long	.LVL11
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL11
	.long	.LVL12
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL11
	.long	.LVL13
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1451
	.sleb128 0
	.long	.LVL17
	.long	.LVL20
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1332
	.sleb128 0
	.long	0
	.long	0
.LLST15:
	.long	.LFB97
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI7
	.long	.LFE97
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST16:
	.long	.LVL27
	.long	.LVL29
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL29
	.long	.LFE97
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST17:
	.long	.LVL27
	.long	.LVL30
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL30
	.long	.LFE97
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LFB99
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI14
	.long	.LFE99
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST19:
	.long	.LVL32
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST20:
	.long	.LVL33
	.long	.LVL34
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST21:
	.long	.LVL35
	.long	.LVL38
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST22:
	.long	.LVL36
	.long	.LVL37
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL37
	.long	.LVL38
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST23:
	.long	.LVL37
	.long	.LVL38
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2102
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB91
	.long	.LBE91
	.long	.LBB106
	.long	.LBE106
	.long	0
	.long	0
	.long	.LFB91
	.long	.LFE91
	.long	.LFB90
	.long	.LFE90
	.long	.LFB93
	.long	.LFE93
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"wdt_disable"
.LASF78:
	.string	"Arduino-mouse.c"
.LASF81:
	.string	"__iCliRetVal"
.LASF33:
	.string	"USB_ClassInfo_HID_Device_t"
.LASF65:
	.string	"__vector_23"
.LASF26:
	.string	"PrevReportINBufferSize"
.LASF10:
	.string	"long long unsigned int"
.LASF24:
	.string	"ReportINEndpointDoubleBank"
.LASF18:
	.string	"Button"
.LASF12:
	.string	"DEVICE_STATE_Unattached"
.LASF14:
	.string	"DEVICE_STATE_Default"
.LASF43:
	.string	"HID_Device_MillisecondElapsed"
.LASF49:
	.string	"RingBuffer_Remove"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF51:
	.string	"BaudRate"
.LASF68:
	.string	"Mouse_HID_Interface"
.LASF60:
	.string	"ReportData"
.LASF50:
	.string	"Serial_Init"
.LASF82:
	.string	"USB_Device_EnableSOFEvents"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF4:
	.string	"uint16_t"
.LASF80:
	.string	"USB_Device_States_t"
.LASF57:
	.string	"EVENT_USB_Device_StartOfFrame"
.LASF75:
	.string	"HID_Device_ConfigureEndpoints"
.LASF21:
	.string	"InterfaceNumber"
.LASF77:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr35 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF29:
	.string	"IdleCount"
.LASF39:
	.string	"__ToDo"
.LASF58:
	.string	"ReportID"
.LASF25:
	.string	"PrevReportINBuffer"
.LASF5:
	.string	"unsigned int"
.LASF69:
	.string	"USARTtoUSB_Buffer"
.LASF8:
	.string	"long unsigned int"
.LASF38:
	.string	"sreg_save"
.LASF42:
	.string	"temp_reg"
.LASF23:
	.string	"ReportINEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Configured"
.LASF62:
	.string	"newReport"
.LASF76:
	.string	"HID_Device_ProcessControlRequest"
.LASF74:
	.string	"USB_USBTask"
.LASF46:
	.string	"RingBuffer_Insert"
.LASF84:
	.string	"EVENT_USB_Device_Disconnect"
.LASF17:
	.string	"DEVICE_STATE_Suspended"
.LASF20:
	.string	"USB_MouseReport_Data_t"
.LASF11:
	.string	"sizetype"
.LASF64:
	.string	"CALLBACK_HID_Device_ProcessHIDReport"
.LASF72:
	.string	"USB_Init"
.LASF59:
	.string	"ReportType"
.LASF15:
	.string	"DEVICE_STATE_Addressed"
.LASF13:
	.string	"DEVICE_STATE_Powered"
.LASF55:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF66:
	.string	"ReceivedByte"
.LASF54:
	.string	"SetupHardware"
.LASF53:
	.string	"BufferCount"
.LASF27:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF63:
	.string	"reportp"
.LASF70:
	.string	"mouseReport"
.LASF52:
	.string	"DoubleSpeed"
.LASF22:
	.string	"ReportINEndpointNumber"
.LASF48:
	.string	"RingBuffer_GetCount"
.LASF71:
	.string	"isNewReport"
.LASF7:
	.string	"uint32_t"
.LASF37:
	.string	"char"
.LASF32:
	.string	"State"
.LASF30:
	.string	"IdleMSRemaining"
.LASF28:
	.string	"UsingReportProtocol"
.LASF85:
	.string	"CALLBACK_HID_Device_CreateHIDReport"
.LASF40:
	.string	"__iRestore"
.LASF45:
	.string	"RingBuffer_InitBuffer"
.LASF36:
	.string	"RingBuff_t"
.LASF73:
	.string	"HID_Device_USBTask"
.LASF0:
	.string	"int8_t"
.LASF31:
	.string	"Config"
.LASF44:
	.string	"HIDInterfaceInfo"
.LASF34:
	.string	"Buffer"
.LASF61:
	.string	"ReportSize"
.LASF35:
	.string	"Count"
.LASF1:
	.string	"uint8_t"
.LASF47:
	.string	"Data"
.LASF67:
	.string	"PrevMouseHIDReportBuffer"
.LASF19:
	.string	"Wheel"
.LASF79:
	.string	"/mnt/c/Users/Hathoute/Desktop/Tools/Arduino/Firmwares/Sources/arduino-usb/firmwares/arduino-mouse"
.LASF83:
	.string	"main"
	.ident	"GCC: (GNU) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
