	.file	"Arduino-mouse.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.RingBuffer_Remove.constprop.3,"ax",@progbits
	.type	RingBuffer_Remove.constprop.3, @function
RingBuffer_Remove.constprop.3:
.LFB107:
	.file 1 "Lib/LightweightRingBuff.h"
	.loc 1 182 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL0:
	.loc 1 184 0
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r24,Z+
.LVL1:
	.loc 1 186 0
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
	subi r30,lo8(USARTtoUSB_Buffer+128)
	sbci r31,hi8(USARTtoUSB_Buffer+128)
	brne .L2
	.loc 1 187 0
	ldi r18,lo8(USARTtoUSB_Buffer)
	ldi r19,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+130+1,r19
	sts USARTtoUSB_Buffer+130,r18
.L2:
.LBB54:
	.loc 1 189 0
	in r18,__SREG__
.LVL2:
.LBB55:
.LBB56:
	.file 2 "/usr/lib/avr/include/util/atomic.h"
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL3:
/* #NOAPP */
.LBE56:
.LBE55:
	.loc 1 191 0
	lds r25,USARTtoUSB_Buffer+132
	subi r25,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r25
.LVL4:
.LBB57:
.LBB58:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LVL5:
.LBE58:
.LBE57:
.LBE54:
	.loc 1 195 0
	ret
	.cfi_endproc
.LFE107:
	.size	RingBuffer_Remove.constprop.3, .-RingBuffer_Remove.constprop.3
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB91:
	.file 3 "Arduino-mouse.c"
	.loc 3 129 0
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
	.loc 3 131 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
.LBB63:
.LBB64:
	.file 4 "/usr/lib/avr/include/avr/wdt.h"
	.loc 4 515 0
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
.LVL6:
/* #NOAPP */
.LBE64:
.LBE63:
.LBB65:
.LBB66:
	.file 5 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 5 102 0
	ldi r24,lo8(12)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 5 104 0
	ldi r24,lo8(6)
	sts 202,r24
	.loc 5 105 0
	sts 200,__zero_reg__
	.loc 5 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 5 108 0
	sbi 0xa,3
	.loc 5 109 0
	sbi 0xb,2
.LVL7:
.LBE66:
.LBE65:
	.loc 3 136 0
	call USB_Init
.LVL8:
	.loc 3 139 0
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 3 141 0
	ldi r24,lo8(-104)
	st Y,r24
/* epilogue start */
	.loc 3 142 0
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
	.loc 3 97 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 101 0
	call SetupHardware
.LVL9:
.LBB82:
.LBB83:
	.loc 1 87 0
	in r18,__SREG__
.LVL10:
.LBB84:
.LBB85:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL11:
/* #NOAPP */
.LBE85:
.LBE84:
	.loc 1 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 1 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL12:
.LBB86:
.LBB87:
	.loc 2 70 0
	out __SREG__,r18
	.loc 2 71 0
.LVL13:
.LBE87:
.LBE86:
.LBE83:
.LBE82:
	.loc 3 105 0
/* #APP */
 ;  105 "Arduino-mouse.c" 1
	sei
 ;  0 "" 2
.LVL14:
/* #NOAPP */
.L7:
.LBB88:
.LBB89:
.LBB90:
.LBB91:
	.loc 1 111 0
	in r25,__SREG__
.LVL15:
.LBB92:
.LBB93:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL16:
/* #NOAPP */
.LBE93:
.LBE92:
	.loc 1 113 0
	lds r24,USARTtoUSB_Buffer+132
.LVL17:
.LBB94:
.LBB95:
	.loc 2 70 0
	out __SREG__,r25
	.loc 2 71 0
.LVL18:
.LBE95:
.LBE94:
.LBE91:
.LBE90:
.LBE89:
	.loc 3 110 0
	cpi r24,lo8(4)
	brlo .L6
.LVL19:
	.loc 3 112 0 discriminator 1
	call RingBuffer_Remove.constprop.3
.LVL20:
	mov r17,r24
.LVL21:
	call RingBuffer_Remove.constprop.3
.LVL22:
	mov r29,r24
.LVL23:
	call RingBuffer_Remove.constprop.3
.LVL24:
	mov r28,r24
.LVL25:
	.loc 3 115 0 discriminator 1
	call RingBuffer_Remove.constprop.3
.LVL26:
	.loc 3 117 0 discriminator 1
	sts mouseReport,r17
	.loc 3 118 0 discriminator 1
	sts mouseReport+1,r29
	.loc 3 119 0 discriminator 1
	sts mouseReport+2,r28
.LVL27:
.L6:
	.loc 3 122 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	call HID_Device_USBTask
.LVL28:
	.loc 3 123 0
	call USB_USBTask
.LVL29:
.LBE88:
	.loc 3 124 0
	rjmp .L7
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
	.loc 3 152 0
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
	.loc 3 157 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 158 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	call HID_Device_ConfigureEndpoints
.LVL30:
.LBB96:
.LBB97:
	.file 6 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.loc 6 150 0
	ldi r30,lo8(-30)
	ldi r31,0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
	ret
.LBE97:
.LBE96:
	.cfi_endproc
.LFE94:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB95:
	.loc 3 165 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 3 166 0
	ldi r24,lo8(Mouse_HID_Interface)
	ldi r25,hi8(Mouse_HID_Interface)
	jmp HID_Device_ProcessControlRequest
.LVL31:
	.cfi_endproc
.LFE95:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_USB_Device_StartOfFrame,"ax",@progbits
.global	EVENT_USB_Device_StartOfFrame
	.type	EVENT_USB_Device_StartOfFrame, @function
EVENT_USB_Device_StartOfFrame:
.LFB96:
	.loc 3 171 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL32:
.LBB98:
.LBB99:
	.file 7 "../../LUFA/Drivers/USB/Class/Device/HID.h"
	.loc 7 201 0
	lds r24,Mouse_HID_Interface+11
	lds r25,Mouse_HID_Interface+11+1
	sbiw r24,0
	breq .L12
	.loc 7 202 0
	sbiw r24,1
	sts Mouse_HID_Interface+11+1,r25
	sts Mouse_HID_Interface+11,r24
.LVL33:
.L12:
	ret
.LBE99:
.LBE98:
	.cfi_endproc
.LFE96:
	.size	EVENT_USB_Device_StartOfFrame, .-EVENT_USB_Device_StartOfFrame
	.section	.text.CALLBACK_HID_Device_CreateHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_CreateHIDReport
	.type	CALLBACK_HID_Device_CreateHIDReport, @function
CALLBACK_HID_Device_CreateHIDReport:
.LFB97:
	.loc 3 191 0
	.cfi_startproc
.LVL34:
	push r16
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
.LVL35:
	.loc 3 194 0
	lds r24,mouseReport
	lds r25,mouseReport+1
	lds r26,mouseReport+2
.LVL36:
	movw r30,r18
	st Z,r24
	std Z+1,r25
	std Z+2,r26
	.loc 3 196 0
	ldi r24,lo8(3)
	ldi r25,0
	movw r30,r16
	std Z+1,r25
	st Z,r24
	.loc 3 198 0
	ldi r24,0
/* epilogue start */
	pop r17
	pop r16
.LVL37:
	ret
	.cfi_endproc
.LFE97:
	.size	CALLBACK_HID_Device_CreateHIDReport, .-CALLBACK_HID_Device_CreateHIDReport
	.section	.text.CALLBACK_HID_Device_ProcessHIDReport,"ax",@progbits
.global	CALLBACK_HID_Device_ProcessHIDReport
	.type	CALLBACK_HID_Device_ProcessHIDReport, @function
CALLBACK_HID_Device_ProcessHIDReport:
.LFB98:
	.loc 3 213 0
	.cfi_startproc
.LVL38:
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
	.loc 3 221 0
	.cfi_startproc
	.loc 3 221 0
	push r1
.LCFI4:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI5:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI6:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI7:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI8:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI9:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI10:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 3 222 0
	lds r24,206
.LVL39:
	.loc 3 224 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L19
.LVL40:
.LBB107:
.LBB108:
	.loc 1 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 1 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL41:
	adiw r24,1
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	subi r24,lo8(USARTtoUSB_Buffer+128)
	sbci r25,hi8(USARTtoUSB_Buffer+128)
	brne .L21
	.loc 1 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
.L21:
.LBB109:
	.loc 1 166 0
	in r25,__SREG__
.LVL42:
.LBB110:
.LBB111:
	.loc 2 50 0
/* #APP */
 ;  50 "/usr/lib/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL43:
/* #NOAPP */
.LBE111:
.LBE110:
	.loc 1 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL44:
.LBB112:
.LBB113:
	.loc 2 70 0
	out __SREG__,r25
	.loc 2 71 0
.LVL45:
.L19:
/* epilogue start */
.LBE113:
.LBE112:
.LBE109:
.LBE108:
.LBE107:
	.loc 3 226 0
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
	.comm	mouseReport,3,1
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
	.byte	3
	.zero	5
	.comm	PrevMouseHIDReportBuffer,3,1
	.text
.Letext0:
	.file 8 "/usr/lib/avr/include/stdint.h"
	.file 9 "../../LUFA/Drivers/USB/Class/Device/../Common/HID.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.file 11 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x92d
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF75
	.byte	0xc
	.long	.LASF76
	.long	.LASF77
	.long	.Ldebug_ranges0+0
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
	.long	.LASF78
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
	.byte	0x3
	.byte	0x9
	.byte	0xaa
	.long	0xfa
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
	.byte	0
	.uleb128 0x2
	.long	.LASF19
	.byte	0x9
	.byte	0xaf
	.long	0xcb
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.byte	0x56
	.long	0x162
	.uleb128 0x9
	.long	.LASF20
	.byte	0x7
	.byte	0x58
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x5a
	.long	0x3b
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF22
	.byte	0x7
	.byte	0x5b
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF23
	.byte	0x7
	.byte	0x5c
	.long	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF24
	.byte	0x7
	.byte	0x5e
	.long	0xc9
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF25
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
	.long	.LASF26
	.uleb128 0x8
	.byte	0x5
	.byte	0x7
	.byte	0x73
	.long	0x19c
	.uleb128 0x9
	.long	.LASF27
	.byte	0x7
	.byte	0x75
	.long	0x162
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF28
	.byte	0x7
	.byte	0x76
	.long	0x54
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF29
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
	.long	0x1c1
	.uleb128 0x9
	.long	.LASF30
	.byte	0x7
	.byte	0x70
	.long	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF31
	.byte	0x7
	.byte	0x79
	.long	0x169
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.long	0x105
	.uleb128 0x2
	.long	.LASF32
	.byte	0x7
	.byte	0x7c
	.long	0x19c
	.uleb128 0x8
	.byte	0x85
	.byte	0x1
	.byte	0x46
	.long	0x214
	.uleb128 0x9
	.long	.LASF33
	.byte	0x1
	.byte	0x48
	.long	0x214
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"In"
	.byte	0x1
	.byte	0x49
	.long	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xa
	.string	"Out"
	.byte	0x1
	.byte	0x4a
	.long	0x224
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF34
	.byte	0x1
	.byte	0x4b
	.long	0x3b
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x224
	.uleb128 0xd
	.long	0x8d
	.byte	0x7f
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x3b
	.uleb128 0x2
	.long	.LASF35
	.byte	0x1
	.byte	0x4c
	.long	0x1d1
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF36
	.uleb128 0xf
	.long	.LASF39
	.byte	0x2
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0x255
	.uleb128 0x10
	.string	"__s"
	.byte	0x2
	.byte	0x44
	.long	0x255
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x25b
	.uleb128 0xb
	.long	0x3b
	.uleb128 0x11
	.long	.LASF79
	.byte	0x2
	.byte	0x30
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.uleb128 0x12
	.long	.LASF47
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x2ad
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x6b
	.long	0x2b3
	.uleb128 0x14
	.long	.LASF34
	.byte	0x1
	.byte	0x6d
	.long	0x3b
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0x6f
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0x6f
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x22a
	.uleb128 0xb
	.long	0x2ad
	.uleb128 0x16
	.long	.LASF40
	.byte	0x4
	.word	0x1ec
	.byte	0x1
	.byte	0x3
	.long	0x2d5
	.uleb128 0x15
	.uleb128 0x17
	.long	.LASF41
	.byte	0x4
	.word	0x202
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	.LASF80
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uleb128 0xf
	.long	.LASF42
	.byte	0x7
	.byte	0xc7
	.byte	0x1
	.byte	0x3
	.long	0x2f7
	.uleb128 0x13
	.long	.LASF43
	.byte	0x7
	.byte	0xc7
	.long	0x2fd
	.byte	0
	.uleb128 0xe
	.byte	0x2
	.long	0x1c6
	.uleb128 0xb
	.long	0x2f7
	.uleb128 0xf
	.long	.LASF44
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0x333
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x55
	.long	0x2b3
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0x57
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0x57
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF45
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0x36f
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0x9e
	.long	0x2b3
	.uleb128 0x13
	.long	.LASF46
	.byte	0x1
	.byte	0x9f
	.long	0x25b
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0xa6
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0xa6
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	.LASF48
	.byte	0x1
	.byte	0xb6
	.byte	0x1
	.long	0x3b
	.byte	0x3
	.long	0x3af
	.uleb128 0x13
	.long	.LASF33
	.byte	0x1
	.byte	0xb6
	.long	0x2b3
	.uleb128 0x14
	.long	.LASF46
	.byte	0x1
	.byte	0xb8
	.long	0x3b
	.uleb128 0x15
	.uleb128 0x14
	.long	.LASF37
	.byte	0x1
	.byte	0xbd
	.long	0x3b
	.uleb128 0x14
	.long	.LASF38
	.byte	0x1
	.byte	0xbd
	.long	0x3b
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF49
	.byte	0x5
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0x3d3
	.uleb128 0x13
	.long	.LASF50
	.byte	0x5
	.byte	0x63
	.long	0x3d3
	.uleb128 0x13
	.long	.LASF51
	.byte	0x5
	.byte	0x64
	.long	0x3d8
	.byte	0
	.uleb128 0xb
	.long	0x6d
	.uleb128 0xb
	.long	0x162
	.uleb128 0x19
	.long	0x36f
	.long	.LFB107
	.long	.LFE107
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x44e
	.uleb128 0x1a
	.long	0x38b
	.byte	0x1
	.byte	0x68
	.uleb128 0x1b
	.long	0x380
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1c
	.long	.LBB54
	.long	.LBE54
	.uleb128 0x1d
	.long	0x397
	.long	.LLST0
	.uleb128 0x1d
	.long	0x3a2
	.long	.LLST1
	.uleb128 0x1e
	.long	0x260
	.long	.LBB55
	.long	.LBE55
	.byte	0x1
	.byte	0xbd
	.uleb128 0x1f
	.long	0x23c
	.long	.LBB57
	.long	.LBE57
	.byte	0x1
	.byte	0xbd
	.uleb128 0x1b
	.long	0x249
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1039
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.long	.LASF54
	.byte	0x3
	.byte	0x80
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.long	.LLST2
	.byte	0x1
	.long	0x4bb
	.uleb128 0x21
	.long	0x2b8
	.long	.LBB63
	.long	.LBE63
	.byte	0x3
	.byte	0x84
	.long	0x48b
	.uleb128 0x1c
	.long	.LBB64
	.long	.LBE64
	.uleb128 0x22
	.long	0x2c7
	.byte	0
	.byte	0
	.uleb128 0x21
	.long	0x3af
	.long	.LBB65
	.long	.LBE65
	.byte	0x3
	.byte	0x87
	.long	0x4b1
	.uleb128 0x23
	.long	0x3bc
	.long	.LLST3
	.uleb128 0x23
	.long	0x3c7
	.long	.LLST4
	.byte	0
	.uleb128 0x24
	.long	.LVL8
	.long	0x8ee
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.long	.LASF81
	.byte	0x3
	.byte	0x60
	.byte	0x1
	.long	0x4d
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x63b
	.uleb128 0x26
	.long	.LASF52
	.byte	0x3
	.byte	0x62
	.long	0xfa
	.long	.LLST5
	.uleb128 0x27
	.string	"ind"
	.byte	0x3
	.byte	0x63
	.long	0x4d
	.long	.LLST6
	.uleb128 0x21
	.long	0x302
	.long	.LBB82
	.long	.LBE82
	.byte	0x3
	.byte	0x67
	.long	0x555
	.uleb128 0x28
	.long	0x30f
	.uleb128 0x1c
	.long	.LBB83
	.long	.LBE83
	.uleb128 0x1d
	.long	0x31b
	.long	.LLST7
	.uleb128 0x1d
	.long	0x326
	.long	.LLST8
	.uleb128 0x1e
	.long	0x260
	.long	.LBB84
	.long	.LBE84
	.byte	0x1
	.byte	0x57
	.uleb128 0x1f
	.long	0x23c
	.long	.LBB86
	.long	.LBE86
	.byte	0x1
	.byte	0x57
	.uleb128 0x23
	.long	0x249
	.long	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.LBB88
	.long	.LBE88
	.long	0x631
	.uleb128 0x14
	.long	.LASF53
	.byte	0x3
	.byte	0x6c
	.long	0x3b
	.uleb128 0x21
	.long	0x26d
	.long	.LBB89
	.long	.LBE89
	.byte	0x3
	.byte	0x6c
	.long	0x5e7
	.uleb128 0x1b
	.long	0x27e
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x1c
	.long	.LBB90
	.long	.LBE90
	.uleb128 0x1d
	.long	0x289
	.long	.LLST10
	.uleb128 0x1c
	.long	.LBB91
	.long	.LBE91
	.uleb128 0x1d
	.long	0x295
	.long	.LLST11
	.uleb128 0x1d
	.long	0x2a0
	.long	.LLST12
	.uleb128 0x1e
	.long	0x260
	.long	.LBB92
	.long	.LBE92
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1f
	.long	0x23c
	.long	.LBB94
	.long	.LBE94
	.byte	0x1
	.byte	0x6f
	.uleb128 0x1b
	.long	0x249
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1447
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.long	.LVL20
	.long	0x3dd
	.uleb128 0x24
	.long	.LVL22
	.long	0x3dd
	.uleb128 0x24
	.long	.LVL24
	.long	0x3dd
	.uleb128 0x24
	.long	.LVL26
	.long	0x3dd
	.uleb128 0x2a
	.long	.LVL28
	.long	0x8fc
	.long	0x627
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
	.uleb128 0x24
	.long	.LVL29
	.long	0x909
	.byte	0
	.uleb128 0x24
	.long	.LVL9
	.long	0x44e
	.byte	0
	.uleb128 0x2c
	.byte	0x1
	.long	.LASF82
	.byte	0x3
	.byte	0x97
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.long	0x63b
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
	.byte	0x3
	.byte	0x9c
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x699
	.uleb128 0x1e
	.long	0x2d5
	.long	.LBB96
	.long	.LBE96
	.byte	0x3
	.byte	0xa0
	.uleb128 0x2f
	.long	.LVL30
	.long	0x916
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
	.byte	0x3
	.byte	0xa4
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6cd
	.uleb128 0x30
	.long	.LVL31
	.byte	0x1
	.long	0x923
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
	.byte	0x3
	.byte	0xaa
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6fd
	.uleb128 0x1f
	.long	0x2de
	.long	.LBB98
	.long	.LBE98
	.byte	0x3
	.byte	0xac
	.uleb128 0x28
	.long	0x2eb
	.byte	0
	.byte	0
	.uleb128 0x31
	.byte	0x1
	.long	.LASF83
	.byte	0x3
	.byte	0xb9
	.byte	0x1
	.long	0x162
	.long	.LFB97
	.long	.LFE97
	.long	.LLST13
	.byte	0x1
	.long	0x77d
	.uleb128 0x32
	.long	.LASF43
	.byte	0x3
	.byte	0xba
	.long	0x2fd
	.long	.LLST14
	.uleb128 0x33
	.long	.LASF58
	.byte	0x3
	.byte	0xbb
	.long	0x77d
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x33
	.long	.LASF59
	.byte	0x3
	.byte	0xbc
	.long	0x25b
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.long	.LASF60
	.byte	0x3
	.byte	0xbd
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
	.byte	0x3
	.byte	0xbe
	.long	0x788
	.long	.LLST15
	.uleb128 0x34
	.long	.LASF62
	.byte	0x3
	.byte	0xc0
	.long	0x78d
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0xb
	.long	0x224
	.uleb128 0xe
	.byte	0x2
	.long	0x54
	.uleb128 0xb
	.long	0x782
	.uleb128 0xe
	.byte	0x2
	.long	0xfa
	.uleb128 0x2e
	.byte	0x1
	.long	.LASF63
	.byte	0x3
	.byte	0xd0
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x7fe
	.uleb128 0x33
	.long	.LASF43
	.byte	0x3
	.byte	0xd0
	.long	0x2fd
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x33
	.long	.LASF58
	.byte	0x3
	.byte	0xd1
	.long	0x25b
	.byte	0x1
	.byte	0x66
	.uleb128 0x33
	.long	.LASF59
	.byte	0x3
	.byte	0xd2
	.long	0x25b
	.byte	0x1
	.byte	0x64
	.uleb128 0x33
	.long	.LASF60
	.byte	0x3
	.byte	0xd3
	.long	0x7fe
	.byte	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.uleb128 0x33
	.long	.LASF61
	.byte	0x3
	.byte	0xd4
	.long	0x805
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
	.long	0x804
	.uleb128 0x35
	.uleb128 0xb
	.long	0x54
	.uleb128 0x20
	.byte	0x1
	.long	.LASF64
	.byte	0x3
	.byte	0xdc
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.long	.LLST16
	.byte	0x1
	.long	0x896
	.uleb128 0x26
	.long	.LASF65
	.byte	0x3
	.byte	0xde
	.long	0x3b
	.long	.LLST17
	.uleb128 0x1f
	.long	0x333
	.long	.LBB107
	.long	.LBE107
	.byte	0x3
	.byte	0xe1
	.uleb128 0x28
	.long	0x340
	.uleb128 0x23
	.long	0x34b
	.long	.LLST18
	.uleb128 0x1c
	.long	.LBB109
	.long	.LBE109
	.uleb128 0x1d
	.long	0x357
	.long	.LLST19
	.uleb128 0x1d
	.long	0x362
	.long	.LLST20
	.uleb128 0x1e
	.long	0x260
	.long	.LBB110
	.long	.LBE110
	.byte	0x1
	.byte	0xa6
	.uleb128 0x1f
	.long	0x23c
	.long	.LBB112
	.long	.LBE112
	.byte	0x1
	.byte	0xa6
	.uleb128 0x23
	.long	0x249
	.long	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
	.long	0x3b
	.long	0x8a6
	.uleb128 0xd
	.long	0x8d
	.byte	0x2
	.byte	0
	.uleb128 0x36
	.long	.LASF66
	.byte	0x3
	.byte	0x41
	.long	0x896
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PrevMouseHIDReportBuffer
	.uleb128 0x36
	.long	.LASF67
	.byte	0x3
	.byte	0x47
	.long	0x1c6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	Mouse_HID_Interface
	.uleb128 0x36
	.long	.LASF68
	.byte	0x3
	.byte	0x59
	.long	0x22a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x36
	.long	.LASF69
	.byte	0x3
	.byte	0x5b
	.long	0xfa
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	mouseReport
	.uleb128 0x37
	.byte	0x1
	.byte	0x1
	.long	.LASF70
	.long	.LASF70
	.byte	0xa
	.word	0x123
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF71
	.long	.LASF71
	.byte	0x7
	.byte	0x95
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF72
	.long	.LASF72
	.byte	0xb
	.byte	0xb2
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF73
	.long	.LASF73
	.byte	0x7
	.byte	0x87
	.uleb128 0x38
	.byte	0x1
	.byte	0x1
	.long	.LASF74
	.long	.LASF74
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x35
	.uleb128 0x26
	.byte	0
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
	.long	.LVL2
	.long	.LVL5
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST1:
	.long	.LVL3
	.long	.LVL4
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL4
	.long	.LFE107
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
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
.LLST3:
	.long	.LVL6
	.long	.LVL7
	.word	0x5
	.byte	0x8
	.byte	0x96
	.byte	0x39
	.byte	0x24
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL7
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL21
	.long	.LVL23
	.word	0x5
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x2
	.long	.LVL23
	.long	.LVL24-1
	.word	0x8
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL24-1
	.long	.LVL25
	.word	0x8
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x93
	.uleb128 0x1
	.long	.LVL25
	.long	.LVL26-1
	.word	0x9
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.long	.LVL26-1
	.long	.LVL27
	.word	0x9
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST6:
	.long	.LVL19
	.long	.LVL21
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL21
	.long	.LVL23
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL23
	.long	.LVL25
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	.LVL25
	.long	.LVL27
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL10
	.long	.LVL13
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST8:
	.long	.LVL11
	.long	.LVL12
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL12
	.long	.LVL13
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL12
	.long	.LVL14
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1305
	.sleb128 0
	.long	.LVL17
	.long	.LFE90
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1447
	.sleb128 0
	.long	0
	.long	0
.LLST10:
	.long	.LVL17
	.long	.LVL18
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST11:
	.long	.LVL15
	.long	.LVL18
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST12:
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
.LLST13:
	.long	.LFB97
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
	.long	.LFE97
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST14:
	.long	.LVL34
	.long	.LVL36
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL36
	.long	.LFE97
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL34
	.long	.LVL37
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL37
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
.LLST16:
	.long	.LFB99
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI10
	.long	.LFE99
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST17:
	.long	.LVL39
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST18:
	.long	.LVL40
	.long	.LVL41
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST19:
	.long	.LVL42
	.long	.LVL45
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST20:
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL44
	.long	.LVL45
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL44
	.long	.LVL45
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2137
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x64
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB107
	.long	.LFE107-.LFB107
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
	.long	.LFB107
	.long	.LFE107
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
.LASF40:
	.string	"wdt_disable"
.LASF76:
	.string	"Arduino-mouse.c"
.LASF79:
	.string	"__iCliRetVal"
.LASF32:
	.string	"USB_ClassInfo_HID_Device_t"
.LASF64:
	.string	"__vector_23"
.LASF25:
	.string	"PrevReportINBufferSize"
.LASF10:
	.string	"long long unsigned int"
.LASF23:
	.string	"ReportINEndpointDoubleBank"
.LASF18:
	.string	"Button"
.LASF12:
	.string	"DEVICE_STATE_Unattached"
.LASF14:
	.string	"DEVICE_STATE_Default"
.LASF42:
	.string	"HID_Device_MillisecondElapsed"
.LASF48:
	.string	"RingBuffer_Remove"
.LASF9:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF50:
	.string	"BaudRate"
.LASF67:
	.string	"Mouse_HID_Interface"
.LASF60:
	.string	"ReportData"
.LASF49:
	.string	"Serial_Init"
.LASF80:
	.string	"USB_Device_EnableSOFEvents"
.LASF6:
	.string	"long int"
.LASF56:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF4:
	.string	"uint16_t"
.LASF78:
	.string	"USB_Device_States_t"
.LASF57:
	.string	"EVENT_USB_Device_StartOfFrame"
.LASF73:
	.string	"HID_Device_ConfigureEndpoints"
.LASF20:
	.string	"InterfaceNumber"
.LASF75:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr35 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF28:
	.string	"IdleCount"
.LASF38:
	.string	"__ToDo"
.LASF58:
	.string	"ReportID"
.LASF24:
	.string	"PrevReportINBuffer"
.LASF5:
	.string	"unsigned int"
.LASF68:
	.string	"USARTtoUSB_Buffer"
.LASF8:
	.string	"long unsigned int"
.LASF37:
	.string	"sreg_save"
.LASF41:
	.string	"temp_reg"
.LASF22:
	.string	"ReportINEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Configured"
.LASF52:
	.string	"newReport"
.LASF74:
	.string	"HID_Device_ProcessControlRequest"
.LASF72:
	.string	"USB_USBTask"
.LASF45:
	.string	"RingBuffer_Insert"
.LASF82:
	.string	"EVENT_USB_Device_Disconnect"
.LASF17:
	.string	"DEVICE_STATE_Suspended"
.LASF19:
	.string	"USB_MouseReport_Data_t"
.LASF11:
	.string	"sizetype"
.LASF63:
	.string	"CALLBACK_HID_Device_ProcessHIDReport"
.LASF70:
	.string	"USB_Init"
.LASF59:
	.string	"ReportType"
.LASF15:
	.string	"DEVICE_STATE_Addressed"
.LASF13:
	.string	"DEVICE_STATE_Powered"
.LASF65:
	.string	"ReceivedByte"
.LASF54:
	.string	"SetupHardware"
.LASF53:
	.string	"BufferCount"
.LASF26:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF62:
	.string	"reportp"
.LASF69:
	.string	"mouseReport"
.LASF51:
	.string	"DoubleSpeed"
.LASF21:
	.string	"ReportINEndpointNumber"
.LASF47:
	.string	"RingBuffer_GetCount"
.LASF7:
	.string	"uint32_t"
.LASF36:
	.string	"char"
.LASF31:
	.string	"State"
.LASF29:
	.string	"IdleMSRemaining"
.LASF27:
	.string	"UsingReportProtocol"
.LASF83:
	.string	"CALLBACK_HID_Device_CreateHIDReport"
.LASF39:
	.string	"__iRestore"
.LASF44:
	.string	"RingBuffer_InitBuffer"
.LASF35:
	.string	"RingBuff_t"
.LASF71:
	.string	"HID_Device_USBTask"
.LASF0:
	.string	"int8_t"
.LASF30:
	.string	"Config"
.LASF43:
	.string	"HIDInterfaceInfo"
.LASF33:
	.string	"Buffer"
.LASF61:
	.string	"ReportSize"
.LASF34:
	.string	"Count"
.LASF1:
	.string	"uint8_t"
.LASF46:
	.string	"Data"
.LASF66:
	.string	"PrevMouseHIDReportBuffer"
.LASF55:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF77:
	.string	"/mnt/c/Users/Hathoute/Desktop/Tools/Arduino/Firmwares/Sources/arduino-usb/firmwares/arduino-mouse"
.LASF81:
	.string	"main"
	.ident	"GCC: (GNU) 5.4.0"
.global __do_copy_data
.global __do_clear_bss
