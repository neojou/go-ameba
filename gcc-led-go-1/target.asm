
target.axf:     file format elf32-littlearm


Disassembly of section .ram_image1.text:

10000bdc <RAM_IMG1_VALID_PATTEN>:
10000bdc:	23 79 16 88 ff ff ff ff                             #y......

10000be4 <OTA_Img2Signature>:
10000be4:	38 31 39 35 38 37 31 31 00 00 00 00                 81958711....

10000bf0 <rand_x>:
10000bf0:	15 cd 5b 07                                         ..[.

10000bf4 <AvaWds>:
	...

10001bf4 <SdrDramInfo>:
10001bf4:	58 1c 00 10 3c 1c 00 10 08 1c 00 10 20 4e 00 00     X...<....... N..
10001c04:	00 00 00 00                                         ....

10001c08 <SdrDramTiming>:
10001c08:	60 ea 00 00 a0 33 77 00 02 00 00 00 98 3a 00 00     `....3w......:..
10001c18:	98 3a 00 00 10 a4 00 00 02 00 00 00 40 9c 00 00     .:..........@...
10001c28:	00 00 00 00 02 00 00 00 00 00 00 00 01 00 00 00     ................
10001c38:	60 ea 00 00                                         `...

10001c3c <SdrDramModeReg>:
	...
10001c44:	03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................
10001c54:	00 00 00 00                                         ....

10001c58 <SdrDramDev>:
10001c58:	08 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00     ................

10001c68 <SpicInitParaAllClk>:
	...

10001cb0 <gHAL_Gpio_Adapter>:
	...

10001ddc <StartupHalInitPlatformLogUart>:
10001ddc:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10001dde:	4a28      	ldr	r2, [pc, #160]	; (10001e80 <StartupHalInitPlatformLogUart+0xa4>)
10001de0:	4b28      	ldr	r3, [pc, #160]	; (10001e84 <StartupHalInitPlatformLogUart+0xa8>)
10001de2:	6812      	ldr	r2, [r2, #0]
10001de4:	681a      	ldr	r2, [r3, #0]
10001de6:	4928      	ldr	r1, [pc, #160]	; (10001e88 <StartupHalInitPlatformLogUart+0xac>)
10001de8:	f422 5280 	bic.w	r2, r2, #4096	; 0x1000
10001dec:	601a      	str	r2, [r3, #0]
10001dee:	681a      	ldr	r2, [r3, #0]
10001df0:	4c26      	ldr	r4, [pc, #152]	; (10001e8c <StartupHalInitPlatformLogUart+0xb0>)
10001df2:	f442 5280 	orr.w	r2, r2, #4096	; 0x1000
10001df6:	601a      	str	r2, [r3, #0]
10001df8:	680b      	ldr	r3, [r1, #0]
10001dfa:	4a25      	ldr	r2, [pc, #148]	; (10001e90 <StartupHalInitPlatformLogUart+0xb4>)
10001dfc:	f443 5380 	orr.w	r3, r3, #4096	; 0x1000
10001e00:	2500      	movs	r5, #0
10001e02:	2080      	movs	r0, #128	; 0x80
10001e04:	600b      	str	r3, [r1, #0]
10001e06:	6025      	str	r5, [r4, #0]
10001e08:	6010      	str	r0, [r2, #0]
10001e0a:	f001 fc05 	bl	10003618 <__HalGetCpuClk_veneer>
10001e0e:	4a21      	ldr	r2, [pc, #132]	; (10001e94 <StartupHalInitPlatformLogUart+0xb8>)
10001e10:	0880      	lsrs	r0, r0, #2
10001e12:	fba2 1300 	umull	r1, r3, r2, r0
10001e16:	eb00 0080 	add.w	r0, r0, r0, lsl #2
10001e1a:	0040      	lsls	r0, r0, #1
10001e1c:	fba2 2000 	umull	r2, r0, r2, r0
10001e20:	0c1b      	lsrs	r3, r3, #16
10001e22:	eb03 0283 	add.w	r2, r3, r3, lsl #2
10001e26:	0052      	lsls	r2, r2, #1
10001e28:	ebc2 4010 	rsb	r0, r2, r0, lsr #16
10001e2c:	f64f 02ff 	movw	r2, #63743	; 0xf8ff
10001e30:	2804      	cmp	r0, #4
10001e32:	bf88      	it	hi
10001e34:	3301      	addhi	r3, #1
10001e36:	4d12      	ldr	r5, [pc, #72]	; (10001e80 <StartupHalInitPlatformLogUart+0xa4>)
10001e38:	4914      	ldr	r1, [pc, #80]	; (10001e8c <StartupHalInitPlatformLogUart+0xb0>)
10001e3a:	4815      	ldr	r0, [pc, #84]	; (10001e90 <StartupHalInitPlatformLogUart+0xb4>)
10001e3c:	b2df      	uxtb	r7, r3
10001e3e:	602f      	str	r7, [r5, #0]
10001e40:	4c15      	ldr	r4, [pc, #84]	; (10001e98 <StartupHalInitPlatformLogUart+0xbc>)
10001e42:	0a1b      	lsrs	r3, r3, #8
10001e44:	2500      	movs	r5, #0
10001e46:	4e15      	ldr	r6, [pc, #84]	; (10001e9c <StartupHalInitPlatformLogUart+0xc0>)
10001e48:	f04f 0e03 	mov.w	lr, #3
10001e4c:	600b      	str	r3, [r1, #0]
10001e4e:	27c1      	movs	r7, #193	; 0xc1
10001e50:	6005      	str	r5, [r0, #0]
10001e52:	f04f 7380 	mov.w	r3, #16777216	; 0x1000000
10001e56:	f8c0 e000 	str.w	lr, [r0]
10001e5a:	2505      	movs	r5, #5
10001e5c:	4810      	ldr	r0, [pc, #64]	; (10001ea0 <StartupHalInitPlatformLogUart+0xc4>)
10001e5e:	6037      	str	r7, [r6, #0]
10001e60:	600d      	str	r5, [r1, #0]
10001e62:	6023      	str	r3, [r4, #0]
10001e64:	68c1      	ldr	r1, [r0, #12]
10001e66:	4b0f      	ldr	r3, [pc, #60]	; (10001ea4 <StartupHalInitPlatformLogUart+0xc8>)
10001e68:	400a      	ands	r2, r1
10001e6a:	490f      	ldr	r1, [pc, #60]	; (10001ea8 <StartupHalInitPlatformLogUart+0xcc>)
10001e6c:	4313      	orrs	r3, r2
10001e6e:	24e0      	movs	r4, #224	; 0xe0
10001e70:	60c3      	str	r3, [r0, #12]
10001e72:	f44f 2200 	mov.w	r2, #524288	; 0x80000
10001e76:	f881 4313 	strb.w	r4, [r1, #787]	; 0x313
10001e7a:	600a      	str	r2, [r1, #0]
10001e7c:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
10001e7e:	bf00      	nop
10001e80:	40003000 	.word	0x40003000
10001e84:	40000210 	.word	0x40000210
10001e88:	40000230 	.word	0x40000230
10001e8c:	40003004 	.word	0x40003004
10001e90:	4000300c 	.word	0x4000300c
10001e94:	1b4e81b5 	.word	0x1b4e81b5
10001e98:	4000280c 	.word	0x4000280c
10001e9c:	40003008 	.word	0x40003008
10001ea0:	e000ed00 	.word	0xe000ed00
10001ea4:	05fa0300 	.word	0x05fa0300
10001ea8:	e000e100 	.word	0xe000e100

10001eac <SYSCpuClkConfig>:
10001eac:	4b0c      	ldr	r3, [pc, #48]	; (10001ee0 <SYSCpuClkConfig+0x34>)
10001eae:	b510      	push	{r4, lr}
10001eb0:	681b      	ldr	r3, [r3, #0]
10001eb2:	4604      	mov	r4, r0
10001eb4:	04db      	lsls	r3, r3, #19
10001eb6:	d40d      	bmi.n	10001ed4 <SYSCpuClkConfig+0x28>
10001eb8:	4620      	mov	r0, r4
10001eba:	f001 fb85 	bl	100035c8 <__HalCpuClkConfig_veneer>
10001ebe:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
10001ec2:	f001 fb89 	bl	100035d8 <__HalDelayUs_veneer>
10001ec6:	f7ff ff89 	bl	10001ddc <StartupHalInitPlatformLogUart>
10001eca:	4620      	mov	r0, r4
10001ecc:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10001ed0:	f000 bcd2 	b.w	10002878 <SpicOneBitCalibrationRtl8195A>
10001ed4:	4602      	mov	r2, r0
10001ed6:	4903      	ldr	r1, [pc, #12]	; (10001ee4 <SYSCpuClkConfig+0x38>)
10001ed8:	4b03      	ldr	r3, [pc, #12]	; (10001ee8 <SYSCpuClkConfig+0x3c>)
10001eda:	4804      	ldr	r0, [pc, #16]	; (10001eec <SYSCpuClkConfig+0x40>)
10001edc:	4798      	blx	r3
10001ede:	e7eb      	b.n	10001eb8 <SYSCpuClkConfig+0xc>
10001ee0:	10000310 	.word	0x10000310
10001ee4:	10002f00 	.word	0x10002f00
10001ee8:	0000f39d 	.word	0x0000f39d
10001eec:	10002f10 	.word	0x10002f10

10001ef0 <PreProcessForVendor>:
10001ef0:	484d      	ldr	r0, [pc, #308]	; (10002028 <PreProcessForVendor+0x138>)
10001ef2:	4a4e      	ldr	r2, [pc, #312]	; (1000202c <PreProcessForVendor+0x13c>)
10001ef4:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10001ef8:	4b4d      	ldr	r3, [pc, #308]	; (10002030 <PreProcessForVendor+0x140>)
10001efa:	2100      	movs	r1, #0
10001efc:	1a12      	subs	r2, r2, r0
10001efe:	4798      	blx	r3
10001f00:	2201      	movs	r2, #1
10001f02:	2100      	movs	r1, #0
10001f04:	20d8      	movs	r0, #216	; 0xd8
10001f06:	f001 fb7f 	bl	10003608 <__HalPinCtrlRtl8195A_veneer>
10001f0a:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
10001f0e:	f001 fb63 	bl	100035d8 <__HalDelayUs_veneer>
10001f12:	4e48      	ldr	r6, [pc, #288]	; (10002034 <PreProcessForVendor+0x144>)
10001f14:	2300      	movs	r3, #0
10001f16:	4a48      	ldr	r2, [pc, #288]	; (10002038 <PreProcessForVendor+0x148>)
10001f18:	4948      	ldr	r1, [pc, #288]	; (1000203c <PreProcessForVendor+0x14c>)
10001f1a:	4618      	mov	r0, r3
10001f1c:	6013      	str	r3, [r2, #0]
10001f1e:	6033      	str	r3, [r6, #0]
10001f20:	600b      	str	r3, [r1, #0]
10001f22:	f7ff ffc3 	bl	10001eac <SYSCpuClkConfig>
10001f26:	f7ff ff59 	bl	10001ddc <StartupHalInitPlatformLogUart>
10001f2a:	6833      	ldr	r3, [r6, #0]
10001f2c:	005a      	lsls	r2, r3, #1
10001f2e:	d45e      	bmi.n	10001fee <PreProcessForVendor+0xfe>
10001f30:	2001      	movs	r0, #1
10001f32:	f000 fc37 	bl	100027a4 <SpicFlashInitRtl8195A>
10001f36:	f000 ff97 	bl	10002e68 <SdrControllerInit>
10001f3a:	4b41      	ldr	r3, [pc, #260]	; (10002040 <PreProcessForVendor+0x150>)
10001f3c:	681b      	ldr	r3, [r3, #0]
10001f3e:	b29b      	uxth	r3, r3
10001f40:	029f      	lsls	r7, r3, #10
10001f42:	b913      	cbnz	r3, 10001f4a <PreProcessForVendor+0x5a>
10001f44:	4b3f      	ldr	r3, [pc, #252]	; (10002044 <PreProcessForVendor+0x154>)
10001f46:	681f      	ldr	r7, [r3, #0]
10001f48:	3720      	adds	r7, #32
10001f4a:	6833      	ldr	r3, [r6, #0]
10001f4c:	f107 4218 	add.w	r2, r7, #2550136832	; 0x98000000
10001f50:	005b      	lsls	r3, r3, #1
10001f52:	6815      	ldr	r5, [r2, #0]
10001f54:	6854      	ldr	r4, [r2, #4]
10001f56:	d44e      	bmi.n	10001ff6 <PreProcessForVendor+0x106>
10001f58:	443d      	add	r5, r7
10001f5a:	f105 0010 	add.w	r0, r5, #16
10001f5e:	f107 0310 	add.w	r3, r7, #16
10001f62:	4283      	cmp	r3, r0
10001f64:	d20a      	bcs.n	10001f7c <PreProcessForVendor+0x8c>
10001f66:	f06f 010f 	mvn.w	r1, #15
10001f6a:	1bc9      	subs	r1, r1, r7
10001f6c:	4421      	add	r1, r4
10001f6e:	f103 4218 	add.w	r2, r3, #2550136832	; 0x98000000
10001f72:	6812      	ldr	r2, [r2, #0]
10001f74:	50ca      	str	r2, [r1, r3]
10001f76:	3304      	adds	r3, #4
10001f78:	4283      	cmp	r3, r0
10001f7a:	d3f8      	bcc.n	10001f6e <PreProcessForVendor+0x7e>
10001f7c:	f105 4318 	add.w	r3, r5, #2550136832	; 0x98000000
10001f80:	691c      	ldr	r4, [r3, #16]
10001f82:	695a      	ldr	r2, [r3, #20]
10001f84:	1e63      	subs	r3, r4, #1
10001f86:	3303      	adds	r3, #3
10001f88:	d802      	bhi.n	10001f90 <PreProcessForVendor+0xa0>
10001f8a:	f1b2 5f40 	cmp.w	r2, #805306368	; 0x30000000
10001f8e:	d013      	beq.n	10001fb8 <PreProcessForVendor+0xc8>
10001f90:	6833      	ldr	r3, [r6, #0]
10001f92:	0058      	lsls	r0, r3, #1
10001f94:	d435      	bmi.n	10002002 <PreProcessForVendor+0x112>
10001f96:	4c2c      	ldr	r4, [pc, #176]	; (10002048 <PreProcessForVendor+0x158>)
10001f98:	492c      	ldr	r1, [pc, #176]	; (1000204c <PreProcessForVendor+0x15c>)
10001f9a:	482d      	ldr	r0, [pc, #180]	; (10002050 <PreProcessForVendor+0x160>)
10001f9c:	4b2d      	ldr	r3, [pc, #180]	; (10002054 <PreProcessForVendor+0x164>)
10001f9e:	4798      	blx	r3
10001fa0:	b130      	cbz	r0, 10001fb0 <PreProcessForVendor+0xc0>
10001fa2:	6833      	ldr	r3, [r6, #0]
10001fa4:	005b      	lsls	r3, r3, #1
10001fa6:	d430      	bmi.n	1000200a <PreProcessForVendor+0x11a>
10001fa8:	f44f 707a 	mov.w	r0, #1000	; 0x3e8
10001fac:	f001 fb3c 	bl	10003628 <__RtlConsolRom_veneer>
10001fb0:	6823      	ldr	r3, [r4, #0]
10001fb2:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
10001fb6:	4718      	bx	r3
10001fb8:	6833      	ldr	r3, [r6, #0]
10001fba:	0059      	lsls	r1, r3, #1
10001fbc:	d429      	bmi.n	10002012 <PreProcessForVendor+0x122>
10001fbe:	f105 0320 	add.w	r3, r5, #32
10001fc2:	441c      	add	r4, r3
10001fc4:	42a3      	cmp	r3, r4
10001fc6:	d2e6      	bcs.n	10001f96 <PreProcessForVendor+0xa6>
10001fc8:	f1c3 5140 	rsb	r1, r3, #805306368	; 0x30000000
10001fcc:	f103 4218 	add.w	r2, r3, #2550136832	; 0x98000000
10001fd0:	6812      	ldr	r2, [r2, #0]
10001fd2:	50ca      	str	r2, [r1, r3]
10001fd4:	3304      	adds	r3, #4
10001fd6:	42a3      	cmp	r3, r4
10001fd8:	d3f8      	bcc.n	10001fcc <PreProcessForVendor+0xdc>
10001fda:	6833      	ldr	r3, [r6, #0]
10001fdc:	4c1a      	ldr	r4, [pc, #104]	; (10002048 <PreProcessForVendor+0x158>)
10001fde:	005a      	lsls	r2, r3, #1
10001fe0:	d5da      	bpl.n	10001f98 <PreProcessForVendor+0xa8>
10001fe2:	491b      	ldr	r1, [pc, #108]	; (10002050 <PreProcessForVendor+0x160>)
10001fe4:	6822      	ldr	r2, [r4, #0]
10001fe6:	4b1c      	ldr	r3, [pc, #112]	; (10002058 <PreProcessForVendor+0x168>)
10001fe8:	481c      	ldr	r0, [pc, #112]	; (1000205c <PreProcessForVendor+0x16c>)
10001fea:	4798      	blx	r3
10001fec:	e7d4      	b.n	10001f98 <PreProcessForVendor+0xa8>
10001fee:	4b1a      	ldr	r3, [pc, #104]	; (10002058 <PreProcessForVendor+0x168>)
10001ff0:	481b      	ldr	r0, [pc, #108]	; (10002060 <PreProcessForVendor+0x170>)
10001ff2:	4798      	blx	r3
10001ff4:	e79c      	b.n	10001f30 <PreProcessForVendor+0x40>
10001ff6:	4622      	mov	r2, r4
10001ff8:	4629      	mov	r1, r5
10001ffa:	4b17      	ldr	r3, [pc, #92]	; (10002058 <PreProcessForVendor+0x168>)
10001ffc:	4819      	ldr	r0, [pc, #100]	; (10002064 <PreProcessForVendor+0x174>)
10001ffe:	4798      	blx	r3
10002000:	e7aa      	b.n	10001f58 <PreProcessForVendor+0x68>
10002002:	4b15      	ldr	r3, [pc, #84]	; (10002058 <PreProcessForVendor+0x168>)
10002004:	4818      	ldr	r0, [pc, #96]	; (10002068 <PreProcessForVendor+0x178>)
10002006:	4798      	blx	r3
10002008:	e7e7      	b.n	10001fda <PreProcessForVendor+0xea>
1000200a:	4b13      	ldr	r3, [pc, #76]	; (10002058 <PreProcessForVendor+0x168>)
1000200c:	4817      	ldr	r0, [pc, #92]	; (1000206c <PreProcessForVendor+0x17c>)
1000200e:	4798      	blx	r3
10002010:	e7ca      	b.n	10001fa8 <PreProcessForVendor+0xb8>
10002012:	4621      	mov	r1, r4
10002014:	4b10      	ldr	r3, [pc, #64]	; (10002058 <PreProcessForVendor+0x168>)
10002016:	4816      	ldr	r0, [pc, #88]	; (10002070 <PreProcessForVendor+0x180>)
10002018:	4798      	blx	r3
1000201a:	f105 0320 	add.w	r3, r5, #32
1000201e:	441c      	add	r4, r3
10002020:	42a3      	cmp	r3, r4
10002022:	d3d1      	bcc.n	10001fc8 <PreProcessForVendor+0xd8>
10002024:	e7d9      	b.n	10001fda <PreProcessForVendor+0xea>
10002026:	bf00      	nop
10002028:	10001c68 	.word	0x10001c68
1000202c:	10001ddc 	.word	0x10001ddc
10002030:	0000f511 	.word	0x0000f511
10002034:	10000314 	.word	0x10000314
10002038:	1000030c 	.word	0x1000030c
1000203c:	10000310 	.word	0x10000310
10002040:	98000018 	.word	0x98000018
10002044:	98000010 	.word	0x98000010
10002048:	10003638 	.word	0x10003638
1000204c:	10002fcc 	.word	0x10002fcc
10002050:	1000363c 	.word	0x1000363c
10002054:	0000f6b1 	.word	0x0000f6b1
10002058:	0000f39d 	.word	0x0000f39d
1000205c:	10002fa8 	.word	0x10002fa8
10002060:	10002f28 	.word	0x10002f28
10002064:	10002f44 	.word	0x10002f44
10002068:	10002f6c 	.word	0x10002f6c
1000206c:	10002fd4 	.word	0x10002fd4
10002070:	10002f7c 	.word	0x10002f7c

10002074 <SpicCalibrationRtl8195A>:
10002074:	0042      	lsls	r2, r0, #1
10002076:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
1000207a:	4614      	mov	r4, r2
1000207c:	4b8c      	ldr	r3, [pc, #560]	; (100022b0 <SpicCalibrationRtl8195A+0x23c>)
1000207e:	b091      	sub	sp, #68	; 0x44
10002080:	920e      	str	r2, [sp, #56]	; 0x38
10002082:	681a      	ldr	r2, [r3, #0]
10002084:	4623      	mov	r3, r4
10002086:	f3c2 1202 	ubfx	r2, r2, #4, #3
1000208a:	4403      	add	r3, r0
1000208c:	eb02 0343 	add.w	r3, r2, r3, lsl #1
10002090:	920c      	str	r2, [sp, #48]	; 0x30
10002092:	4a88      	ldr	r2, [pc, #544]	; (100022b4 <SpicCalibrationRtl8195A+0x240>)
10002094:	eb02 0483 	add.w	r4, r2, r3, lsl #2
10002098:	78e2      	ldrb	r2, [r4, #3]
1000209a:	2a00      	cmp	r2, #0
1000209c:	f040 808d 	bne.w	100021ba <SpicCalibrationRtl8195A+0x146>
100020a0:	4b85      	ldr	r3, [pc, #532]	; (100022b8 <SpicCalibrationRtl8195A+0x244>)
100020a2:	460c      	mov	r4, r1
100020a4:	681b      	ldr	r3, [r3, #0]
100020a6:	900f      	str	r0, [sp, #60]	; 0x3c
100020a8:	0059      	lsls	r1, r3, #1
100020aa:	f100 80ba 	bmi.w	10002222 <SpicCalibrationRtl8195A+0x1ae>
100020ae:	0063      	lsls	r3, r4, #1
100020b0:	461a      	mov	r2, r3
100020b2:	930d      	str	r3, [sp, #52]	; 0x34
100020b4:	2300      	movs	r3, #0
100020b6:	9306      	str	r3, [sp, #24]
100020b8:	9305      	str	r3, [sp, #20]
100020ba:	9308      	str	r3, [sp, #32]
100020bc:	469b      	mov	fp, r3
100020be:	2301      	movs	r3, #1
100020c0:	920b      	str	r2, [sp, #44]	; 0x2c
100020c2:	9309      	str	r3, [sp, #36]	; 0x24
100020c4:	990b      	ldr	r1, [sp, #44]	; 0x2c
100020c6:	2400      	movs	r4, #0
100020c8:	460a      	mov	r2, r1
100020ca:	3214      	adds	r2, #20
100020cc:	920a      	str	r2, [sp, #40]	; 0x28
100020ce:	4610      	mov	r0, r2
100020d0:	4a7a      	ldr	r2, [pc, #488]	; (100022bc <SpicCalibrationRtl8195A+0x248>)
100020d2:	2301      	movs	r3, #1
100020d4:	6014      	str	r4, [r2, #0]
100020d6:	9c09      	ldr	r4, [sp, #36]	; 0x24
100020d8:	320c      	adds	r2, #12
100020da:	6014      	str	r4, [r2, #0]
100020dc:	f842 3c0c 	str.w	r3, [r2, #-12]
100020e0:	460a      	mov	r2, r1
100020e2:	4282      	cmp	r2, r0
100020e4:	d24a      	bcs.n	1000217c <SpicCalibrationRtl8195A+0x108>
100020e6:	4c76      	ldr	r4, [pc, #472]	; (100022c0 <SpicCalibrationRtl8195A+0x24c>)
100020e8:	f8df a1e0 	ldr.w	sl, [pc, #480]	; 100022cc <SpicCalibrationRtl8195A+0x258>
100020ec:	9207      	str	r2, [sp, #28]
100020ee:	2500      	movs	r5, #0
100020f0:	4b72      	ldr	r3, [pc, #456]	; (100022bc <SpicCalibrationRtl8195A+0x248>)
100020f2:	f04f 0900 	mov.w	r9, #0
100020f6:	f8c3 9000 	str.w	r9, [r3]
100020fa:	f503 738a 	add.w	r3, r3, #276	; 0x114
100020fe:	681b      	ldr	r3, [r3, #0]
10002100:	f8bd 801c 	ldrh.w	r8, [sp, #28]
10002104:	0c1b      	lsrs	r3, r3, #16
10002106:	041b      	lsls	r3, r3, #16
10002108:	4a6e      	ldr	r2, [pc, #440]	; (100022c4 <SpicCalibrationRtl8195A+0x250>)
1000210a:	ea48 0303 	orr.w	r3, r8, r3
1000210e:	6013      	str	r3, [r2, #0]
10002110:	4b6a      	ldr	r3, [pc, #424]	; (100022bc <SpicCalibrationRtl8195A+0x248>)
10002112:	2001      	movs	r0, #1
10002114:	6018      	str	r0, [r3, #0]
10002116:	f8bd 3024 	ldrh.w	r3, [sp, #36]	; 0x24
1000211a:	f8cd 800c 	str.w	r8, [sp, #12]
1000211e:	464f      	mov	r7, r9
10002120:	2663      	movs	r6, #99	; 0x63
10002122:	9304      	str	r3, [sp, #16]
10002124:	f8dd 8020 	ldr.w	r8, [sp, #32]
10002128:	e00b      	b.n	10002142 <SpicCalibrationRtl8195A+0xce>
1000212a:	b90f      	cbnz	r7, 10002130 <SpicCalibrationRtl8195A+0xbc>
1000212c:	464e      	mov	r6, r9
1000212e:	3501      	adds	r5, #1
10002130:	f1b9 0f63 	cmp.w	r9, #99	; 0x63
10002134:	d05d      	beq.n	100021f2 <SpicCalibrationRtl8195A+0x17e>
10002136:	2701      	movs	r7, #1
10002138:	f109 0901 	add.w	r9, r9, #1
1000213c:	f1b9 0f64 	cmp.w	r9, #100	; 0x64
10002140:	d012      	beq.n	10002168 <SpicCalibrationRtl8195A+0xf4>
10002142:	f8da 3000 	ldr.w	r3, [sl]
10002146:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
1000214a:	ea49 0303 	orr.w	r3, r9, r3
1000214e:	f8ca 3000 	str.w	r3, [sl]
10002152:	47a0      	blx	r4
10002154:	2800      	cmp	r0, #0
10002156:	d1e8      	bne.n	1000212a <SpicCalibrationRtl8195A+0xb6>
10002158:	2f01      	cmp	r7, #1
1000215a:	d01c      	beq.n	10002196 <SpicCalibrationRtl8195A+0x122>
1000215c:	f109 0901 	add.w	r9, r9, #1
10002160:	f1b9 0f64 	cmp.w	r9, #100	; 0x64
10002164:	4607      	mov	r7, r0
10002166:	d1ec      	bne.n	10002142 <SpicCalibrationRtl8195A+0xce>
10002168:	f8cd 8020 	str.w	r8, [sp, #32]
1000216c:	9b07      	ldr	r3, [sp, #28]
1000216e:	9a0a      	ldr	r2, [sp, #40]	; 0x28
10002170:	3301      	adds	r3, #1
10002172:	4293      	cmp	r3, r2
10002174:	9307      	str	r3, [sp, #28]
10002176:	d3bb      	bcc.n	100020f0 <SpicCalibrationRtl8195A+0x7c>
10002178:	2d00      	cmp	r5, #0
1000217a:	d156      	bne.n	1000222a <SpicCalibrationRtl8195A+0x1b6>
1000217c:	9b09      	ldr	r3, [sp, #36]	; 0x24
1000217e:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
10002180:	990d      	ldr	r1, [sp, #52]	; 0x34
10002182:	3301      	adds	r3, #1
10002184:	440a      	add	r2, r1
10002186:	2b05      	cmp	r3, #5
10002188:	9309      	str	r3, [sp, #36]	; 0x24
1000218a:	920b      	str	r2, [sp, #44]	; 0x2c
1000218c:	d19a      	bne.n	100020c4 <SpicCalibrationRtl8195A+0x50>
1000218e:	2000      	movs	r0, #0
10002190:	b011      	add	sp, #68	; 0x44
10002192:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10002196:	2d01      	cmp	r5, #1
10002198:	d00d      	beq.n	100021b6 <SpicCalibrationRtl8195A+0x142>
1000219a:	ebc6 0309 	rsb	r3, r6, r9
1000219e:	ebc8 010b 	rsb	r1, r8, fp
100021a2:	428b      	cmp	r3, r1
100021a4:	4607      	mov	r7, r0
100021a6:	d9c7      	bls.n	10002138 <SpicCalibrationRtl8195A+0xc4>
100021a8:	9b04      	ldr	r3, [sp, #16]
100021aa:	46cb      	mov	fp, r9
100021ac:	9306      	str	r3, [sp, #24]
100021ae:	9b03      	ldr	r3, [sp, #12]
100021b0:	46b0      	mov	r8, r6
100021b2:	9305      	str	r3, [sp, #20]
100021b4:	e7c0      	b.n	10002138 <SpicCalibrationRtl8195A+0xc4>
100021b6:	4607      	mov	r7, r0
100021b8:	e7f6      	b.n	100021a8 <SpicCalibrationRtl8195A+0x134>
100021ba:	4940      	ldr	r1, [pc, #256]	; (100022bc <SpicCalibrationRtl8195A+0x248>)
100021bc:	2200      	movs	r2, #0
100021be:	600a      	str	r2, [r1, #0]
100021c0:	4a3c      	ldr	r2, [pc, #240]	; (100022b4 <SpicCalibrationRtl8195A+0x240>)
100021c2:	4d40      	ldr	r5, [pc, #256]	; (100022c4 <SpicCalibrationRtl8195A+0x250>)
100021c4:	f812 2023 	ldrb.w	r2, [r2, r3, lsl #2]
100021c8:	4b3f      	ldr	r3, [pc, #252]	; (100022c8 <SpicCalibrationRtl8195A+0x254>)
100021ca:	601a      	str	r2, [r3, #0]
100021cc:	682a      	ldr	r2, [r5, #0]
100021ce:	7860      	ldrb	r0, [r4, #1]
100021d0:	0c13      	lsrs	r3, r2, #16
100021d2:	041b      	lsls	r3, r3, #16
100021d4:	4303      	orrs	r3, r0
100021d6:	483d      	ldr	r0, [pc, #244]	; (100022cc <SpicCalibrationRtl8195A+0x258>)
100021d8:	602b      	str	r3, [r5, #0]
100021da:	6802      	ldr	r2, [r0, #0]
100021dc:	78a3      	ldrb	r3, [r4, #2]
100021de:	f022 02ff 	bic.w	r2, r2, #255	; 0xff
100021e2:	4313      	orrs	r3, r2
100021e4:	2201      	movs	r2, #1
100021e6:	6003      	str	r3, [r0, #0]
100021e8:	4610      	mov	r0, r2
100021ea:	600a      	str	r2, [r1, #0]
100021ec:	b011      	add	sp, #68	; 0x44
100021ee:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100021f2:	2d01      	cmp	r5, #1
100021f4:	f8cd 8020 	str.w	r8, [sp, #32]
100021f8:	f8dd 800c 	ldr.w	r8, [sp, #12]
100021fc:	d006      	beq.n	1000220c <SpicCalibrationRtl8195A+0x198>
100021fe:	9a08      	ldr	r2, [sp, #32]
10002200:	f1c6 0363 	rsb	r3, r6, #99	; 0x63
10002204:	ebc2 010b 	rsb	r1, r2, fp
10002208:	428b      	cmp	r3, r1
1000220a:	d905      	bls.n	10002218 <SpicCalibrationRtl8195A+0x1a4>
1000220c:	f8bd 3024 	ldrh.w	r3, [sp, #36]	; 0x24
10002210:	f8cd 8014 	str.w	r8, [sp, #20]
10002214:	9306      	str	r3, [sp, #24]
10002216:	e001      	b.n	1000221c <SpicCalibrationRtl8195A+0x1a8>
10002218:	46d9      	mov	r9, fp
1000221a:	9e08      	ldr	r6, [sp, #32]
1000221c:	9608      	str	r6, [sp, #32]
1000221e:	46cb      	mov	fp, r9
10002220:	e7a4      	b.n	1000216c <SpicCalibrationRtl8195A+0xf8>
10002222:	4b2b      	ldr	r3, [pc, #172]	; (100022d0 <SpicCalibrationRtl8195A+0x25c>)
10002224:	482b      	ldr	r0, [pc, #172]	; (100022d4 <SpicCalibrationRtl8195A+0x260>)
10002226:	4798      	blx	r3
10002228:	e741      	b.n	100020ae <SpicCalibrationRtl8195A+0x3a>
1000222a:	4b23      	ldr	r3, [pc, #140]	; (100022b8 <SpicCalibrationRtl8195A+0x244>)
1000222c:	4d22      	ldr	r5, [pc, #136]	; (100022b8 <SpicCalibrationRtl8195A+0x244>)
1000222e:	681b      	ldr	r3, [r3, #0]
10002230:	005a      	lsls	r2, r3, #1
10002232:	d42e      	bmi.n	10002292 <SpicCalibrationRtl8195A+0x21e>
10002234:	990f      	ldr	r1, [sp, #60]	; 0x3c
10002236:	9b0e      	ldr	r3, [sp, #56]	; 0x38
10002238:	980c      	ldr	r0, [sp, #48]	; 0x30
1000223a:	440b      	add	r3, r1
1000223c:	461a      	mov	r2, r3
1000223e:	9c06      	ldr	r4, [sp, #24]
10002240:	491e      	ldr	r1, [pc, #120]	; (100022bc <SpicCalibrationRtl8195A+0x248>)
10002242:	eb00 0242 	add.w	r2, r0, r2, lsl #1
10002246:	4b20      	ldr	r3, [pc, #128]	; (100022c8 <SpicCalibrationRtl8195A+0x254>)
10002248:	2000      	movs	r0, #0
1000224a:	6008      	str	r0, [r1, #0]
1000224c:	f3c4 000b 	ubfx	r0, r4, #0, #12
10002250:	6018      	str	r0, [r3, #0]
10002252:	4b18      	ldr	r3, [pc, #96]	; (100022b4 <SpicCalibrationRtl8195A+0x240>)
10002254:	481b      	ldr	r0, [pc, #108]	; (100022c4 <SpicCalibrationRtl8195A+0x250>)
10002256:	f803 4022 	strb.w	r4, [r3, r2, lsl #2]
1000225a:	6803      	ldr	r3, [r0, #0]
1000225c:	4c15      	ldr	r4, [pc, #84]	; (100022b4 <SpicCalibrationRtl8195A+0x240>)
1000225e:	0c1b      	lsrs	r3, r3, #16
10002260:	eb04 0282 	add.w	r2, r4, r2, lsl #2
10002264:	9c05      	ldr	r4, [sp, #20]
10002266:	041b      	lsls	r3, r3, #16
10002268:	4323      	orrs	r3, r4
1000226a:	6003      	str	r3, [r0, #0]
1000226c:	4d17      	ldr	r5, [pc, #92]	; (100022cc <SpicCalibrationRtl8195A+0x258>)
1000226e:	9b08      	ldr	r3, [sp, #32]
10002270:	7054      	strb	r4, [r2, #1]
10002272:	6828      	ldr	r0, [r5, #0]
10002274:	445b      	add	r3, fp
10002276:	085b      	lsrs	r3, r3, #1
10002278:	f020 04ff 	bic.w	r4, r0, #255	; 0xff
1000227c:	b2d8      	uxtb	r0, r3
1000227e:	4320      	orrs	r0, r4
10002280:	2401      	movs	r4, #1
10002282:	6028      	str	r0, [r5, #0]
10002284:	4620      	mov	r0, r4
10002286:	7093      	strb	r3, [r2, #2]
10002288:	70d4      	strb	r4, [r2, #3]
1000228a:	600c      	str	r4, [r1, #0]
1000228c:	b011      	add	sp, #68	; 0x44
1000228e:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10002292:	4811      	ldr	r0, [pc, #68]	; (100022d8 <SpicCalibrationRtl8195A+0x264>)
10002294:	4c0e      	ldr	r4, [pc, #56]	; (100022d0 <SpicCalibrationRtl8195A+0x25c>)
10002296:	47a0      	blx	r4
10002298:	682b      	ldr	r3, [r5, #0]
1000229a:	005b      	lsls	r3, r3, #1
1000229c:	d5ca      	bpl.n	10002234 <SpicCalibrationRtl8195A+0x1c0>
1000229e:	f8cd b000 	str.w	fp, [sp]
100022a2:	9b08      	ldr	r3, [sp, #32]
100022a4:	9a05      	ldr	r2, [sp, #20]
100022a6:	9906      	ldr	r1, [sp, #24]
100022a8:	480c      	ldr	r0, [pc, #48]	; (100022dc <SpicCalibrationRtl8195A+0x268>)
100022aa:	47a0      	blx	r4
100022ac:	e7c2      	b.n	10002234 <SpicCalibrationRtl8195A+0x1c0>
100022ae:	bf00      	nop
100022b0:	40000014 	.word	0x40000014
100022b4:	10001c68 	.word	0x10001c68
100022b8:	10000314 	.word	0x10000314
100022bc:	40006008 	.word	0x40006008
100022c0:	00003049 	.word	0x00003049
100022c4:	4000611c 	.word	0x4000611c
100022c8:	40006014 	.word	0x40006014
100022cc:	40000300 	.word	0x40000300
100022d0:	0000f39d 	.word	0x0000f39d
100022d4:	10003174 	.word	0x10003174
100022d8:	10003188 	.word	0x10003188
100022dc:	100031a4 	.word	0x100031a4

100022e0 <SpicConfigAutoModeRtl8195A>:
100022e0:	4b12      	ldr	r3, [pc, #72]	; (1000232c <SpicConfigAutoModeRtl8195A+0x4c>)
100022e2:	2200      	movs	r2, #0
100022e4:	601a      	str	r2, [r3, #0]
100022e6:	b968      	cbnz	r0, 10002304 <SpicConfigAutoModeRtl8195A+0x24>
100022e8:	4811      	ldr	r0, [pc, #68]	; (10002330 <SpicConfigAutoModeRtl8195A+0x50>)
100022ea:	b410      	push	{r4}
100022ec:	4a11      	ldr	r2, [pc, #68]	; (10002334 <SpicConfigAutoModeRtl8195A+0x54>)
100022ee:	2438      	movs	r4, #56	; 0x38
100022f0:	21eb      	movs	r1, #235	; 0xeb
100022f2:	6004      	str	r4, [r0, #0]
100022f4:	f8c3 10e8 	str.w	r1, [r3, #232]	; 0xe8
100022f8:	6813      	ldr	r3, [r2, #0]
100022fa:	bc10      	pop	{r4}
100022fc:	f423 73ff 	bic.w	r3, r3, #510	; 0x1fe
10002300:	6013      	str	r3, [r2, #0]
10002302:	4770      	bx	lr
10002304:	2801      	cmp	r0, #1
10002306:	d10a      	bne.n	1000231e <SpicConfigAutoModeRtl8195A+0x3e>
10002308:	4b0b      	ldr	r3, [pc, #44]	; (10002338 <SpicConfigAutoModeRtl8195A+0x58>)
1000230a:	4a0a      	ldr	r2, [pc, #40]	; (10002334 <SpicConfigAutoModeRtl8195A+0x54>)
1000230c:	213b      	movs	r1, #59	; 0x3b
1000230e:	6019      	str	r1, [r3, #0]
10002310:	6813      	ldr	r3, [r2, #0]
10002312:	f443 7300 	orr.w	r3, r3, #512	; 0x200
10002316:	f043 0302 	orr.w	r3, r3, #2
1000231a:	6013      	str	r3, [r2, #0]
1000231c:	4770      	bx	lr
1000231e:	2802      	cmp	r0, #2
10002320:	d1ef      	bne.n	10002302 <SpicConfigAutoModeRtl8195A+0x22>
10002322:	4b04      	ldr	r3, [pc, #16]	; (10002334 <SpicConfigAutoModeRtl8195A+0x54>)
10002324:	681a      	ldr	r2, [r3, #0]
10002326:	601a      	str	r2, [r3, #0]
10002328:	4770      	bx	lr
1000232a:	bf00      	nop
1000232c:	40006008 	.word	0x40006008
10002330:	40006104 	.word	0x40006104
10002334:	40006120 	.word	0x40006120
10002338:	400060e4 	.word	0x400060e4

1000233c <SpicRxCmdRefinedRtl8195A>:
1000233c:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10002340:	4b36      	ldr	r3, [pc, #216]	; (1000241c <SpicRxCmdRefinedRtl8195A+0xe0>)
10002342:	b085      	sub	sp, #20
10002344:	9101      	str	r1, [sp, #4]
10002346:	681b      	ldr	r3, [r3, #0]
10002348:	4c35      	ldr	r4, [pc, #212]	; (10002420 <SpicRxCmdRefinedRtl8195A+0xe4>)
1000234a:	f3c3 1302 	ubfx	r3, r3, #4, #3
1000234e:	eb04 0483 	add.w	r4, r4, r3, lsl #2
10002352:	78e2      	ldrb	r2, [r4, #3]
10002354:	4681      	mov	r9, r0
10002356:	2a00      	cmp	r2, #0
10002358:	d04e      	beq.n	100023f8 <SpicRxCmdRefinedRtl8195A+0xbc>
1000235a:	4b32      	ldr	r3, [pc, #200]	; (10002424 <SpicRxCmdRefinedRtl8195A+0xe8>)
1000235c:	681b      	ldr	r3, [r3, #0]
1000235e:	04db      	lsls	r3, r3, #19
10002360:	d454      	bmi.n	1000240c <SpicRxCmdRefinedRtl8195A+0xd0>
10002362:	f8df a0ec 	ldr.w	sl, [pc, #236]	; 10002450 <SpicRxCmdRefinedRtl8195A+0x114>
10002366:	7863      	ldrb	r3, [r4, #1]
10002368:	f8da b000 	ldr.w	fp, [sl]
1000236c:	4f2e      	ldr	r7, [pc, #184]	; (10002428 <SpicRxCmdRefinedRtl8195A+0xec>)
1000236e:	ea4f 421b 	mov.w	r2, fp, lsr #16
10002372:	0412      	lsls	r2, r2, #16
10002374:	4313      	orrs	r3, r2
10002376:	f8ca 3000 	str.w	r3, [sl]
1000237a:	f8d7 8000 	ldr.w	r8, [r7]
1000237e:	7823      	ldrb	r3, [r4, #0]
10002380:	ea4f 4218 	mov.w	r2, r8, lsr #16
10002384:	0412      	lsls	r2, r2, #16
10002386:	4d29      	ldr	r5, [pc, #164]	; (1000242c <SpicRxCmdRefinedRtl8195A+0xf0>)
10002388:	4313      	orrs	r3, r2
1000238a:	603b      	str	r3, [r7, #0]
1000238c:	682e      	ldr	r6, [r5, #0]
1000238e:	78a3      	ldrb	r3, [r4, #2]
10002390:	f026 02ff 	bic.w	r2, r6, #255	; 0xff
10002394:	4c26      	ldr	r4, [pc, #152]	; (10002430 <SpicRxCmdRefinedRtl8195A+0xf4>)
10002396:	4827      	ldr	r0, [pc, #156]	; (10002434 <SpicRxCmdRefinedRtl8195A+0xf8>)
10002398:	431a      	orrs	r2, r3
1000239a:	2300      	movs	r3, #0
1000239c:	602a      	str	r2, [r5, #0]
1000239e:	6023      	str	r3, [r4, #0]
100023a0:	6801      	ldr	r1, [r0, #0]
100023a2:	4a25      	ldr	r2, [pc, #148]	; (10002438 <SpicRxCmdRefinedRtl8195A+0xfc>)
100023a4:	f421 2170 	bic.w	r1, r1, #983040	; 0xf0000
100023a8:	f421 7140 	bic.w	r1, r1, #768	; 0x300
100023ac:	f441 7140 	orr.w	r1, r1, #768	; 0x300
100023b0:	9300      	str	r3, [sp, #0]
100023b2:	6001      	str	r1, [r0, #0]
100023b4:	2101      	movs	r1, #1
100023b6:	f882 9000 	strb.w	r9, [r2]
100023ba:	6021      	str	r1, [r4, #0]
100023bc:	4a1f      	ldr	r2, [pc, #124]	; (1000243c <SpicRxCmdRefinedRtl8195A+0x100>)
100023be:	4790      	blx	r2
100023c0:	9b00      	ldr	r3, [sp, #0]
100023c2:	fa1f f888 	uxth.w	r8, r8
100023c6:	6023      	str	r3, [r4, #0]
100023c8:	f8da 1000 	ldr.w	r1, [sl]
100023cc:	fa1f f38b 	uxth.w	r3, fp
100023d0:	0c0a      	lsrs	r2, r1, #16
100023d2:	0412      	lsls	r2, r2, #16
100023d4:	431a      	orrs	r2, r3
100023d6:	f8ca 2000 	str.w	r2, [sl]
100023da:	683a      	ldr	r2, [r7, #0]
100023dc:	b2f6      	uxtb	r6, r6
100023de:	0c13      	lsrs	r3, r2, #16
100023e0:	041b      	lsls	r3, r3, #16
100023e2:	ea48 0303 	orr.w	r3, r8, r3
100023e6:	603b      	str	r3, [r7, #0]
100023e8:	682b      	ldr	r3, [r5, #0]
100023ea:	f023 03ff 	bic.w	r3, r3, #255	; 0xff
100023ee:	431e      	orrs	r6, r3
100023f0:	602e      	str	r6, [r5, #0]
100023f2:	b005      	add	sp, #20
100023f4:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
100023f8:	4618      	mov	r0, r3
100023fa:	aa03      	add	r2, sp, #12
100023fc:	4b10      	ldr	r3, [pc, #64]	; (10002440 <SpicRxCmdRefinedRtl8195A+0x104>)
100023fe:	2101      	movs	r1, #1
10002400:	4614      	mov	r4, r2
10002402:	4798      	blx	r3
10002404:	4b07      	ldr	r3, [pc, #28]	; (10002424 <SpicRxCmdRefinedRtl8195A+0xe8>)
10002406:	681b      	ldr	r3, [r3, #0]
10002408:	04db      	lsls	r3, r3, #19
1000240a:	d5aa      	bpl.n	10002362 <SpicRxCmdRefinedRtl8195A+0x26>
1000240c:	4623      	mov	r3, r4
1000240e:	464a      	mov	r2, r9
10002410:	490c      	ldr	r1, [pc, #48]	; (10002444 <SpicRxCmdRefinedRtl8195A+0x108>)
10002412:	4d0d      	ldr	r5, [pc, #52]	; (10002448 <SpicRxCmdRefinedRtl8195A+0x10c>)
10002414:	480d      	ldr	r0, [pc, #52]	; (1000244c <SpicRxCmdRefinedRtl8195A+0x110>)
10002416:	47a8      	blx	r5
10002418:	e7a3      	b.n	10002362 <SpicRxCmdRefinedRtl8195A+0x26>
1000241a:	bf00      	nop
1000241c:	40000014 	.word	0x40000014
10002420:	10001c68 	.word	0x10001c68
10002424:	10000310 	.word	0x10000310
10002428:	40006014 	.word	0x40006014
1000242c:	40000300 	.word	0x40000300
10002430:	40006008 	.word	0x40006008
10002434:	40006000 	.word	0x40006000
10002438:	40006060 	.word	0x40006060
1000243c:	00002ea5 	.word	0x00002ea5
10002440:	00003081 	.word	0x00003081
10002444:	10003300 	.word	0x10003300
10002448:	0000f39d 	.word	0x0000f39d
1000244c:	100031dc 	.word	0x100031dc
10002450:	4000611c 	.word	0x4000611c

10002454 <SpicGetFlashStatusRefinedRtl8195A>:
10002454:	b530      	push	{r4, r5, lr}
10002456:	4b0d      	ldr	r3, [pc, #52]	; (1000248c <SpicGetFlashStatusRefinedRtl8195A+0x38>)
10002458:	b083      	sub	sp, #12
1000245a:	9001      	str	r0, [sp, #4]
1000245c:	681b      	ldr	r3, [r3, #0]
1000245e:	04db      	lsls	r3, r3, #19
10002460:	d40e      	bmi.n	10002480 <SpicGetFlashStatusRefinedRtl8195A+0x2c>
10002462:	4c0b      	ldr	r4, [pc, #44]	; (10002490 <SpicGetFlashStatusRefinedRtl8195A+0x3c>)
10002464:	4b0b      	ldr	r3, [pc, #44]	; (10002494 <SpicGetFlashStatusRefinedRtl8195A+0x40>)
10002466:	2500      	movs	r5, #0
10002468:	2201      	movs	r2, #1
1000246a:	6025      	str	r5, [r4, #0]
1000246c:	601a      	str	r2, [r3, #0]
1000246e:	9901      	ldr	r1, [sp, #4]
10002470:	2005      	movs	r0, #5
10002472:	f7ff ff63 	bl	1000233c <SpicRxCmdRefinedRtl8195A>
10002476:	4b08      	ldr	r3, [pc, #32]	; (10002498 <SpicGetFlashStatusRefinedRtl8195A+0x44>)
10002478:	7818      	ldrb	r0, [r3, #0]
1000247a:	6025      	str	r5, [r4, #0]
1000247c:	b003      	add	sp, #12
1000247e:	bd30      	pop	{r4, r5, pc}
10002480:	4602      	mov	r2, r0
10002482:	4906      	ldr	r1, [pc, #24]	; (1000249c <SpicGetFlashStatusRefinedRtl8195A+0x48>)
10002484:	4b06      	ldr	r3, [pc, #24]	; (100024a0 <SpicGetFlashStatusRefinedRtl8195A+0x4c>)
10002486:	4807      	ldr	r0, [pc, #28]	; (100024a4 <SpicGetFlashStatusRefinedRtl8195A+0x50>)
10002488:	4798      	blx	r3
1000248a:	e7ea      	b.n	10002462 <SpicGetFlashStatusRefinedRtl8195A+0xe>
1000248c:	10000310 	.word	0x10000310
10002490:	40006008 	.word	0x40006008
10002494:	40006004 	.word	0x40006004
10002498:	40006060 	.word	0x40006060
1000249c:	10003134 	.word	0x10003134
100024a0:	0000f39d 	.word	0x0000f39d
100024a4:	10002f10 	.word	0x10002f10

100024a8 <SpicWaitWipDoneRefinedRtl8195A>:
100024a8:	b500      	push	{lr}
100024aa:	4b0a      	ldr	r3, [pc, #40]	; (100024d4 <SpicWaitWipDoneRefinedRtl8195A+0x2c>)
100024ac:	b083      	sub	sp, #12
100024ae:	9001      	str	r0, [sp, #4]
100024b0:	681b      	ldr	r3, [r3, #0]
100024b2:	04da      	lsls	r2, r3, #19
100024b4:	d407      	bmi.n	100024c6 <SpicWaitWipDoneRefinedRtl8195A+0x1e>
100024b6:	9801      	ldr	r0, [sp, #4]
100024b8:	f7ff ffcc 	bl	10002454 <SpicGetFlashStatusRefinedRtl8195A>
100024bc:	07c3      	lsls	r3, r0, #31
100024be:	d4fa      	bmi.n	100024b6 <SpicWaitWipDoneRefinedRtl8195A+0xe>
100024c0:	b003      	add	sp, #12
100024c2:	f85d fb04 	ldr.w	pc, [sp], #4
100024c6:	4602      	mov	r2, r0
100024c8:	4903      	ldr	r1, [pc, #12]	; (100024d8 <SpicWaitWipDoneRefinedRtl8195A+0x30>)
100024ca:	4b04      	ldr	r3, [pc, #16]	; (100024dc <SpicWaitWipDoneRefinedRtl8195A+0x34>)
100024cc:	4804      	ldr	r0, [pc, #16]	; (100024e0 <SpicWaitWipDoneRefinedRtl8195A+0x38>)
100024ce:	4798      	blx	r3
100024d0:	e7f1      	b.n	100024b6 <SpicWaitWipDoneRefinedRtl8195A+0xe>
100024d2:	bf00      	nop
100024d4:	10000310 	.word	0x10000310
100024d8:	100032e0 	.word	0x100032e0
100024dc:	0000f39d 	.word	0x0000f39d
100024e0:	10002f10 	.word	0x10002f10

100024e4 <SpicTxCmdWithDataRtl8195A>:
100024e4:	b5f0      	push	{r4, r5, r6, r7, lr}
100024e6:	4c27      	ldr	r4, [pc, #156]	; (10002584 <SpicTxCmdWithDataRtl8195A+0xa0>)
100024e8:	4606      	mov	r6, r0
100024ea:	6820      	ldr	r0, [r4, #0]
100024ec:	b085      	sub	sp, #20
100024ee:	4615      	mov	r5, r2
100024f0:	04c2      	lsls	r2, r0, #19
100024f2:	460c      	mov	r4, r1
100024f4:	9303      	str	r3, [sp, #12]
100024f6:	d43b      	bmi.n	10002570 <SpicTxCmdWithDataRtl8195A+0x8c>
100024f8:	4b23      	ldr	r3, [pc, #140]	; (10002588 <SpicTxCmdWithDataRtl8195A+0xa4>)
100024fa:	2200      	movs	r2, #0
100024fc:	2c0f      	cmp	r4, #15
100024fe:	601a      	str	r2, [r3, #0]
10002500:	d923      	bls.n	1000254a <SpicTxCmdWithDataRtl8195A+0x66>
10002502:	4b22      	ldr	r3, [pc, #136]	; (1000258c <SpicTxCmdWithDataRtl8195A+0xa8>)
10002504:	681b      	ldr	r3, [r3, #0]
10002506:	04db      	lsls	r3, r3, #19
10002508:	d42d      	bmi.n	10002566 <SpicTxCmdWithDataRtl8195A+0x82>
1000250a:	4b21      	ldr	r3, [pc, #132]	; (10002590 <SpicTxCmdWithDataRtl8195A+0xac>)
1000250c:	4a21      	ldr	r2, [pc, #132]	; (10002594 <SpicTxCmdWithDataRtl8195A+0xb0>)
1000250e:	240f      	movs	r4, #15
10002510:	601c      	str	r4, [r3, #0]
10002512:	6813      	ldr	r3, [r2, #0]
10002514:	4920      	ldr	r1, [pc, #128]	; (10002598 <SpicTxCmdWithDataRtl8195A+0xb4>)
10002516:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
1000251a:	f423 7340 	bic.w	r3, r3, #768	; 0x300
1000251e:	6013      	str	r3, [r2, #0]
10002520:	700e      	strb	r6, [r1, #0]
10002522:	462a      	mov	r2, r5
10002524:	481c      	ldr	r0, [pc, #112]	; (10002598 <SpicTxCmdWithDataRtl8195A+0xb4>)
10002526:	f812 1b01 	ldrb.w	r1, [r2], #1
1000252a:	1b53      	subs	r3, r2, r5
1000252c:	b2db      	uxtb	r3, r3
1000252e:	429c      	cmp	r4, r3
10002530:	7001      	strb	r1, [r0, #0]
10002532:	d8f8      	bhi.n	10002526 <SpicTxCmdWithDataRtl8195A+0x42>
10002534:	4b14      	ldr	r3, [pc, #80]	; (10002588 <SpicTxCmdWithDataRtl8195A+0xa4>)
10002536:	2201      	movs	r2, #1
10002538:	601a      	str	r2, [r3, #0]
1000253a:	4b18      	ldr	r3, [pc, #96]	; (1000259c <SpicTxCmdWithDataRtl8195A+0xb8>)
1000253c:	4798      	blx	r3
1000253e:	9803      	ldr	r0, [sp, #12]
10002540:	b005      	add	sp, #20
10002542:	e8bd 40f0 	ldmia.w	sp!, {r4, r5, r6, r7, lr}
10002546:	f7ff bfaf 	b.w	100024a8 <SpicWaitWipDoneRefinedRtl8195A>
1000254a:	4b11      	ldr	r3, [pc, #68]	; (10002590 <SpicTxCmdWithDataRtl8195A+0xac>)
1000254c:	4a11      	ldr	r2, [pc, #68]	; (10002594 <SpicTxCmdWithDataRtl8195A+0xb0>)
1000254e:	601c      	str	r4, [r3, #0]
10002550:	6813      	ldr	r3, [r2, #0]
10002552:	4911      	ldr	r1, [pc, #68]	; (10002598 <SpicTxCmdWithDataRtl8195A+0xb4>)
10002554:	f423 2370 	bic.w	r3, r3, #983040	; 0xf0000
10002558:	f423 7340 	bic.w	r3, r3, #768	; 0x300
1000255c:	6013      	str	r3, [r2, #0]
1000255e:	700e      	strb	r6, [r1, #0]
10002560:	2c00      	cmp	r4, #0
10002562:	d1de      	bne.n	10002522 <SpicTxCmdWithDataRtl8195A+0x3e>
10002564:	e7e6      	b.n	10002534 <SpicTxCmdWithDataRtl8195A+0x50>
10002566:	4621      	mov	r1, r4
10002568:	4b0d      	ldr	r3, [pc, #52]	; (100025a0 <SpicTxCmdWithDataRtl8195A+0xbc>)
1000256a:	480e      	ldr	r0, [pc, #56]	; (100025a4 <SpicTxCmdWithDataRtl8195A+0xc0>)
1000256c:	4798      	blx	r3
1000256e:	e7cc      	b.n	1000250a <SpicTxCmdWithDataRtl8195A+0x26>
10002570:	9301      	str	r3, [sp, #4]
10002572:	9500      	str	r5, [sp, #0]
10002574:	460b      	mov	r3, r1
10002576:	4632      	mov	r2, r6
10002578:	490b      	ldr	r1, [pc, #44]	; (100025a8 <SpicTxCmdWithDataRtl8195A+0xc4>)
1000257a:	4f09      	ldr	r7, [pc, #36]	; (100025a0 <SpicTxCmdWithDataRtl8195A+0xbc>)
1000257c:	480b      	ldr	r0, [pc, #44]	; (100025ac <SpicTxCmdWithDataRtl8195A+0xc8>)
1000257e:	47b8      	blx	r7
10002580:	e7ba      	b.n	100024f8 <SpicTxCmdWithDataRtl8195A+0x14>
10002582:	bf00      	nop
10002584:	10000310 	.word	0x10000310
10002588:	40006008 	.word	0x40006008
1000258c:	1000030c 	.word	0x1000030c
10002590:	40006118 	.word	0x40006118
10002594:	40006000 	.word	0x40006000
10002598:	40006060 	.word	0x40006060
1000259c:	00002ea5 	.word	0x00002ea5
100025a0:	0000f39d 	.word	0x0000f39d
100025a4:	10003220 	.word	0x10003220
100025a8:	10003158 	.word	0x10003158
100025ac:	100031f8 	.word	0x100031f8

100025b0 <SpicTxFlashInstRtl8195A>:
100025b0:	b570      	push	{r4, r5, r6, lr}
100025b2:	b082      	sub	sp, #8
100025b4:	4604      	mov	r4, r0
100025b6:	9801      	ldr	r0, [sp, #4]
100025b8:	4616      	mov	r6, r2
100025ba:	460d      	mov	r5, r1
100025bc:	f7ff ff74 	bl	100024a8 <SpicWaitWipDoneRefinedRtl8195A>
100025c0:	4b11      	ldr	r3, [pc, #68]	; (10002608 <SpicTxFlashInstRtl8195A+0x58>)
100025c2:	681b      	ldr	r3, [r3, #0]
100025c4:	005a      	lsls	r2, r3, #1
100025c6:	d504      	bpl.n	100025d2 <SpicTxFlashInstRtl8195A+0x22>
100025c8:	e01a      	b.n	10002600 <SpicTxFlashInstRtl8195A+0x50>
100025ca:	9b01      	ldr	r3, [sp, #4]
100025cc:	4611      	mov	r1, r2
100025ce:	f7ff ff89 	bl	100024e4 <SpicTxCmdWithDataRtl8195A>
100025d2:	9801      	ldr	r0, [sp, #4]
100025d4:	f7ff ff3e 	bl	10002454 <SpicGetFlashStatusRefinedRtl8195A>
100025d8:	f000 0302 	and.w	r3, r0, #2
100025dc:	f003 02ff 	and.w	r2, r3, #255	; 0xff
100025e0:	2006      	movs	r0, #6
100025e2:	2b00      	cmp	r3, #0
100025e4:	d0f1      	beq.n	100025ca <SpicTxFlashInstRtl8195A+0x1a>
100025e6:	4632      	mov	r2, r6
100025e8:	4629      	mov	r1, r5
100025ea:	4620      	mov	r0, r4
100025ec:	9b01      	ldr	r3, [sp, #4]
100025ee:	f7ff ff79 	bl	100024e4 <SpicTxCmdWithDataRtl8195A>
100025f2:	9801      	ldr	r0, [sp, #4]
100025f4:	f7ff ff2e 	bl	10002454 <SpicGetFlashStatusRefinedRtl8195A>
100025f8:	0783      	lsls	r3, r0, #30
100025fa:	d4fa      	bmi.n	100025f2 <SpicTxFlashInstRtl8195A+0x42>
100025fc:	b002      	add	sp, #8
100025fe:	bd70      	pop	{r4, r5, r6, pc}
10002600:	4b02      	ldr	r3, [pc, #8]	; (1000260c <SpicTxFlashInstRtl8195A+0x5c>)
10002602:	4803      	ldr	r0, [pc, #12]	; (10002610 <SpicTxFlashInstRtl8195A+0x60>)
10002604:	4798      	blx	r3
10002606:	e7e4      	b.n	100025d2 <SpicTxFlashInstRtl8195A+0x22>
10002608:	10000314 	.word	0x10000314
1000260c:	0000f39d 	.word	0x0000f39d
10002610:	1000325c 	.word	0x1000325c

10002614 <SpicInitRefinedRtl8195A>:
10002614:	4a28      	ldr	r2, [pc, #160]	; (100026b8 <SpicInitRefinedRtl8195A+0xa4>)
10002616:	b5f0      	push	{r4, r5, r6, r7, lr}
10002618:	eb01 0341 	add.w	r3, r1, r1, lsl #1
1000261c:	460c      	mov	r4, r1
1000261e:	6811      	ldr	r1, [r2, #0]
10002620:	4a26      	ldr	r2, [pc, #152]	; (100026bc <SpicInitRefinedRtl8195A+0xa8>)
10002622:	f3c1 1102 	ubfx	r1, r1, #4, #3
10002626:	eb01 0343 	add.w	r3, r1, r3, lsl #1
1000262a:	eb02 0383 	add.w	r3, r2, r3, lsl #2
1000262e:	78da      	ldrb	r2, [r3, #3]
10002630:	b083      	sub	sp, #12
10002632:	4606      	mov	r6, r0
10002634:	b342      	cbz	r2, 10002688 <SpicInitRefinedRtl8195A+0x74>
10002636:	4d22      	ldr	r5, [pc, #136]	; (100026c0 <SpicInitRefinedRtl8195A+0xac>)
10002638:	4822      	ldr	r0, [pc, #136]	; (100026c4 <SpicInitRefinedRtl8195A+0xb0>)
1000263a:	4a23      	ldr	r2, [pc, #140]	; (100026c8 <SpicInitRefinedRtl8195A+0xb4>)
1000263c:	2101      	movs	r1, #1
1000263e:	2700      	movs	r7, #0
10002640:	602f      	str	r7, [r5, #0]
10002642:	6006      	str	r6, [r0, #0]
10002644:	6011      	str	r1, [r2, #0]
10002646:	f8d5 2114 	ldr.w	r2, [r5, #276]	; 0x114
1000264a:	7859      	ldrb	r1, [r3, #1]
1000264c:	0c12      	lsrs	r2, r2, #16
1000264e:	0412      	lsls	r2, r2, #16
10002650:	430a      	orrs	r2, r1
10002652:	481e      	ldr	r0, [pc, #120]	; (100026cc <SpicInitRefinedRtl8195A+0xb8>)
10002654:	f8c5 2114 	str.w	r2, [r5, #276]	; 0x114
10002658:	6801      	ldr	r1, [r0, #0]
1000265a:	789a      	ldrb	r2, [r3, #2]
1000265c:	f021 03ff 	bic.w	r3, r1, #255	; 0xff
10002660:	491b      	ldr	r1, [pc, #108]	; (100026d0 <SpicInitRefinedRtl8195A+0xbc>)
10002662:	4313      	orrs	r3, r2
10002664:	2c01      	cmp	r4, #1
10002666:	f04f 0204 	mov.w	r2, #4
1000266a:	6003      	str	r3, [r0, #0]
1000266c:	600a      	str	r2, [r1, #0]
1000266e:	d019      	beq.n	100026a4 <SpicInitRefinedRtl8195A+0x90>
10002670:	d311      	bcc.n	10002696 <SpicInitRefinedRtl8195A+0x82>
10002672:	2c02      	cmp	r4, #2
10002674:	d106      	bne.n	10002684 <SpicInitRefinedRtl8195A+0x70>
10002676:	4a17      	ldr	r2, [pc, #92]	; (100026d4 <SpicInitRefinedRtl8195A+0xc0>)
10002678:	6813      	ldr	r3, [r2, #0]
1000267a:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
1000267e:	f443 2320 	orr.w	r3, r3, #655360	; 0xa0000
10002682:	6013      	str	r3, [r2, #0]
10002684:	b003      	add	sp, #12
10002686:	bdf0      	pop	{r4, r5, r6, r7, pc}
10002688:	4608      	mov	r0, r1
1000268a:	4b13      	ldr	r3, [pc, #76]	; (100026d8 <SpicInitRefinedRtl8195A+0xc4>)
1000268c:	aa01      	add	r2, sp, #4
1000268e:	2101      	movs	r1, #1
10002690:	4798      	blx	r3
10002692:	ab01      	add	r3, sp, #4
10002694:	e7cf      	b.n	10002636 <SpicInitRefinedRtl8195A+0x22>
10002696:	4a0f      	ldr	r2, [pc, #60]	; (100026d4 <SpicInitRefinedRtl8195A+0xc0>)
10002698:	6813      	ldr	r3, [r2, #0]
1000269a:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
1000269e:	6013      	str	r3, [r2, #0]
100026a0:	b003      	add	sp, #12
100026a2:	bdf0      	pop	{r4, r5, r6, r7, pc}
100026a4:	4a0b      	ldr	r2, [pc, #44]	; (100026d4 <SpicInitRefinedRtl8195A+0xc0>)
100026a6:	6813      	ldr	r3, [r2, #0]
100026a8:	f423 137c 	bic.w	r3, r3, #4128768	; 0x3f0000
100026ac:	f443 23a0 	orr.w	r3, r3, #327680	; 0x50000
100026b0:	6013      	str	r3, [r2, #0]
100026b2:	b003      	add	sp, #12
100026b4:	bdf0      	pop	{r4, r5, r6, r7, pc}
100026b6:	bf00      	nop
100026b8:	40000014 	.word	0x40000014
100026bc:	10001c68 	.word	0x10001c68
100026c0:	40006008 	.word	0x40006008
100026c4:	40006014 	.word	0x40006014
100026c8:	40006010 	.word	0x40006010
100026cc:	40000300 	.word	0x40000300
100026d0:	40006004 	.word	0x40006004
100026d4:	40006000 	.word	0x40006000
100026d8:	00003081 	.word	0x00003081

100026dc <SpicEraseFlashRefinedRtl8195A>:
100026dc:	b500      	push	{lr}
100026de:	b083      	sub	sp, #12
100026e0:	9801      	ldr	r0, [sp, #4]
100026e2:	f7ff fee1 	bl	100024a8 <SpicWaitWipDoneRefinedRtl8195A>
100026e6:	e003      	b.n	100026f0 <SpicEraseFlashRefinedRtl8195A+0x14>
100026e8:	9b01      	ldr	r3, [sp, #4]
100026ea:	4611      	mov	r1, r2
100026ec:	f7ff fefa 	bl	100024e4 <SpicTxCmdWithDataRtl8195A>
100026f0:	9801      	ldr	r0, [sp, #4]
100026f2:	f7ff feaf 	bl	10002454 <SpicGetFlashStatusRefinedRtl8195A>
100026f6:	f000 0302 	and.w	r3, r0, #2
100026fa:	f003 02ff 	and.w	r2, r3, #255	; 0xff
100026fe:	2006      	movs	r0, #6
10002700:	2b00      	cmp	r3, #0
10002702:	d0f1      	beq.n	100026e8 <SpicEraseFlashRefinedRtl8195A+0xc>
10002704:	4b0a      	ldr	r3, [pc, #40]	; (10002730 <SpicEraseFlashRefinedRtl8195A+0x54>)
10002706:	681b      	ldr	r3, [r3, #0]
10002708:	005a      	lsls	r2, r3, #1
1000270a:	d40d      	bmi.n	10002728 <SpicEraseFlashRefinedRtl8195A+0x4c>
1000270c:	2200      	movs	r2, #0
1000270e:	4611      	mov	r1, r2
10002710:	9b01      	ldr	r3, [sp, #4]
10002712:	2060      	movs	r0, #96	; 0x60
10002714:	f7ff fee6 	bl	100024e4 <SpicTxCmdWithDataRtl8195A>
10002718:	9801      	ldr	r0, [sp, #4]
1000271a:	f7ff fe9b 	bl	10002454 <SpicGetFlashStatusRefinedRtl8195A>
1000271e:	0783      	lsls	r3, r0, #30
10002720:	d4fa      	bmi.n	10002718 <SpicEraseFlashRefinedRtl8195A+0x3c>
10002722:	b003      	add	sp, #12
10002724:	f85d fb04 	ldr.w	pc, [sp], #4
10002728:	4b02      	ldr	r3, [pc, #8]	; (10002734 <SpicEraseFlashRefinedRtl8195A+0x58>)
1000272a:	4803      	ldr	r0, [pc, #12]	; (10002738 <SpicEraseFlashRefinedRtl8195A+0x5c>)
1000272c:	4798      	blx	r3
1000272e:	e7ed      	b.n	1000270c <SpicEraseFlashRefinedRtl8195A+0x30>
10002730:	10000314 	.word	0x10000314
10002734:	0000f39d 	.word	0x0000f39d
10002738:	10003260 	.word	0x10003260

1000273c <SpicSetFlashStatusRefinedRtl8195A>:
1000273c:	e92d 41f0 	stmdb	sp!, {r4, r5, r6, r7, r8, lr}
10002740:	4606      	mov	r6, r0
10002742:	b082      	sub	sp, #8
10002744:	4c12      	ldr	r4, [pc, #72]	; (10002790 <SpicSetFlashStatusRefinedRtl8195A+0x54>)
10002746:	2200      	movs	r2, #0
10002748:	9101      	str	r1, [sp, #4]
1000274a:	4d12      	ldr	r5, [pc, #72]	; (10002794 <SpicSetFlashStatusRefinedRtl8195A+0x58>)
1000274c:	460b      	mov	r3, r1
1000274e:	2006      	movs	r0, #6
10002750:	4611      	mov	r1, r2
10002752:	6827      	ldr	r7, [r4, #0]
10002754:	f04f 0800 	mov.w	r8, #0
10002758:	f7ff fec4 	bl	100024e4 <SpicTxCmdWithDataRtl8195A>
1000275c:	490e      	ldr	r1, [pc, #56]	; (10002798 <SpicSetFlashStatusRefinedRtl8195A+0x5c>)
1000275e:	f8c5 8000 	str.w	r8, [r5]
10002762:	680b      	ldr	r3, [r1, #0]
10002764:	4a0d      	ldr	r2, [pc, #52]	; (1000279c <SpicSetFlashStatusRefinedRtl8195A+0x60>)
10002766:	f423 7340 	bic.w	r3, r3, #768	; 0x300
1000276a:	600b      	str	r3, [r1, #0]
1000276c:	b2f6      	uxtb	r6, r6
1000276e:	2301      	movs	r3, #1
10002770:	6023      	str	r3, [r4, #0]
10002772:	7013      	strb	r3, [r2, #0]
10002774:	7016      	strb	r6, [r2, #0]
10002776:	4a0a      	ldr	r2, [pc, #40]	; (100027a0 <SpicSetFlashStatusRefinedRtl8195A+0x64>)
10002778:	602b      	str	r3, [r5, #0]
1000277a:	4790      	blx	r2
1000277c:	f8c5 8000 	str.w	r8, [r5]
10002780:	6027      	str	r7, [r4, #0]
10002782:	9801      	ldr	r0, [sp, #4]
10002784:	b002      	add	sp, #8
10002786:	e8bd 41f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, lr}
1000278a:	f7ff be8d 	b.w	100024a8 <SpicWaitWipDoneRefinedRtl8195A>
1000278e:	bf00      	nop
10002790:	40006118 	.word	0x40006118
10002794:	40006008 	.word	0x40006008
10002798:	40006000 	.word	0x40006000
1000279c:	40006060 	.word	0x40006060
100027a0:	00002ea5 	.word	0x00002ea5

100027a4 <SpicFlashInitRtl8195A>:
100027a4:	b570      	push	{r4, r5, r6, lr}
100027a6:	2801      	cmp	r0, #1
100027a8:	b082      	sub	sp, #8
100027aa:	4604      	mov	r4, r0
100027ac:	d040      	beq.n	10002830 <SpicFlashInitRtl8195A+0x8c>
100027ae:	d337      	bcc.n	10002820 <SpicFlashInitRtl8195A+0x7c>
100027b0:	2802      	cmp	r0, #2
100027b2:	d021      	beq.n	100027f8 <SpicFlashInitRtl8195A+0x54>
100027b4:	4b27      	ldr	r3, [pc, #156]	; (10002854 <SpicFlashInitRtl8195A+0xb0>)
100027b6:	6819      	ldr	r1, [r3, #0]
100027b8:	f011 4180 	ands.w	r1, r1, #1073741824	; 0x40000000
100027bc:	d140      	bne.n	10002840 <SpicFlashInitRtl8195A+0x9c>
100027be:	4620      	mov	r0, r4
100027c0:	f7ff fc58 	bl	10002074 <SpicCalibrationRtl8195A>
100027c4:	bb48      	cbnz	r0, 1000281a <SpicFlashInitRtl8195A+0x76>
100027c6:	4b23      	ldr	r3, [pc, #140]	; (10002854 <SpicFlashInitRtl8195A+0xb0>)
100027c8:	681b      	ldr	r3, [r3, #0]
100027ca:	005b      	lsls	r3, r3, #1
100027cc:	d434      	bmi.n	10002838 <SpicFlashInitRtl8195A+0x94>
100027ce:	f89d 0004 	ldrb.w	r0, [sp, #4]
100027d2:	2100      	movs	r1, #0
100027d4:	f7ff ff1e 	bl	10002614 <SpicInitRefinedRtl8195A>
100027d8:	4e1f      	ldr	r6, [pc, #124]	; (10002858 <SpicFlashInitRtl8195A+0xb4>)
100027da:	4c20      	ldr	r4, [pc, #128]	; (1000285c <SpicFlashInitRtl8195A+0xb8>)
100027dc:	4b20      	ldr	r3, [pc, #128]	; (10002860 <SpicFlashInitRtl8195A+0xbc>)
100027de:	2000      	movs	r0, #0
100027e0:	4a20      	ldr	r2, [pc, #128]	; (10002864 <SpicFlashInitRtl8195A+0xc0>)
100027e2:	2538      	movs	r5, #56	; 0x38
100027e4:	21eb      	movs	r1, #235	; 0xeb
100027e6:	6030      	str	r0, [r6, #0]
100027e8:	6025      	str	r5, [r4, #0]
100027ea:	6019      	str	r1, [r3, #0]
100027ec:	6813      	ldr	r3, [r2, #0]
100027ee:	f423 73ff 	bic.w	r3, r3, #510	; 0x1fe
100027f2:	6013      	str	r3, [r2, #0]
100027f4:	b002      	add	sp, #8
100027f6:	bd70      	pop	{r4, r5, r6, pc}
100027f8:	4b16      	ldr	r3, [pc, #88]	; (10002854 <SpicFlashInitRtl8195A+0xb0>)
100027fa:	681b      	ldr	r3, [r3, #0]
100027fc:	005a      	lsls	r2, r3, #1
100027fe:	d424      	bmi.n	1000284a <SpicFlashInitRtl8195A+0xa6>
10002800:	2002      	movs	r0, #2
10002802:	f7ff fd6d 	bl	100022e0 <SpicConfigAutoModeRtl8195A>
10002806:	9901      	ldr	r1, [sp, #4]
10002808:	2040      	movs	r0, #64	; 0x40
1000280a:	f7ff ff97 	bl	1000273c <SpicSetFlashStatusRefinedRtl8195A>
1000280e:	2100      	movs	r1, #0
10002810:	4620      	mov	r0, r4
10002812:	f7ff fc2f 	bl	10002074 <SpicCalibrationRtl8195A>
10002816:	2800      	cmp	r0, #0
10002818:	d0d5      	beq.n	100027c6 <SpicFlashInitRtl8195A+0x22>
1000281a:	2001      	movs	r0, #1
1000281c:	b002      	add	sp, #8
1000281e:	bd70      	pop	{r4, r5, r6, pc}
10002820:	9801      	ldr	r0, [sp, #4]
10002822:	f7ff fe41 	bl	100024a8 <SpicWaitWipDoneRefinedRtl8195A>
10002826:	2000      	movs	r0, #0
10002828:	f7ff fd5a 	bl	100022e0 <SpicConfigAutoModeRtl8195A>
1000282c:	2100      	movs	r1, #0
1000282e:	e7c6      	b.n	100027be <SpicFlashInitRtl8195A+0x1a>
10002830:	f7ff fd56 	bl	100022e0 <SpicConfigAutoModeRtl8195A>
10002834:	2108      	movs	r1, #8
10002836:	e7c2      	b.n	100027be <SpicFlashInitRtl8195A+0x1a>
10002838:	4b0b      	ldr	r3, [pc, #44]	; (10002868 <SpicFlashInitRtl8195A+0xc4>)
1000283a:	480c      	ldr	r0, [pc, #48]	; (1000286c <SpicFlashInitRtl8195A+0xc8>)
1000283c:	4798      	blx	r3
1000283e:	e7c6      	b.n	100027ce <SpicFlashInitRtl8195A+0x2a>
10002840:	480b      	ldr	r0, [pc, #44]	; (10002870 <SpicFlashInitRtl8195A+0xcc>)
10002842:	4b09      	ldr	r3, [pc, #36]	; (10002868 <SpicFlashInitRtl8195A+0xc4>)
10002844:	4798      	blx	r3
10002846:	2100      	movs	r1, #0
10002848:	e7b9      	b.n	100027be <SpicFlashInitRtl8195A+0x1a>
1000284a:	4b07      	ldr	r3, [pc, #28]	; (10002868 <SpicFlashInitRtl8195A+0xc4>)
1000284c:	4809      	ldr	r0, [pc, #36]	; (10002874 <SpicFlashInitRtl8195A+0xd0>)
1000284e:	4798      	blx	r3
10002850:	e7d6      	b.n	10002800 <SpicFlashInitRtl8195A+0x5c>
10002852:	bf00      	nop
10002854:	10000314 	.word	0x10000314
10002858:	40006008 	.word	0x40006008
1000285c:	40006104 	.word	0x40006104
10002860:	400060f0 	.word	0x400060f0
10002864:	40006120 	.word	0x40006120
10002868:	0000f39d 	.word	0x0000f39d
1000286c:	100032b0 	.word	0x100032b0
10002870:	10003290 	.word	0x10003290
10002874:	10003270 	.word	0x10003270

10002878 <SpicOneBitCalibrationRtl8195A>:
10002878:	b570      	push	{r4, r5, r6, lr}
1000287a:	b082      	sub	sp, #8
1000287c:	9801      	ldr	r0, [sp, #4]
1000287e:	f7ff fe13 	bl	100024a8 <SpicWaitWipDoneRefinedRtl8195A>
10002882:	4e0b      	ldr	r6, [pc, #44]	; (100028b0 <SpicOneBitCalibrationRtl8195A+0x38>)
10002884:	4c0b      	ldr	r4, [pc, #44]	; (100028b4 <SpicOneBitCalibrationRtl8195A+0x3c>)
10002886:	4b0c      	ldr	r3, [pc, #48]	; (100028b8 <SpicOneBitCalibrationRtl8195A+0x40>)
10002888:	2100      	movs	r1, #0
1000288a:	4a0c      	ldr	r2, [pc, #48]	; (100028bc <SpicOneBitCalibrationRtl8195A+0x44>)
1000288c:	2538      	movs	r5, #56	; 0x38
1000288e:	20eb      	movs	r0, #235	; 0xeb
10002890:	6031      	str	r1, [r6, #0]
10002892:	6025      	str	r5, [r4, #0]
10002894:	6018      	str	r0, [r3, #0]
10002896:	6813      	ldr	r3, [r2, #0]
10002898:	4608      	mov	r0, r1
1000289a:	f423 73ff 	bic.w	r3, r3, #510	; 0x1fe
1000289e:	6013      	str	r3, [r2, #0]
100028a0:	f7ff fbe8 	bl	10002074 <SpicCalibrationRtl8195A>
100028a4:	3000      	adds	r0, #0
100028a6:	bf18      	it	ne
100028a8:	2001      	movne	r0, #1
100028aa:	b002      	add	sp, #8
100028ac:	bd70      	pop	{r4, r5, r6, pc}
100028ae:	bf00      	nop
100028b0:	40006008 	.word	0x40006008
100028b4:	40006104 	.word	0x40006104
100028b8:	400060f0 	.word	0x400060f0
100028bc:	40006120 	.word	0x40006120

100028c0 <DramInit>:
100028c0:	6903      	ldr	r3, [r0, #16]
100028c2:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
100028c6:	2201      	movs	r2, #1
100028c8:	68c4      	ldr	r4, [r0, #12]
100028ca:	409a      	lsls	r2, r3
100028cc:	fb04 f402 	mul.w	r4, r4, r2
100028d0:	6883      	ldr	r3, [r0, #8]
100028d2:	6806      	ldr	r6, [r0, #0]
100028d4:	69dd      	ldr	r5, [r3, #28]
100028d6:	6899      	ldr	r1, [r3, #8]
100028d8:	fbb5 f5f4 	udiv	r5, r5, r4
100028dc:	fbb1 f1f2 	udiv	r1, r1, r2
100028e0:	1cef      	adds	r7, r5, #3
100028e2:	3101      	adds	r1, #1
100028e4:	42b9      	cmp	r1, r7
100028e6:	bf28      	it	cs
100028e8:	4639      	movcs	r1, r7
100028ea:	f8d6 b000 	ldr.w	fp, [r6]
100028ee:	b087      	sub	sp, #28
100028f0:	f1bb 0f02 	cmp.w	fp, #2
100028f4:	9100      	str	r1, [sp, #0]
100028f6:	f105 0e01 	add.w	lr, r5, #1
100028fa:	f000 80a8 	beq.w	10002a4e <DramInit+0x18e>
100028fe:	f1bb 0f03 	cmp.w	fp, #3
10002902:	f000 80da 	beq.w	10002aba <DramInit+0x1fa>
10002906:	f1bb 0f08 	cmp.w	fp, #8
1000290a:	f000 8130 	beq.w	10002b6e <DramInit+0x2ae>
1000290e:	2100      	movs	r1, #0
10002910:	9102      	str	r1, [sp, #8]
10002912:	9101      	str	r1, [sp, #4]
10002914:	f06f 0c03 	mvn.w	ip, #3
10002918:	f04f 0e00 	mov.w	lr, #0
1000291c:	f8cd e00c 	str.w	lr, [sp, #12]
10002920:	f06f 0102 	mvn.w	r1, #2
10002924:	f04f 0908 	mov.w	r9, #8
10002928:	fbbe fef2 	udiv	lr, lr, r2
1000292c:	fbb1 f1f2 	udiv	r1, r1, r2
10002930:	fbbc fcf2 	udiv	ip, ip, r2
10002934:	68f7      	ldr	r7, [r6, #12]
10002936:	6875      	ldr	r5, [r6, #4]
10002938:	2f01      	cmp	r7, #1
1000293a:	bf14      	ite	ne
1000293c:	f105 0801 	addne.w	r8, r5, #1
10002940:	f105 0802 	addeq.w	r8, r5, #2
10002944:	68b5      	ldr	r5, [r6, #8]
10002946:	023e      	lsls	r6, r7, #8
10002948:	ea46 1605 	orr.w	r6, r6, r5, lsl #4
1000294c:	9d02      	ldr	r5, [sp, #8]
1000294e:	ea49 1707 	orr.w	r7, r9, r7, lsl #4
10002952:	432e      	orrs	r6, r5
10002954:	0309      	lsls	r1, r1, #12
10002956:	4d94      	ldr	r5, [pc, #592]	; (10002ba8 <DramInit+0x2e8>)
10002958:	f8df a278 	ldr.w	sl, [pc, #632]	; 10002bd4 <DramInit+0x314>
1000295c:	f8df 9278 	ldr.w	r9, [pc, #632]	; 10002bd8 <DramInit+0x318>
10002960:	ea46 0608 	orr.w	r6, r6, r8
10002964:	f447 7700 	orr.w	r7, r7, #512	; 0x200
10002968:	ea41 510c 	orr.w	r1, r1, ip, lsl #20
1000296c:	f1bb 0fc8 	cmp.w	fp, #200	; 0xc8
10002970:	602e      	str	r6, [r5, #0]
10002972:	f8ca 7000 	str.w	r7, [sl]
10002976:	f8c9 1000 	str.w	r1, [r9]
1000297a:	d008      	beq.n	1000298e <DramInit+0xce>
1000297c:	6841      	ldr	r1, [r0, #4]
1000297e:	4e8b      	ldr	r6, [pc, #556]	; (10002bac <DramInit+0x2ec>)
10002980:	9803      	ldr	r0, [sp, #12]
10002982:	6030      	str	r0, [r6, #0]
10002984:	6909      	ldr	r1, [r1, #16]
10002986:	488a      	ldr	r0, [pc, #552]	; (10002bb0 <DramInit+0x2f0>)
10002988:	f041 0106 	orr.w	r1, r1, #6
1000298c:	6001      	str	r1, [r0, #0]
1000298e:	9801      	ldr	r0, [sp, #4]
10002990:	4988      	ldr	r1, [pc, #544]	; (10002bb4 <DramInit+0x2f4>)
10002992:	4e89      	ldr	r6, [pc, #548]	; (10002bb8 <DramInit+0x2f8>)
10002994:	6008      	str	r0, [r1, #0]
10002996:	6819      	ldr	r1, [r3, #0]
10002998:	6858      	ldr	r0, [r3, #4]
1000299a:	fbb1 f1f4 	udiv	r1, r1, r4
1000299e:	fbb0 f5f4 	udiv	r5, r0, r4
100029a2:	3101      	adds	r1, #1
100029a4:	f041 6010 	orr.w	r0, r1, #150994944	; 0x9000000
100029a8:	1c69      	adds	r1, r5, #1
100029aa:	ea40 2101 	orr.w	r1, r0, r1, lsl #8
100029ae:	6031      	str	r1, [r6, #0]
100029b0:	6a98      	ldr	r0, [r3, #40]	; 0x28
100029b2:	6919      	ldr	r1, [r3, #16]
100029b4:	695d      	ldr	r5, [r3, #20]
100029b6:	fbb0 f6f2 	udiv	r6, r0, r2
100029ba:	fbb1 f0f4 	udiv	r0, r1, r4
100029be:	fbb5 f5f4 	udiv	r5, r5, r4
100029c2:	1c71      	adds	r1, r6, #1
100029c4:	3001      	adds	r0, #1
100029c6:	ea40 3041 	orr.w	r0, r0, r1, lsl #13
100029ca:	1c69      	adds	r1, r5, #1
100029cc:	9d00      	ldr	r5, [sp, #0]
100029ce:	ea40 1101 	orr.w	r1, r0, r1, lsl #4
100029d2:	487a      	ldr	r0, [pc, #488]	; (10002bbc <DramInit+0x2fc>)
100029d4:	ea41 2145 	orr.w	r1, r1, r5, lsl #9
100029d8:	6001      	str	r1, [r0, #0]
100029da:	6ad9      	ldr	r1, [r3, #44]	; 0x2c
100029dc:	6a1d      	ldr	r5, [r3, #32]
100029de:	6998      	ldr	r0, [r3, #24]
100029e0:	fbb1 f1f2 	udiv	r1, r1, r2
100029e4:	68df      	ldr	r7, [r3, #12]
100029e6:	fbb5 fcf2 	udiv	ip, r5, r2
100029ea:	fbb0 f0f2 	udiv	r0, r0, r2
100029ee:	6b1d      	ldr	r5, [r3, #48]	; 0x30
100029f0:	fbb7 f7f4 	udiv	r7, r7, r4
100029f4:	fbb5 f8f4 	udiv	r8, r5, r4
100029f8:	4c71      	ldr	r4, [pc, #452]	; (10002bc0 <DramInit+0x300>)
100029fa:	3101      	adds	r1, #1
100029fc:	4625      	mov	r5, r4
100029fe:	038e      	lsls	r6, r1, #14
10002a00:	f10c 0103 	add.w	r1, ip, #3
10002a04:	ea46 4141 	orr.w	r1, r6, r1, lsl #17
10002a08:	3001      	adds	r0, #1
10002a0a:	4308      	orrs	r0, r1
10002a0c:	1c7a      	adds	r2, r7, #1
10002a0e:	ea40 2182 	orr.w	r1, r0, r2, lsl #10
10002a12:	f108 0201 	add.w	r2, r8, #1
10002a16:	ea41 1202 	orr.w	r2, r1, r2, lsl #4
10002a1a:	496a      	ldr	r1, [pc, #424]	; (10002bc4 <DramInit+0x304>)
10002a1c:	ea42 520e 	orr.w	r2, r2, lr, lsl #20
10002a20:	600a      	str	r2, [r1, #0]
10002a22:	6a5b      	ldr	r3, [r3, #36]	; 0x24
10002a24:	4e68      	ldr	r6, [pc, #416]	; (10002bc8 <DramInit+0x308>)
10002a26:	015b      	lsls	r3, r3, #5
10002a28:	f043 0302 	orr.w	r3, r3, #2
10002a2c:	f44f 60e0 	mov.w	r0, #1792	; 0x700
10002a30:	2201      	movs	r2, #1
10002a32:	6033      	str	r3, [r6, #0]
10002a34:	f841 0c0c 	str.w	r0, [r1, #-12]
10002a38:	6022      	str	r2, [r4, #0]
10002a3a:	682b      	ldr	r3, [r5, #0]
10002a3c:	07db      	lsls	r3, r3, #31
10002a3e:	d5fc      	bpl.n	10002a3a <DramInit+0x17a>
10002a40:	4b62      	ldr	r3, [pc, #392]	; (10002bcc <DramInit+0x30c>)
10002a42:	f44f 62c0 	mov.w	r2, #1536	; 0x600
10002a46:	601a      	str	r2, [r3, #0]
10002a48:	b007      	add	sp, #28
10002a4a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10002a4e:	46d9      	mov	r9, fp
10002a50:	4f5f      	ldr	r7, [pc, #380]	; (10002bd0 <DramInit+0x310>)
10002a52:	6845      	ldr	r5, [r0, #4]
10002a54:	fba7 c70e 	umull	ip, r7, r7, lr
10002a58:	6829      	ldr	r1, [r5, #0]
10002a5a:	2900      	cmp	r1, #0
10002a5c:	ea4f 0197 	mov.w	r1, r7, lsr #2
10002a60:	68af      	ldr	r7, [r5, #8]
10002a62:	eb01 0841 	add.w	r8, r1, r1, lsl #1
10002a66:	6869      	ldr	r1, [r5, #4]
10002a68:	ebae 0e48 	sub.w	lr, lr, r8, lsl #1
10002a6c:	ea4f 1807 	mov.w	r8, r7, lsl #4
10002a70:	696d      	ldr	r5, [r5, #20]
10002a72:	ea48 01c1 	orr.w	r1, r8, r1, lsl #3
10002a76:	f10e 3eff 	add.w	lr, lr, #4294967295	; 0xffffffff
10002a7a:	ea41 2e4e 	orr.w	lr, r1, lr, lsl #9
10002a7e:	bf14      	ite	ne
10002a80:	f04f 0c03 	movne.w	ip, #3
10002a84:	f04f 0c02 	moveq.w	ip, #2
10002a88:	eb07 0105 	add.w	r1, r7, r5
10002a8c:	ea4e 050c 	orr.w	r5, lr, ip
10002a90:	9501      	str	r5, [sp, #4]
10002a92:	bf14      	ite	ne
10002a94:	2540      	movne	r5, #64	; 0x40
10002a96:	2500      	moveq	r5, #0
10002a98:	9502      	str	r5, [sp, #8]
10002a9a:	f04f 0500 	mov.w	r5, #0
10002a9e:	9704      	str	r7, [sp, #16]
10002aa0:	f101 31ff 	add.w	r1, r1, #4294967295	; 0xffffffff
10002aa4:	bf14      	ite	ne
10002aa6:	f04f 0e06 	movne.w	lr, #6
10002aaa:	f04f 0e04 	moveq.w	lr, #4
10002aae:	9503      	str	r5, [sp, #12]
10002ab0:	9d04      	ldr	r5, [sp, #16]
10002ab2:	3903      	subs	r1, #3
10002ab4:	f1a5 0c04 	sub.w	ip, r5, #4
10002ab8:	e736      	b.n	10002928 <DramInit+0x68>
10002aba:	f8d0 c004 	ldr.w	ip, [r0, #4]
10002abe:	f8dc 1000 	ldr.w	r1, [ip]
10002ac2:	f8dc a008 	ldr.w	sl, [ip, #8]
10002ac6:	2900      	cmp	r1, #0
10002ac8:	bf14      	ite	ne
10002aca:	2140      	movne	r1, #64	; 0x40
10002acc:	2100      	moveq	r1, #0
10002ace:	9102      	str	r1, [sp, #8]
10002ad0:	bf14      	ite	ne
10002ad2:	2100      	movne	r1, #0
10002ad4:	2102      	moveq	r1, #2
10002ad6:	9101      	str	r1, [sp, #4]
10002ad8:	f8dc 1014 	ldr.w	r1, [ip, #20]
10002adc:	f01a 0f01 	tst.w	sl, #1
10002ae0:	ea4f 085a 	mov.w	r8, sl, lsr #1
10002ae4:	bf14      	ite	ne
10002ae6:	f108 090c 	addne.w	r9, r8, #12
10002aea:	f108 0904 	addeq.w	r9, r8, #4
10002aee:	2901      	cmp	r1, #1
10002af0:	d050      	beq.n	10002b94 <DramInit+0x2d4>
10002af2:	2902      	cmp	r1, #2
10002af4:	bf14      	ite	ne
10002af6:	2100      	movne	r1, #0
10002af8:	f06f 0101 	mvneq.w	r1, #1
10002afc:	eb09 0701 	add.w	r7, r9, r1
10002b00:	9704      	str	r7, [sp, #16]
10002b02:	f8dc 7018 	ldr.w	r7, [ip, #24]
10002b06:	f1be 0f10 	cmp.w	lr, #16
10002b0a:	f107 0705 	add.w	r7, r7, #5
10002b0e:	4439      	add	r1, r7
10002b10:	f8dc 7018 	ldr.w	r7, [ip, #24]
10002b14:	ea4f 07c7 	mov.w	r7, r7, lsl #3
10002b18:	9703      	str	r7, [sp, #12]
10002b1a:	d03e      	beq.n	10002b9a <DramInit+0x2da>
10002b1c:	f1be 0f09 	cmp.w	lr, #9
10002b20:	bf8a      	itet	hi
10002b22:	3502      	addhi	r5, #2
10002b24:	3d03      	subls	r5, #3
10002b26:	086d      	lsrhi	r5, r5, #1
10002b28:	026d      	lsls	r5, r5, #9
10002b2a:	9505      	str	r5, [sp, #20]
10002b2c:	ea4f 0a8a 	mov.w	sl, sl, lsl #2
10002b30:	f00a 0a04 	and.w	sl, sl, #4
10002b34:	f8dc 5004 	ldr.w	r5, [ip, #4]
10002b38:	9f01      	ldr	r7, [sp, #4]
10002b3a:	ea4a 1a08 	orr.w	sl, sl, r8, lsl #4
10002b3e:	ea4a 05c5 	orr.w	r5, sl, r5, lsl #3
10002b42:	433d      	orrs	r5, r7
10002b44:	f109 0e06 	add.w	lr, r9, #6
10002b48:	9f05      	ldr	r7, [sp, #20]
10002b4a:	ebc1 0e0e 	rsb	lr, r1, lr
10002b4e:	432f      	orrs	r7, r5
10002b50:	f01e 0f01 	tst.w	lr, #1
10002b54:	9701      	str	r7, [sp, #4]
10002b56:	d023      	beq.n	10002ba0 <DramInit+0x2e0>
10002b58:	9d04      	ldr	r5, [sp, #16]
10002b5a:	f10e 0e01 	add.w	lr, lr, #1
10002b5e:	fbbe fef2 	udiv	lr, lr, r2
10002b62:	3903      	subs	r1, #3
10002b64:	f1a5 0c04 	sub.w	ip, r5, #4
10002b68:	f04f 0903 	mov.w	r9, #3
10002b6c:	e6de      	b.n	1000292c <DramInit+0x6c>
10002b6e:	6841      	ldr	r1, [r0, #4]
10002b70:	680f      	ldr	r7, [r1, #0]
10002b72:	684d      	ldr	r5, [r1, #4]
10002b74:	2f00      	cmp	r7, #0
10002b76:	bf14      	ite	ne
10002b78:	2133      	movne	r1, #51	; 0x33
10002b7a:	2122      	moveq	r1, #34	; 0x22
10002b7c:	ea41 01c5 	orr.w	r1, r1, r5, lsl #3
10002b80:	9101      	str	r1, [sp, #4]
10002b82:	bf15      	itete	ne
10002b84:	2140      	movne	r1, #64	; 0x40
10002b86:	2100      	moveq	r1, #0
10002b88:	f04f 3cff 	movne.w	ip, #4294967295	; 0xffffffff
10002b8c:	f06f 0c01 	mvneq.w	ip, #1
10002b90:	9102      	str	r1, [sp, #8]
10002b92:	e6c1      	b.n	10002918 <DramInit+0x58>
10002b94:	f04f 31ff 	mov.w	r1, #4294967295	; 0xffffffff
10002b98:	e7b0      	b.n	10002afc <DramInit+0x23c>
10002b9a:	2500      	movs	r5, #0
10002b9c:	9505      	str	r5, [sp, #20]
10002b9e:	e7c5      	b.n	10002b2c <DramInit+0x26c>
10002ba0:	f04f 0903 	mov.w	r9, #3
10002ba4:	e784      	b.n	10002ab0 <DramInit+0x1f0>
10002ba6:	bf00      	nop
10002ba8:	40005224 	.word	0x40005224
10002bac:	40005028 	.word	0x40005028
10002bb0:	40005024 	.word	0x40005024
10002bb4:	40005020 	.word	0x40005020
10002bb8:	40005010 	.word	0x40005010
10002bbc:	40005014 	.word	0x40005014
10002bc0:	40005000 	.word	0x40005000
10002bc4:	40005018 	.word	0x40005018
10002bc8:	4000501c 	.word	0x4000501c
10002bcc:	4000500c 	.word	0x4000500c
10002bd0:	aaaaaaab 	.word	0xaaaaaaab
10002bd4:	40005004 	.word	0x40005004
10002bd8:	40005008 	.word	0x40005008

10002bdc <Sdr_Rand2>:
10002bdc:	f243 0239 	movw	r2, #12345	; 0x3039
10002be0:	b5f0      	push	{r4, r5, r6, r7, lr}
10002be2:	480e      	ldr	r0, [pc, #56]	; (10002c1c <Sdr_Rand2+0x40>)
10002be4:	4f0e      	ldr	r7, [pc, #56]	; (10002c20 <Sdr_Rand2+0x44>)
10002be6:	6804      	ldr	r4, [r0, #0]
10002be8:	6839      	ldr	r1, [r7, #0]
10002bea:	4e0e      	ldr	r6, [pc, #56]	; (10002c24 <Sdr_Rand2+0x48>)
10002bec:	4b0e      	ldr	r3, [pc, #56]	; (10002c28 <Sdr_Rand2+0x4c>)
10002bee:	2500      	movs	r5, #0
10002bf0:	fbe3 4501 	umlal	r4, r5, r3, r1
10002bf4:	f8df e038 	ldr.w	lr, [pc, #56]	; 10002c30 <Sdr_Rand2+0x54>
10002bf8:	6833      	ldr	r3, [r6, #0]
10002bfa:	490c      	ldr	r1, [pc, #48]	; (10002c2c <Sdr_Rand2+0x50>)
10002bfc:	fb0e 2203 	mla	r2, lr, r3, r2
10002c00:	680b      	ldr	r3, [r1, #0]
10002c02:	6005      	str	r5, [r0, #0]
10002c04:	ea83 3343 	eor.w	r3, r3, r3, lsl #13
10002c08:	ea83 4353 	eor.w	r3, r3, r3, lsr #17
10002c0c:	ea83 1343 	eor.w	r3, r3, r3, lsl #5
10002c10:	1910      	adds	r0, r2, r4
10002c12:	603c      	str	r4, [r7, #0]
10002c14:	6032      	str	r2, [r6, #0]
10002c16:	4418      	add	r0, r3
10002c18:	600b      	str	r3, [r1, #0]
10002c1a:	bdf0      	pop	{r4, r5, r6, r7, pc}
10002c1c:	1000408c 	.word	0x1000408c
10002c20:	10004084 	.word	0x10004084
10002c24:	10000bf0 	.word	0x10000bf0
10002c28:	29a65ead 	.word	0x29a65ead
10002c2c:	10004088 	.word	0x10004088
10002c30:	00010dcd 	.word	0x00010dcd

10002c34 <MemTest>:
10002c34:	b570      	push	{r4, r5, r6, lr}
10002c36:	f242 7610 	movw	r6, #10000	; 0x2710
10002c3a:	b082      	sub	sp, #8
10002c3c:	2500      	movs	r5, #0
10002c3e:	e002      	b.n	10002c46 <MemTest+0x12>
10002c40:	3501      	adds	r5, #1
10002c42:	42b5      	cmp	r5, r6
10002c44:	d013      	beq.n	10002c6e <MemTest+0x3a>
10002c46:	f7ff ffc9 	bl	10002bdc <Sdr_Rand2>
10002c4a:	4604      	mov	r4, r0
10002c4c:	f7ff ffc6 	bl	10002bdc <Sdr_Rand2>
10002c50:	4a0d      	ldr	r2, [pc, #52]	; (10002c88 <MemTest+0x54>)
10002c52:	4002      	ands	r2, r0
10002c54:	f102 5340 	add.w	r3, r2, #805306368	; 0x30000000
10002c58:	601c      	str	r4, [r3, #0]
10002c5a:	6819      	ldr	r1, [r3, #0]
10002c5c:	428c      	cmp	r4, r1
10002c5e:	d0ef      	beq.n	10002c40 <MemTest+0xc>
10002c60:	490a      	ldr	r1, [pc, #40]	; (10002c8c <MemTest+0x58>)
10002c62:	6808      	ldr	r0, [r1, #0]
10002c64:	f010 4080 	ands.w	r0, r0, #1073741824	; 0x40000000
10002c68:	d104      	bne.n	10002c74 <MemTest+0x40>
10002c6a:	b002      	add	sp, #8
10002c6c:	bd70      	pop	{r4, r5, r6, pc}
10002c6e:	2001      	movs	r0, #1
10002c70:	b002      	add	sp, #8
10002c72:	bd70      	pop	{r4, r5, r6, pc}
10002c74:	6819      	ldr	r1, [r3, #0]
10002c76:	4806      	ldr	r0, [pc, #24]	; (10002c90 <MemTest+0x5c>)
10002c78:	4623      	mov	r3, r4
10002c7a:	9100      	str	r1, [sp, #0]
10002c7c:	4c05      	ldr	r4, [pc, #20]	; (10002c94 <MemTest+0x60>)
10002c7e:	4629      	mov	r1, r5
10002c80:	47a0      	blx	r4
10002c82:	2000      	movs	r0, #0
10002c84:	e7f1      	b.n	10002c6a <MemTest+0x36>
10002c86:	bf00      	nop
10002c88:	001ffffc 	.word	0x001ffffc
10002c8c:	10000314 	.word	0x10000314
10002c90:	100033f8 	.word	0x100033f8
10002c94:	0000f39d 	.word	0x0000f39d

10002c98 <SdrCalibration>:
10002c98:	2100      	movs	r1, #0
10002c9a:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
10002c9e:	460f      	mov	r7, r1
10002ca0:	4864      	ldr	r0, [pc, #400]	; (10002e34 <SdrCalibration+0x19c>)
10002ca2:	b085      	sub	sp, #20
10002ca4:	6803      	ldr	r3, [r0, #0]
10002ca6:	f44f 5280 	mov.w	r2, #4096	; 0x1000
10002caa:	f043 0302 	orr.w	r3, r3, #2
10002cae:	6003      	str	r3, [r0, #0]
10002cb0:	4861      	ldr	r0, [pc, #388]	; (10002e38 <SdrCalibration+0x1a0>)
10002cb2:	4b62      	ldr	r3, [pc, #392]	; (10002e3c <SdrCalibration+0x1a4>)
10002cb4:	4798      	blx	r3
10002cb6:	46ba      	mov	sl, r7
10002cb8:	f8df b1a8 	ldr.w	fp, [pc, #424]	; 10002e64 <SdrCalibration+0x1cc>
10002cbc:	4e60      	ldr	r6, [pc, #384]	; (10002e40 <SdrCalibration+0x1a8>)
10002cbe:	4b61      	ldr	r3, [pc, #388]	; (10002e44 <SdrCalibration+0x1ac>)
10002cc0:	ea4f 220a 	mov.w	r2, sl, lsl #8
10002cc4:	681b      	ldr	r3, [r3, #0]
10002cc6:	495f      	ldr	r1, [pc, #380]	; (10002e44 <SdrCalibration+0x1ac>)
10002cc8:	b2db      	uxtb	r3, r3
10002cca:	4313      	orrs	r3, r2
10002ccc:	600b      	str	r3, [r1, #0]
10002cce:	f8db 3000 	ldr.w	r3, [fp]
10002cd2:	005c      	lsls	r4, r3, #1
10002cd4:	f100 809b 	bmi.w	10002e0e <SdrCalibration+0x176>
10002cd8:	f04f 0800 	mov.w	r8, #0
10002cdc:	4645      	mov	r5, r8
10002cde:	2401      	movs	r4, #1
10002ce0:	e004      	b.n	10002cec <SdrCalibration+0x54>
10002ce2:	2f00      	cmp	r7, #0
10002ce4:	d154      	bne.n	10002d90 <SdrCalibration+0xf8>
10002ce6:	3401      	adds	r4, #1
10002ce8:	2c0e      	cmp	r4, #14
10002cea:	d040      	beq.n	10002d6e <SdrCalibration+0xd6>
10002cec:	6833      	ldr	r3, [r6, #0]
10002cee:	f104 39ff 	add.w	r9, r4, #4294967295	; 0xffffffff
10002cf2:	ea4f 4209 	mov.w	r2, r9, lsl #16
10002cf6:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
10002cfa:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
10002cfe:	4313      	orrs	r3, r2
10002d00:	6033      	str	r3, [r6, #0]
10002d02:	f8db 3000 	ldr.w	r3, [fp]
10002d06:	0058      	lsls	r0, r3, #1
10002d08:	d43c      	bmi.n	10002d84 <SdrCalibration+0xec>
10002d0a:	f7ff ff93 	bl	10002c34 <MemTest>
10002d0e:	2801      	cmp	r0, #1
10002d10:	d1e7      	bne.n	10002ce2 <SdrCalibration+0x4a>
10002d12:	f1b8 0f00 	cmp.w	r8, #0
10002d16:	d109      	bne.n	10002d2c <SdrCalibration+0x94>
10002d18:	f8db 3000 	ldr.w	r3, [fp]
10002d1c:	0059      	lsls	r1, r3, #1
10002d1e:	d467      	bmi.n	10002df0 <SdrCalibration+0x158>
10002d20:	ab04      	add	r3, sp, #16
10002d22:	eb03 0387 	add.w	r3, r3, r7, lsl #2
10002d26:	f843 ac08 	str.w	sl, [r3, #-8]
10002d2a:	3701      	adds	r7, #1
10002d2c:	1e7b      	subs	r3, r7, #1
10002d2e:	4a46      	ldr	r2, [pc, #280]	; (10002e48 <SdrCalibration+0x1b0>)
10002d30:	eb05 2143 	add.w	r1, r5, r3, lsl #9
10002d34:	a804      	add	r0, sp, #16
10002d36:	eb00 0383 	add.w	r3, r0, r3, lsl #2
10002d3a:	3501      	adds	r5, #1
10002d3c:	eb02 0281 	add.w	r2, r2, r1, lsl #2
10002d40:	2c0b      	cmp	r4, #11
10002d42:	f843 5c10 	str.w	r5, [r3, #-16]
10002d46:	f8c2 9004 	str.w	r9, [r2, #4]
10002d4a:	d810      	bhi.n	10002d6e <SdrCalibration+0xd6>
10002d4c:	f8db 3000 	ldr.w	r3, [fp]
10002d50:	005a      	lsls	r2, r3, #1
10002d52:	bf58      	it	pl
10002d54:	f04f 0801 	movpl.w	r8, #1
10002d58:	d5c5      	bpl.n	10002ce6 <SdrCalibration+0x4e>
10002d5a:	464a      	mov	r2, r9
10002d5c:	4651      	mov	r1, sl
10002d5e:	483b      	ldr	r0, [pc, #236]	; (10002e4c <SdrCalibration+0x1b4>)
10002d60:	4b3b      	ldr	r3, [pc, #236]	; (10002e50 <SdrCalibration+0x1b8>)
10002d62:	3401      	adds	r4, #1
10002d64:	4798      	blx	r3
10002d66:	2c0e      	cmp	r4, #14
10002d68:	f04f 0801 	mov.w	r8, #1
10002d6c:	d1be      	bne.n	10002cec <SdrCalibration+0x54>
10002d6e:	2f02      	cmp	r7, #2
10002d70:	d811      	bhi.n	10002d96 <SdrCalibration+0xfe>
10002d72:	f10a 0a01 	add.w	sl, sl, #1
10002d76:	f1ba 0f08 	cmp.w	sl, #8
10002d7a:	d1a0      	bne.n	10002cbe <SdrCalibration+0x26>
10002d7c:	2000      	movs	r0, #0
10002d7e:	b005      	add	sp, #20
10002d80:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10002d84:	6831      	ldr	r1, [r6, #0]
10002d86:	464a      	mov	r2, r9
10002d88:	4b31      	ldr	r3, [pc, #196]	; (10002e50 <SdrCalibration+0x1b8>)
10002d8a:	4832      	ldr	r0, [pc, #200]	; (10002e54 <SdrCalibration+0x1bc>)
10002d8c:	4798      	blx	r3
10002d8e:	e7bc      	b.n	10002d0a <SdrCalibration+0x72>
10002d90:	1c7b      	adds	r3, r7, #1
10002d92:	2b02      	cmp	r3, #2
10002d94:	d931      	bls.n	10002dfa <SdrCalibration+0x162>
10002d96:	9a00      	ldr	r2, [sp, #0]
10002d98:	9901      	ldr	r1, [sp, #4]
10002d9a:	f8db 0000 	ldr.w	r0, [fp]
10002d9e:	428a      	cmp	r2, r1
10002da0:	bf8c      	ite	hi
10002da2:	2300      	movhi	r3, #0
10002da4:	2301      	movls	r3, #1
10002da6:	aa04      	add	r2, sp, #16
10002da8:	eb02 0183 	add.w	r1, r2, r3, lsl #2
10002dac:	f851 2c10 	ldr.w	r2, [r1, #-16]
10002db0:	0040      	lsls	r0, r0, #1
10002db2:	ea4f 0252 	mov.w	r2, r2, lsr #1
10002db6:	d42f      	bmi.n	10002e18 <SdrCalibration+0x180>
10002db8:	f851 6c08 	ldr.w	r6, [r1, #-8]
10002dbc:	4f22      	ldr	r7, [pc, #136]	; (10002e48 <SdrCalibration+0x1b0>)
10002dbe:	b2d5      	uxtb	r5, r2
10002dc0:	025c      	lsls	r4, r3, #9
10002dc2:	4920      	ldr	r1, [pc, #128]	; (10002e44 <SdrCalibration+0x1ac>)
10002dc4:	1962      	adds	r2, r4, r5
10002dc6:	680b      	ldr	r3, [r1, #0]
10002dc8:	eb07 0282 	add.w	r2, r7, r2, lsl #2
10002dcc:	b2db      	uxtb	r3, r3
10002dce:	ea43 2306 	orr.w	r3, r3, r6, lsl #8
10002dd2:	600b      	str	r3, [r1, #0]
10002dd4:	491a      	ldr	r1, [pc, #104]	; (10002e40 <SdrCalibration+0x1a8>)
10002dd6:	6852      	ldr	r2, [r2, #4]
10002dd8:	680b      	ldr	r3, [r1, #0]
10002dda:	0412      	lsls	r2, r2, #16
10002ddc:	f402 027f 	and.w	r2, r2, #16711680	; 0xff0000
10002de0:	f423 037f 	bic.w	r3, r3, #16711680	; 0xff0000
10002de4:	4313      	orrs	r3, r2
10002de6:	2001      	movs	r0, #1
10002de8:	600b      	str	r3, [r1, #0]
10002dea:	b005      	add	sp, #20
10002dec:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
10002df0:	4639      	mov	r1, r7
10002df2:	4b17      	ldr	r3, [pc, #92]	; (10002e50 <SdrCalibration+0x1b8>)
10002df4:	4818      	ldr	r0, [pc, #96]	; (10002e58 <SdrCalibration+0x1c0>)
10002df6:	4798      	blx	r3
10002df8:	e792      	b.n	10002d20 <SdrCalibration+0x88>
10002dfa:	aa04      	add	r2, sp, #16
10002dfc:	eb02 0287 	add.w	r2, r2, r7, lsl #2
10002e00:	2100      	movs	r1, #0
10002e02:	f842 ac08 	str.w	sl, [r2, #-8]
10002e06:	461f      	mov	r7, r3
10002e08:	f842 1c10 	str.w	r1, [r2, #-16]
10002e0c:	e7b1      	b.n	10002d72 <SdrCalibration+0xda>
10002e0e:	6809      	ldr	r1, [r1, #0]
10002e10:	4b0f      	ldr	r3, [pc, #60]	; (10002e50 <SdrCalibration+0x1b8>)
10002e12:	4812      	ldr	r0, [pc, #72]	; (10002e5c <SdrCalibration+0x1c4>)
10002e14:	4798      	blx	r3
10002e16:	e75f      	b.n	10002cd8 <SdrCalibration+0x40>
10002e18:	b2d5      	uxtb	r5, r2
10002e1a:	025c      	lsls	r4, r3, #9
10002e1c:	4f0a      	ldr	r7, [pc, #40]	; (10002e48 <SdrCalibration+0x1b0>)
10002e1e:	f851 6c08 	ldr.w	r6, [r1, #-8]
10002e22:	1963      	adds	r3, r4, r5
10002e24:	eb07 0383 	add.w	r3, r7, r3, lsl #2
10002e28:	685a      	ldr	r2, [r3, #4]
10002e2a:	4631      	mov	r1, r6
10002e2c:	4b08      	ldr	r3, [pc, #32]	; (10002e50 <SdrCalibration+0x1b8>)
10002e2e:	480c      	ldr	r0, [pc, #48]	; (10002e60 <SdrCalibration+0x1c8>)
10002e30:	4798      	blx	r3
10002e32:	e7c6      	b.n	10002dc2 <SdrCalibration+0x12a>
10002e34:	40000040 	.word	0x40000040
10002e38:	10000bf4 	.word	0x10000bf4
10002e3c:	0000f511 	.word	0x0000f511
10002e40:	40000300 	.word	0x40000300
10002e44:	40005008 	.word	0x40005008
10002e48:	10000bf0 	.word	0x10000bf0
10002e4c:	10003470 	.word	0x10003470
10002e50:	0000f39d 	.word	0x0000f39d
10002e54:	10003444 	.word	0x10003444
10002e58:	10003460 	.word	0x10003460
10002e5c:	10003428 	.word	0x10003428
10002e60:	10003498 	.word	0x10003498
10002e64:	10000314 	.word	0x10000314

10002e68 <SdrControllerInit>:
10002e68:	4b1a      	ldr	r3, [pc, #104]	; (10002ed4 <SdrControllerInit+0x6c>)
10002e6a:	b510      	push	{r4, lr}
10002e6c:	681b      	ldr	r3, [r3, #0]
10002e6e:	005b      	lsls	r3, r3, #1
10002e70:	d42b      	bmi.n	10002eca <SdrControllerInit+0x62>
10002e72:	4919      	ldr	r1, [pc, #100]	; (10002ed8 <SdrControllerInit+0x70>)
10002e74:	4a19      	ldr	r2, [pc, #100]	; (10002edc <SdrControllerInit+0x74>)
10002e76:	680b      	ldr	r3, [r1, #0]
10002e78:	4c19      	ldr	r4, [pc, #100]	; (10002ee0 <SdrControllerInit+0x78>)
10002e7a:	f023 0307 	bic.w	r3, r3, #7
10002e7e:	f043 0302 	orr.w	r3, r3, #2
10002e82:	600b      	str	r3, [r1, #0]
10002e84:	6813      	ldr	r3, [r2, #0]
10002e86:	2100      	movs	r1, #0
10002e88:	f423 6340 	bic.w	r3, r3, #3072	; 0xc00
10002e8c:	4815      	ldr	r0, [pc, #84]	; (10002ee4 <SdrControllerInit+0x7c>)
10002e8e:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
10002e92:	6013      	str	r3, [r2, #0]
10002e94:	6021      	str	r1, [r4, #0]
10002e96:	6803      	ldr	r3, [r0, #0]
10002e98:	2201      	movs	r2, #1
10002e9a:	f443 6380 	orr.w	r3, r3, #1024	; 0x400
10002e9e:	6003      	str	r3, [r0, #0]
10002ea0:	6803      	ldr	r3, [r0, #0]
10002ea2:	f443 6300 	orr.w	r3, r3, #2048	; 0x800
10002ea6:	6003      	str	r3, [r0, #0]
10002ea8:	20c8      	movs	r0, #200	; 0xc8
10002eaa:	f000 fbad 	bl	10003608 <__HalPinCtrlRtl8195A_veneer>
10002eae:	4a0e      	ldr	r2, [pc, #56]	; (10002ee8 <SdrControllerInit+0x80>)
10002eb0:	480e      	ldr	r0, [pc, #56]	; (10002eec <SdrControllerInit+0x84>)
10002eb2:	6813      	ldr	r3, [r2, #0]
10002eb4:	f043 0340 	orr.w	r3, r3, #64	; 0x40
10002eb8:	6013      	str	r3, [r2, #0]
10002eba:	f7ff fd01 	bl	100028c0 <DramInit>
10002ebe:	f7ff feeb 	bl	10002c98 <SdrCalibration>
10002ec2:	3000      	adds	r0, #0
10002ec4:	bf18      	it	ne
10002ec6:	2001      	movne	r0, #1
10002ec8:	bd10      	pop	{r4, pc}
10002eca:	4b09      	ldr	r3, [pc, #36]	; (10002ef0 <SdrControllerInit+0x88>)
10002ecc:	4809      	ldr	r0, [pc, #36]	; (10002ef4 <SdrControllerInit+0x8c>)
10002ece:	4798      	blx	r3
10002ed0:	e7cf      	b.n	10002e72 <SdrControllerInit+0xa>
10002ed2:	bf00      	nop
10002ed4:	10000314 	.word	0x10000314
10002ed8:	40000304 	.word	0x40000304
10002edc:	40000250 	.word	0x40000250
10002ee0:	40000340 	.word	0x40000340
10002ee4:	40000230 	.word	0x40000230
10002ee8:	40000210 	.word	0x40000210
10002eec:	10001bf4 	.word	0x10001bf4
10002ef0:	0000f39d 	.word	0x0000f39d
10002ef4:	100034c0 	.word	0x100034c0

10002ef8 <_GPIO_SWPORT_DR_TBL>:
10002ef8:	50180c00                                         ...

10002efb <_GPIO_EXT_PORT_TBL>:
10002efb:	00585450 53595300                                PTX..

10002f00 <__func__.7450>:
10002f00:	43535953 6c437570 6e6f436b 00676966     SYSCpuClkConfig.
10002f10:	50535b0d 49204649 255d666e 78302873     .[SPIF Inf]%s(0x
10002f20:	0a297825 00000000 3d3d3d0d 45203d3d     %x)......===== E
10002f30:	7265746e 616d4920 31206567 3d3d3d20     nter Image 1 ===
10002f40:	00000a3d 616d490d 20326567 676e656c     =....Image2 leng
10002f50:	203a6874 202c6425 67616d49 64412065     th: %d, Image Ad
10002f60:	203a7264 30257830 000a7838 206f4e0d     dr: 0x%08x...No 
10002f70:	67616d49 0d0a3365 00000000 616d490d     Image3.......Ima
10002f80:	20336567 676e656c 203a6874 78257830     ge3 length: 0x%x
10002f90:	6d49202c 33656761 64644120 30203a72     , Image3 Addr: 0
10002fa0:	0a782578 00000000 676d490d 69532032     x%x......Img2 Si
10002fb0:	203a6e67 202c7325 61666e49 72617453     gn: %s, InfaStar
10002fc0:	20402074 30257830 000a7838 574b5452     t @ 0x%08x..RTKW
10002fd0:	00006e69 766e490d 64696c61 616d4920     in...Invalid Ima
10002fe0:	20326567 6e676953 72757461 00000a65     ge2 Signature...
10002ff0:	3d3d3d0d 3d3d3d3d 3d3d3d3d 3d3d3d3d     .===============
10003000:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
10003010:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
10003020:	3d3d3d3d 3d3d3d3d 0a0a3d3d 00000000     ==========......
10003030:	6975420d 5420646c 3a656d69 31303220     .Build Time: 201
10003040:	31302f35 2d30312f 353a3731 39333a32     5/01/10-17:52:39
10003050:	0000000a 6975420d 4120646c 6f687475     .....Build Autho
10003060:	72203a72 0a746f6f 00000000 6975420d     r: root......Bui
10003070:	4820646c 3a74736f 43545220 3931334e     ld Host: RTCN319
10003080:	34502d32 000a5635 6975420d 5420646c     2-P45V...Build T
10003090:	436c6f6f 6e696168 72655620 6e6f6973     oolChain Version
100030a0:	6367203a 65762063 6f697372 2e34206e     : gcc version 4.
100030b0:	20332e38 61655228 6b65746c 44534120     8.3 (Realtek ASD
100030c0:	2e342d4b 70332e38 75422031 20646c69     K-4.8.3p1 Build 
100030d0:	33303032 0a0a2029 00000000 3d3d3d0d     2003) .......===
100030e0:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
100030f0:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
10003100:	3d3d3d3d 3d3d3d3d 3d3d3d3d 3d3d3d3d     ================
10003110:	3d3d3d3d 000a3d3d 3d3d3d0d 45203d3d     ======...===== E
10003120:	7265746e 616d4920 32206567 3d3d3d20     nter Image 2 ===
10003130:	00000a3d                                =...

10003134 <__func__.7531>:
10003134:	63697053 46746547 6873616c 74617453     SpicGetFlashStat
10003144:	65527375 656e6966 6c745264 35393138     usRefinedRtl8195
10003154:	00000041                                A...

10003158 <__func__.7437>:
10003158:	63697053 6d437854 74695764 74614468     SpicTxCmdWithDat
10003168:	6c745261 35393138 00000041 4950530d     aRtl8195A....SPI
10003178:	6c616320 61726269 6e6f6974 0000000a      calibration....
10003188:	6e69460d 68742064 76612065 62616961     .Find the avaiab
10003198:	7720656c 6f646e69 00000a77 7561420d     le window....Bau
100031a8:	78253a64 7561203b 6c5f6f74 74676e65     d:%x; auto_lengt
100031b8:	78253a68 6544203b 2079616c 72617473     h:%x; Delay star
100031c8:	78253a74 6544203b 2079616c 3a646e65     t:%x; Delay end:
100031d8:	000a7825 50535b0d 49204649 255d666e     %x...[SPIF Inf]%
100031e8:	78302873 202c7825 78257830 00000a29     s(0x%x, 0x%x)...
100031f8:	50535b0d 49204649 255d666e 78302873     .[SPIF Inf]%s(0x
10003208:	202c7825 78257830 7830202c 202c7825     %x, 0x%x, 0x%x, 
10003218:	78257830 00000a29 50535b0d 57204649     0x%x)....[SPIF W
10003228:	535d6e72 54636970 736e4978 6c745274     rn]SpicTxInstRtl
10003238:	35393138 44203a41 20617461 73616850     8195A: Data Phas
10003248:	654c2065 7420676e 42206f6f 25286769     e Leng too Big(%
10003258:	000a2964 0000000d 6172450d 43206573     d).......Erase C
10003268:	5320646d 000a7465 696e490d 6c616974     md Set...Initial
10003278:	69705320 6f462063 62207275 6d207469      Spic Four bit m
10003288:	0a65646f 00000000 206f4e0d 70707553     ode......No Supp
10003298:	2074726f 20495053 65646f4d 21212121     ort SPI Mode!!!!
100032a8:	21212121 0000000a 4950530d 6c616320     !!!!.....SPI cal
100032b8:	61726269 6e6f6974 69616620 6e61206c     ibration fail an
100032c8:	65722064 65766f63 6e6f2072 69622065     d recover one bi
100032d8:	6f6d2074 000a6564                       t mode..

100032e0 <__func__.7509>:
100032e0:	63697053 74696157 44706957 52656e6f     SpicWaitWipDoneR
100032f0:	6e696665 74526465 3931386c 00004135     efinedRtl8195A..

10003300 <__func__.7526>:
10003300:	63697053 6d437852 66655264 64656e69     SpicRxCmdRefined
10003310:	386c7452 41353931 00000000              Rtl8195A....

1000331c <__FUNCTION__.7401>:
1000331c:	5f4c4148 4f495047 6c75505f 7274436c     HAL_GPIO_PullCtr
1000332c:	0000006c                                l...

10003330 <__FUNCTION__.7414>:
10003330:	5f4c4148 4f495047 696e495f 00000074     HAL_GPIO_Init...

10003340 <__FUNCTION__.7418>:
10003340:	5f4c4148 4f495047 7172495f 696e495f     HAL_GPIO_Irq_Ini
10003350:	00000074 50475b0d 49204f49 255d666e     t....[GPIO Inf]%
10003360:	70203a73 303d6e69 20782578 65646f6d     s: pin=0x%x mode
10003370:	0a64253d 00000020 50475b0d 49204f49     =%d. ....[GPIO I
10003380:	255d666e 49203a73 6974696e 47206c61     nf]%s: Initial G
10003390:	204f4950 70616441 0a726574 00000020     PIO Adapter. ...
100033a0:	50475b0d 49204f49 255d666e 49203a73     .[GPIO Inf]%s: I
100033b0:	6974696e 47206c61 204f4950 20515249     nitial GPIO IRQ 
100033c0:	70616441 0a726574 00000020 50475b0d     Adapter. ....[GP
100033d0:	49204f49 255d666e 47203a73 284f4950     IO Inf]%s: GPIO(
100033e0:	656d616e 2578303d 6d282978 3d65646f     name=0x%x)(mode=
100033f0:	0a296425 00000020 7365540d 64252074     %d). ....Test %d
10003400:	6f4e203a 74616d20 61206863 20726464     : No match addr 
10003410:	78257830 203e3d20 78257830 203d2120     0x%x => 0x%x != 
10003420:	78257830 0000000a 434f490d 30203a52     0x%x.....IOCR: 0
10003430:	3b782578 69725720 203a6574 78257830     x%x; Write: 0x%x
10003440:	0000000a 594c440d 7830203a 203b7825     .....DLY: 0x%x; 
10003450:	74697257 30203a65 0a782578 00000000     Write: 0x%x.....
10003460:	2064250d 656d6954 73615020 00000a73     .%d Time Pass...
10003470:	7265560d 20796669 73736150 203e3d20     .Verify Pass => 
10003480:	69506452 253a6570 54203b64 6e437061     RdPipe:%d; TapCn
10003490:	25203a74 00000a64 6568540d 6e694620     t: %d....The Fin
100034a0:	206c6169 69506452 203a6570 203b6425     ial RdPipe: %d; 
100034b0:	6e437054 30203a74 0a782578 00000000     TpCnt: 0x%x.....
100034c0:	5244530d 6e6f4320 6c6f7274 2072656c     .SDR Controller 
100034d0:	74696e49 0000000a 204b3233 696c6143     Init....32K Cali
100034e0:	74617262 206e6f69 6c696146 000a2121     bration Fail!!..

100034f0 <GPIO_InPinMode>:
100034f0:	00010200                                ....

100034f4 <__func__.7678>:
100034f4:	6f697067 7465735f 00000000 732f2e2e     gpio_set....../s
10003504:	696c2f77 77732f62 62696c5f 65626d2f     w/lib/sw_lib/mbe
10003514:	61742f64 74656772 61682f73 74722f6c     d/targets/hal/rt
10003524:	3931386c 672f6135 5f6f6970 2e697061     l8195a/gpio_api.
10003534:	00000063 65737341 6f697472 25203a6e     c...Assertion: %
10003544:	73253a73 6425202c 0000000a              s:%s, %d....

10003550 <GPIO_SWPORT_DDR_TBL>:
10003550:	001c1004                                ....

10003554 <GPIO_SWPORT_DR_TBL>:
10003554:	00180c00                                ....

10003558 <GPIO_EXT_PORT_TBL>:
10003558:	00585450                                PTX.

1000355c <HAL_GPIO_Init>:
1000355c:	4b0f      	ldr	r3, [pc, #60]	; (1000359c <HAL_GPIO_Init+0x40>)
1000355e:	b510      	push	{r4, lr}
10003560:	681a      	ldr	r2, [r3, #0]
10003562:	4604      	mov	r4, r0
10003564:	b172      	cbz	r2, 10003584 <HAL_GPIO_Init+0x28>
10003566:	6860      	ldr	r0, [r4, #4]
10003568:	f000 011f 	and.w	r1, r0, #31
1000356c:	f3c0 1041 	ubfx	r0, r0, #5, #2
10003570:	f000 f842 	bl	100035f8 <__GPIO_GetChipPinName_8195a_veneer>
10003574:	2100      	movs	r1, #0
10003576:	f000 f837 	bl	100035e8 <__GPIO_PullCtrl_8195a_veneer>
1000357a:	4620      	mov	r0, r4
1000357c:	e8bd 4010 	ldmia.w	sp!, {r4, lr}
10003580:	f000 b81a 	b.w	100035b8 <__HAL_GPIO_Init_8195a_veneer>
10003584:	4a06      	ldr	r2, [pc, #24]	; (100035a0 <HAL_GPIO_Init+0x44>)
10003586:	4907      	ldr	r1, [pc, #28]	; (100035a4 <HAL_GPIO_Init+0x48>)
10003588:	6812      	ldr	r2, [r2, #0]
1000358a:	6019      	str	r1, [r3, #0]
1000358c:	0753      	lsls	r3, r2, #29
1000358e:	d5ea      	bpl.n	10003566 <HAL_GPIO_Init+0xa>
10003590:	4905      	ldr	r1, [pc, #20]	; (100035a8 <HAL_GPIO_Init+0x4c>)
10003592:	4b06      	ldr	r3, [pc, #24]	; (100035ac <HAL_GPIO_Init+0x50>)
10003594:	4806      	ldr	r0, [pc, #24]	; (100035b0 <HAL_GPIO_Init+0x54>)
10003596:	4798      	blx	r3
10003598:	e7e5      	b.n	10003566 <HAL_GPIO_Init+0xa>
1000359a:	bf00      	nop
1000359c:	10000354 	.word	0x10000354
100035a0:	10000310 	.word	0x10000310
100035a4:	10001cb0 	.word	0x10001cb0
100035a8:	10003330 	.word	0x10003330
100035ac:	0000f39d 	.word	0x0000f39d
100035b0:	10003378 	.word	0x10003378
100035b4:	00000000 	.word	0x00000000

100035b8 <__HAL_GPIO_Init_8195a_veneer>:
100035b8:	b401      	push	{r0}
100035ba:	4802      	ldr	r0, [pc, #8]	; (100035c4 <__HAL_GPIO_Init_8195a_veneer+0xc>)
100035bc:	4684      	mov	ip, r0
100035be:	bc01      	pop	{r0}
100035c0:	4760      	bx	ip
100035c2:	bf00      	nop
100035c4:	0000d805 	.word	0x0000d805

100035c8 <__HalCpuClkConfig_veneer>:
100035c8:	b401      	push	{r0}
100035ca:	4802      	ldr	r0, [pc, #8]	; (100035d4 <__HalCpuClkConfig_veneer+0xc>)
100035cc:	4684      	mov	ip, r0
100035ce:	bc01      	pop	{r0}
100035d0:	4760      	bx	ip
100035d2:	bf00      	nop
100035d4:	00000341 	.word	0x00000341

100035d8 <__HalDelayUs_veneer>:
100035d8:	b401      	push	{r0}
100035da:	4802      	ldr	r0, [pc, #8]	; (100035e4 <__HalDelayUs_veneer+0xc>)
100035dc:	4684      	mov	ip, r0
100035de:	bc01      	pop	{r0}
100035e0:	4760      	bx	ip
100035e2:	bf00      	nop
100035e4:	00000899 	.word	0x00000899

100035e8 <__GPIO_PullCtrl_8195a_veneer>:
100035e8:	b401      	push	{r0}
100035ea:	4802      	ldr	r0, [pc, #8]	; (100035f4 <__GPIO_PullCtrl_8195a_veneer+0xc>)
100035ec:	4684      	mov	ip, r0
100035ee:	bc01      	pop	{r0}
100035f0:	4760      	bx	ip
100035f2:	bf00      	nop
100035f4:	0000d39d 	.word	0x0000d39d

100035f8 <__GPIO_GetChipPinName_8195a_veneer>:
100035f8:	b401      	push	{r0}
100035fa:	4802      	ldr	r0, [pc, #8]	; (10003604 <__GPIO_GetChipPinName_8195a_veneer+0xc>)
100035fc:	4684      	mov	ip, r0
100035fe:	bc01      	pop	{r0}
10003600:	4760      	bx	ip
10003602:	bf00      	nop
10003604:	0000d331 	.word	0x0000d331

10003608 <__HalPinCtrlRtl8195A_veneer>:
10003608:	b401      	push	{r0}
1000360a:	4802      	ldr	r0, [pc, #8]	; (10003614 <__HalPinCtrlRtl8195A_veneer+0xc>)
1000360c:	4684      	mov	ip, r0
1000360e:	bc01      	pop	{r0}
10003610:	4760      	bx	ip
10003612:	bf00      	nop
10003614:	00002b39 	.word	0x00002b39

10003618 <__HalGetCpuClk_veneer>:
10003618:	b401      	push	{r0}
1000361a:	4802      	ldr	r0, [pc, #8]	; (10003624 <__HalGetCpuClk_veneer+0xc>)
1000361c:	4684      	mov	ip, r0
1000361e:	bc01      	pop	{r0}
10003620:	4760      	bx	ip
10003622:	bf00      	nop
10003624:	00000355 	.word	0x00000355

10003628 <__RtlConsolRom_veneer>:
10003628:	b401      	push	{r0}
1000362a:	4802      	ldr	r0, [pc, #8]	; (10003634 <__RtlConsolRom_veneer+0xc>)
1000362c:	4684      	mov	ip, r0
1000362e:	bc01      	pop	{r0}
10003630:	4760      	bx	ip
10003632:	bf00      	nop
10003634:	0000edcd 	.word	0x0000edcd

Disassembly of section .ram_image2.text:

10003650 <InfraStart>:
10003650:	b508      	push	{r3, lr}
10003652:	4b16      	ldr	r3, [pc, #88]	; (100036ac <__TMC_END__+0x5c>)
10003654:	681b      	ldr	r3, [r3, #0]
10003656:	005b      	lsls	r3, r3, #1
10003658:	d424      	bmi.n	100036a4 <InfraStart+0x54>
1000365a:	f000 fbdd 	bl	10003e18 <ShowRamBuildInfo>
1000365e:	4814      	ldr	r0, [pc, #80]	; (100036b0 <__TMC_END__+0x60>)
10003660:	4a14      	ldr	r2, [pc, #80]	; (100036b4 <__TMC_END__+0x64>)
10003662:	2100      	movs	r1, #0
10003664:	1a12      	subs	r2, r2, r0
10003666:	4b14      	ldr	r3, [pc, #80]	; (100036b8 <__TMC_END__+0x68>)
10003668:	4798      	blx	r3
1000366a:	f000 fc71 	bl	10003f50 <SystemCoreClockUpdate>
1000366e:	4813      	ldr	r0, [pc, #76]	; (100036bc <__TMC_END__+0x6c>)
10003670:	4913      	ldr	r1, [pc, #76]	; (100036c0 <__TMC_END__+0x70>)
10003672:	6803      	ldr	r3, [r0, #0]
10003674:	4a13      	ldr	r2, [pc, #76]	; (100036c4 <__TMC_END__+0x74>)
10003676:	f023 6370 	bic.w	r3, r3, #251658240	; 0xf000000
1000367a:	f043 63c0 	orr.w	r3, r3, #100663296	; 0x6000000
1000367e:	6003      	str	r3, [r0, #0]
10003680:	680b      	ldr	r3, [r1, #0]
10003682:	f423 6370 	bic.w	r3, r3, #3840	; 0xf00
10003686:	600b      	str	r3, [r1, #0]
10003688:	6813      	ldr	r3, [r2, #0]
1000368a:	f023 0318 	bic.w	r3, r3, #24
1000368e:	f043 0308 	orr.w	r3, r3, #8
10003692:	6013      	str	r3, [r2, #0]
10003694:	f000 fbfe 	bl	10003e94 <En32KCalibration>
10003698:	f000 fbf4 	bl	10003e84 <SpicDisableRtl8195A>
1000369c:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
100036a0:	f000 bbb4 	b.w	10003e0c <_AppStart>
100036a4:	4b08      	ldr	r3, [pc, #32]	; (100036c8 <__TMC_END__+0x78>)
100036a6:	4809      	ldr	r0, [pc, #36]	; (100036cc <__TMC_END__+0x7c>)
100036a8:	4798      	blx	r3
100036aa:	e7d6      	b.n	1000365a <InfraStart+0xa>
100036ac:	10000314 	.word	0x10000314
100036b0:	100041ac 	.word	0x100041ac
100036b4:	100041c8 	.word	0x100041c8
100036b8:	0000f511 	.word	0x0000f511
100036bc:	40000020 	.word	0x40000020
100036c0:	4000004c 	.word	0x4000004c
100036c4:	40000064 	.word	0x40000064
100036c8:	0000f39d 	.word	0x0000f39d
100036cc:	10003118 	.word	0x10003118

100036d0 <main>:
100036d0:	b508      	push	{r3, lr}
100036d2:	f000 fc3f 	bl	10003f54 <__libc_init_array>
100036d6:	200d      	movs	r0, #13
100036d8:	2101      	movs	r1, #1
100036da:	f000 f805 	bl	100036e8 <pinMode>
100036de:	200d      	movs	r0, #13
100036e0:	2101      	movs	r1, #1
100036e2:	f000 f87d 	bl	100037e0 <digitalWrite>
100036e6:	e7fe      	b.n	100036e6 <main+0x16>

100036e8 <pinMode>:
100036e8:	2813      	cmp	r0, #19
100036ea:	e92d 4ff8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
100036ee:	4604      	mov	r4, r0
100036f0:	460f      	mov	r7, r1
100036f2:	d86b      	bhi.n	100037cc <pinMode+0xe4>
100036f4:	220c      	movs	r2, #12
100036f6:	4342      	muls	r2, r0
100036f8:	4d35      	ldr	r5, [pc, #212]	; (100037d0 <pinMode+0xe8>)
100036fa:	231c      	movs	r3, #28
100036fc:	4343      	muls	r3, r0
100036fe:	eb05 0a02 	add.w	sl, r5, r2
10003702:	f8da 1004 	ldr.w	r1, [sl, #4]
10003706:	4e33      	ldr	r6, [pc, #204]	; (100037d4 <pinMode+0xec>)
10003708:	2901      	cmp	r1, #1
1000370a:	eb06 0803 	add.w	r8, r6, r3
1000370e:	d105      	bne.n	1000371c <pinMode+0x34>
10003710:	f8da 3008 	ldr.w	r3, [sl, #8]
10003714:	42bb      	cmp	r3, r7
10003716:	d114      	bne.n	10003742 <pinMode+0x5a>
10003718:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
1000371c:	58a8      	ldr	r0, [r5, r2]
1000371e:	f04f 0b00 	mov.w	fp, #0
10003722:	50f0      	str	r0, [r6, r3]
10003724:	f8c8 b004 	str.w	fp, [r8, #4]
10003728:	f8c8 b008 	str.w	fp, [r8, #8]
1000372c:	f000 f91e 	bl	1000396c <gpio_set>
10003730:	f108 0908 	add.w	r9, r8, #8
10003734:	2301      	movs	r3, #1
10003736:	f8c9 0008 	str.w	r0, [r9, #8]
1000373a:	f8c9 b004 	str.w	fp, [r9, #4]
1000373e:	f8ca 3004 	str.w	r3, [sl, #4]
10003742:	231c      	movs	r3, #28
10003744:	2f04      	cmp	r7, #4
10003746:	d821      	bhi.n	1000378c <pinMode+0xa4>
10003748:	e8df f007 	tbb	[pc, r7]
1000374c:	0e081403 	.word	0x0e081403
10003750:	1a          	.byte	0x1a
10003751:	00          	.byte	0x00
10003752:	fb03 6304 	mla	r3, r3, r4, r6
10003756:	2200      	movs	r2, #0
10003758:	609a      	str	r2, [r3, #8]
1000375a:	e016      	b.n	1000378a <pinMode+0xa2>
1000375c:	fb03 6304 	mla	r3, r3, r4, r6
10003760:	2200      	movs	r2, #0
10003762:	609a      	str	r2, [r3, #8]
10003764:	2201      	movs	r2, #1
10003766:	e010      	b.n	1000378a <pinMode+0xa2>
10003768:	fb03 6304 	mla	r3, r3, r4, r6
1000376c:	2200      	movs	r2, #0
1000376e:	609a      	str	r2, [r3, #8]
10003770:	2202      	movs	r2, #2
10003772:	e00a      	b.n	1000378a <pinMode+0xa2>
10003774:	fb03 6304 	mla	r3, r3, r4, r6
10003778:	2201      	movs	r2, #1
1000377a:	609a      	str	r2, [r3, #8]
1000377c:	2200      	movs	r2, #0
1000377e:	e004      	b.n	1000378a <pinMode+0xa2>
10003780:	fb03 6304 	mla	r3, r3, r4, r6
10003784:	2201      	movs	r2, #1
10003786:	609a      	str	r2, [r3, #8]
10003788:	2203      	movs	r2, #3
1000378a:	605a      	str	r2, [r3, #4]
1000378c:	4640      	mov	r0, r8
1000378e:	f04f 081c 	mov.w	r8, #28
10003792:	fb08 f804 	mul.w	r8, r8, r4
10003796:	f000 f8d5 	bl	10003944 <gpio_set_hal_pin_mode>
1000379a:	eb06 0008 	add.w	r0, r6, r8
1000379e:	300c      	adds	r0, #12
100037a0:	4446      	add	r6, r8
100037a2:	f7ff fedb 	bl	1000355c <HAL_GPIO_Init>
100037a6:	6933      	ldr	r3, [r6, #16]
100037a8:	210c      	movs	r1, #12
100037aa:	f3c3 1241 	ubfx	r2, r3, #5, #2
100037ae:	f003 031f 	and.w	r3, r3, #31
100037b2:	7573      	strb	r3, [r6, #21]
100037b4:	7633      	strb	r3, [r6, #24]
100037b6:	4b08      	ldr	r3, [pc, #32]	; (100037d8 <pinMode+0xf0>)
100037b8:	fb01 5404 	mla	r4, r1, r4, r5
100037bc:	5c9b      	ldrb	r3, [r3, r2]
100037be:	7532      	strb	r2, [r6, #20]
100037c0:	76b3      	strb	r3, [r6, #26]
100037c2:	4b06      	ldr	r3, [pc, #24]	; (100037dc <pinMode+0xf4>)
100037c4:	60a7      	str	r7, [r4, #8]
100037c6:	5c9b      	ldrb	r3, [r3, r2]
100037c8:	7672      	strb	r2, [r6, #25]
100037ca:	76f3      	strb	r3, [r6, #27]
100037cc:	e8bd 8ff8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, pc}
100037d0:	10003fa0 	.word	0x10003fa0
100037d4:	10003b54 	.word	0x10003b54
100037d8:	10002ef8 	.word	0x10002ef8
100037dc:	10002efb 	.word	0x10002efb

100037e0 <digitalWrite>:
100037e0:	2813      	cmp	r0, #19
100037e2:	b510      	push	{r4, lr}
100037e4:	d819      	bhi.n	1000381a <digitalWrite+0x3a>
100037e6:	4a0d      	ldr	r2, [pc, #52]	; (1000381c <digitalWrite+0x3c>)
100037e8:	230c      	movs	r3, #12
100037ea:	fb03 2300 	mla	r3, r3, r0, r2
100037ee:	685a      	ldr	r2, [r3, #4]
100037f0:	2a01      	cmp	r2, #1
100037f2:	d112      	bne.n	1000381a <digitalWrite+0x3a>
100037f4:	4b0a      	ldr	r3, [pc, #40]	; (10003820 <digitalWrite+0x40>)
100037f6:	241c      	movs	r4, #28
100037f8:	fb04 3000 	mla	r0, r4, r0, r3
100037fc:	7e83      	ldrb	r3, [r0, #26]
100037fe:	7e00      	ldrb	r0, [r0, #24]
10003800:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
10003804:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
10003808:	681c      	ldr	r4, [r3, #0]
1000380a:	4082      	lsls	r2, r0
1000380c:	f001 0101 	and.w	r1, r1, #1
10003810:	ea24 0202 	bic.w	r2, r4, r2
10003814:	4081      	lsls	r1, r0
10003816:	4311      	orrs	r1, r2
10003818:	6019      	str	r1, [r3, #0]
1000381a:	bd10      	pop	{r4, pc}
1000381c:	10003fa0 	.word	0x10003fa0
10003820:	10003b54 	.word	0x10003b54

10003824 <HAL_GPIO_PullCtrl>:
10003824:	4b0d      	ldr	r3, [pc, #52]	; (1000385c <HAL_GPIO_PullCtrl+0x38>)
10003826:	b570      	push	{r4, r5, r6, lr}
10003828:	681b      	ldr	r3, [r3, #0]
1000382a:	4605      	mov	r5, r0
1000382c:	075b      	lsls	r3, r3, #29
1000382e:	460c      	mov	r4, r1
10003830:	d40c      	bmi.n	1000384c <HAL_GPIO_PullCtrl+0x28>
10003832:	2c01      	cmp	r4, #1
10003834:	bf1c      	itt	ne
10003836:	1ea1      	subne	r1, r4, #2
10003838:	fab1 f181 	clzne	r1, r1
1000383c:	4628      	mov	r0, r5
1000383e:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
10003842:	bf14      	ite	ne
10003844:	0949      	lsrne	r1, r1, #5
10003846:	2102      	moveq	r1, #2
10003848:	f000 bc32 	b.w	100040b0 <__GPIO_PullCtrl_8195a_veneer>
1000384c:	460b      	mov	r3, r1
1000384e:	4602      	mov	r2, r0
10003850:	4903      	ldr	r1, [pc, #12]	; (10003860 <HAL_GPIO_PullCtrl+0x3c>)
10003852:	4e04      	ldr	r6, [pc, #16]	; (10003864 <HAL_GPIO_PullCtrl+0x40>)
10003854:	4804      	ldr	r0, [pc, #16]	; (10003868 <HAL_GPIO_PullCtrl+0x44>)
10003856:	47b0      	blx	r6
10003858:	e7eb      	b.n	10003832 <HAL_GPIO_PullCtrl+0xe>
1000385a:	bf00      	nop
1000385c:	10000310 	.word	0x10000310
10003860:	1000331c 	.word	0x1000331c
10003864:	0000f39d 	.word	0x0000f39d
10003868:	10003354 	.word	0x10003354

1000386c <HAL_GPIO_Irq_Init>:
1000386c:	b570      	push	{r4, r5, r6, lr}
1000386e:	4c1b      	ldr	r4, [pc, #108]	; (100038dc <HAL_GPIO_Irq_Init+0x70>)
10003870:	4605      	mov	r5, r0
10003872:	6820      	ldr	r0, [r4, #0]
10003874:	4e1a      	ldr	r6, [pc, #104]	; (100038e0 <HAL_GPIO_Irq_Init+0x74>)
10003876:	b148      	cbz	r0, 1000388c <HAL_GPIO_Irq_Init+0x20>
10003878:	6803      	ldr	r3, [r0, #0]
1000387a:	b1eb      	cbz	r3, 100038b8 <HAL_GPIO_Irq_Init+0x4c>
1000387c:	6833      	ldr	r3, [r6, #0]
1000387e:	075b      	lsls	r3, r3, #29
10003880:	d40f      	bmi.n	100038a2 <HAL_GPIO_Irq_Init+0x36>
10003882:	4628      	mov	r0, r5
10003884:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
10003888:	f000 bc7a 	b.w	10004180 <__HAL_GPIO_Init_8195a_veneer>
1000388c:	6833      	ldr	r3, [r6, #0]
1000388e:	4815      	ldr	r0, [pc, #84]	; (100038e4 <HAL_GPIO_Irq_Init+0x78>)
10003890:	0759      	lsls	r1, r3, #29
10003892:	6020      	str	r0, [r4, #0]
10003894:	d5f0      	bpl.n	10003878 <HAL_GPIO_Irq_Init+0xc>
10003896:	4914      	ldr	r1, [pc, #80]	; (100038e8 <HAL_GPIO_Irq_Init+0x7c>)
10003898:	4814      	ldr	r0, [pc, #80]	; (100038ec <HAL_GPIO_Irq_Init+0x80>)
1000389a:	4b15      	ldr	r3, [pc, #84]	; (100038f0 <HAL_GPIO_Irq_Init+0x84>)
1000389c:	4798      	blx	r3
1000389e:	6820      	ldr	r0, [r4, #0]
100038a0:	e7ea      	b.n	10003878 <HAL_GPIO_Irq_Init+0xc>
100038a2:	682b      	ldr	r3, [r5, #0]
100038a4:	686a      	ldr	r2, [r5, #4]
100038a6:	4c12      	ldr	r4, [pc, #72]	; (100038f0 <HAL_GPIO_Irq_Init+0x84>)
100038a8:	490f      	ldr	r1, [pc, #60]	; (100038e8 <HAL_GPIO_Irq_Init+0x7c>)
100038aa:	4812      	ldr	r0, [pc, #72]	; (100038f4 <HAL_GPIO_Irq_Init+0x88>)
100038ac:	47a0      	blx	r4
100038ae:	4628      	mov	r0, r5
100038b0:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
100038b4:	f000 bc64 	b.w	10004180 <__HAL_GPIO_Init_8195a_veneer>
100038b8:	4a0f      	ldr	r2, [pc, #60]	; (100038f8 <HAL_GPIO_Irq_Init+0x8c>)
100038ba:	2310      	movs	r3, #16
100038bc:	6002      	str	r2, [r0, #0]
100038be:	60c3      	str	r3, [r0, #12]
100038c0:	f000 fc66 	bl	10004190 <__HAL_GPIO_RegIrq_8195a_veneer>
100038c4:	4b0d      	ldr	r3, [pc, #52]	; (100038fc <HAL_GPIO_Irq_Init+0x90>)
100038c6:	6820      	ldr	r0, [r4, #0]
100038c8:	4798      	blx	r3
100038ca:	6833      	ldr	r3, [r6, #0]
100038cc:	075a      	lsls	r2, r3, #29
100038ce:	d5d8      	bpl.n	10003882 <HAL_GPIO_Irq_Init+0x16>
100038d0:	4905      	ldr	r1, [pc, #20]	; (100038e8 <HAL_GPIO_Irq_Init+0x7c>)
100038d2:	4b07      	ldr	r3, [pc, #28]	; (100038f0 <HAL_GPIO_Irq_Init+0x84>)
100038d4:	480a      	ldr	r0, [pc, #40]	; (10003900 <HAL_GPIO_Irq_Init+0x94>)
100038d6:	4798      	blx	r3
100038d8:	e7d0      	b.n	1000387c <HAL_GPIO_Irq_Init+0x10>
100038da:	bf00      	nop
100038dc:	10000354 	.word	0x10000354
100038e0:	10000310 	.word	0x10000310
100038e4:	10001cb0 	.word	0x10001cb0
100038e8:	10003340 	.word	0x10003340
100038ec:	10003378 	.word	0x10003378
100038f0:	0000f39d 	.word	0x0000f39d
100038f4:	100033cc 	.word	0x100033cc
100038f8:	0000d5fd 	.word	0x0000d5fd
100038fc:	000040f1 	.word	0x000040f1
10003900:	100033a0 	.word	0x100033a0

10003904 <HAL_GPIO_DeInit>:
10003904:	f000 bc04 	b.w	10004110 <__HAL_GPIO_DeInit_8195a_veneer>

10003908 <HAL_GPIO_ReadPin>:
10003908:	f000 bc22 	b.w	10004150 <__HAL_GPIO_ReadPin_8195a_veneer>

1000390c <HAL_GPIO_WritePin>:
1000390c:	f000 bbd8 	b.w	100040c0 <__HAL_GPIO_WritePin_8195a_veneer>

10003910 <HAL_GPIO_UserRegIrq>:
10003910:	f000 bbde 	b.w	100040d0 <__HAL_GPIO_UserRegIrq_8195a_veneer>

10003914 <HAL_GPIO_UserUnRegIrq>:
10003914:	f000 bbe4 	b.w	100040e0 <__HAL_GPIO_UserUnRegIrq_8195a_veneer>

10003918 <HAL_GPIO_IntCtrl>:
10003918:	f000 bc0a 	b.w	10004130 <__HAL_GPIO_IntCtrl_8195a_veneer>

1000391c <HAL_GPIO_MaskIrq>:
1000391c:	f000 bc00 	b.w	10004120 <__HAL_GPIO_MaskIrq_8195a_veneer>

10003920 <HAL_GPIO_UnMaskIrq>:
10003920:	f000 bbee 	b.w	10004100 <__HAL_GPIO_UnMaskIrq_8195a_veneer>

10003924 <HAL_GPIO_IP_DeInit>:
10003924:	b510      	push	{r4, lr}
10003926:	4c05      	ldr	r4, [pc, #20]	; (1000393c <HAL_GPIO_IP_DeInit+0x18>)
10003928:	6820      	ldr	r0, [r4, #0]
1000392a:	b130      	cbz	r0, 1000393a <HAL_GPIO_IP_DeInit+0x16>
1000392c:	4b04      	ldr	r3, [pc, #16]	; (10003940 <HAL_GPIO_IP_DeInit+0x1c>)
1000392e:	4798      	blx	r3
10003930:	6820      	ldr	r0, [r4, #0]
10003932:	f000 fc05 	bl	10004140 <__HAL_GPIO_UnRegIrq_8195a_veneer>
10003936:	2300      	movs	r3, #0
10003938:	6023      	str	r3, [r4, #0]
1000393a:	bd10      	pop	{r4, pc}
1000393c:	10000354 	.word	0x10000354
10003940:	0000418d 	.word	0x0000418d

10003944 <gpio_set_hal_pin_mode>:
10003944:	6882      	ldr	r2, [r0, #8]
10003946:	6843      	ldr	r3, [r0, #4]
10003948:	2a01      	cmp	r2, #1
1000394a:	d006      	beq.n	1000395a <gpio_set_hal_pin_mode+0x16>
1000394c:	2b03      	cmp	r3, #3
1000394e:	bf96      	itet	ls
10003950:	4a05      	ldrls	r2, [pc, #20]	; (10003968 <gpio_set_hal_pin_mode+0x24>)
10003952:	2300      	movhi	r3, #0
10003954:	5cd3      	ldrbls	r3, [r2, r3]
10003956:	60c3      	str	r3, [r0, #12]
10003958:	4770      	bx	lr
1000395a:	2b03      	cmp	r3, #3
1000395c:	bf0c      	ite	eq
1000395e:	2304      	moveq	r3, #4
10003960:	2303      	movne	r3, #3
10003962:	60c3      	str	r3, [r0, #12]
10003964:	4770      	bx	lr
10003966:	bf00      	nop
10003968:	100034f0 	.word	0x100034f0

1000396c <gpio_set>:
1000396c:	b538      	push	{r3, r4, r5, lr}
1000396e:	4604      	mov	r4, r0
10003970:	3001      	adds	r0, #1
10003972:	d004      	beq.n	1000397e <gpio_set+0x12>
10003974:	4620      	mov	r0, r4
10003976:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
1000397a:	f000 bbb9 	b.w	100040f0 <__HAL_GPIO_GetIPPinName_8195a_veneer>
1000397e:	234a      	movs	r3, #74	; 0x4a
10003980:	4d04      	ldr	r5, [pc, #16]	; (10003994 <gpio_set+0x28>)
10003982:	4a05      	ldr	r2, [pc, #20]	; (10003998 <gpio_set+0x2c>)
10003984:	4905      	ldr	r1, [pc, #20]	; (1000399c <gpio_set+0x30>)
10003986:	4806      	ldr	r0, [pc, #24]	; (100039a0 <gpio_set+0x34>)
10003988:	47a8      	blx	r5
1000398a:	4620      	mov	r0, r4
1000398c:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
10003990:	f000 bbae 	b.w	100040f0 <__HAL_GPIO_GetIPPinName_8195a_veneer>
10003994:	0000f39d 	.word	0x0000f39d
10003998:	100034f4 	.word	0x100034f4
1000399c:	10003500 	.word	0x10003500
100039a0:	10003538 	.word	0x10003538

100039a4 <gpio_init>:
100039a4:	1c4a      	adds	r2, r1, #1
100039a6:	d016      	beq.n	100039d6 <gpio_init+0x32>
100039a8:	b538      	push	{r3, r4, r5, lr}
100039aa:	4604      	mov	r4, r0
100039ac:	4608      	mov	r0, r1
100039ae:	2500      	movs	r5, #0
100039b0:	e884 0021 	stmia.w	r4, {r0, r5}
100039b4:	60a5      	str	r5, [r4, #8]
100039b6:	f7ff ffd9 	bl	1000396c <gpio_set>
100039ba:	f000 031f 	and.w	r3, r0, #31
100039be:	f3c0 1241 	ubfx	r2, r0, #5, #2
100039c2:	7522      	strb	r2, [r4, #20]
100039c4:	7563      	strb	r3, [r4, #21]
100039c6:	6120      	str	r0, [r4, #16]
100039c8:	60e5      	str	r5, [r4, #12]
100039ca:	f104 000c 	add.w	r0, r4, #12
100039ce:	e8bd 4038 	ldmia.w	sp!, {r3, r4, r5, lr}
100039d2:	f7ff bdc3 	b.w	1000355c <HAL_GPIO_Init>
100039d6:	4770      	bx	lr

100039d8 <gpio_mode>:
100039d8:	6883      	ldr	r3, [r0, #8]
100039da:	6041      	str	r1, [r0, #4]
100039dc:	2b01      	cmp	r3, #1
100039de:	d008      	beq.n	100039f2 <gpio_mode+0x1a>
100039e0:	2903      	cmp	r1, #3
100039e2:	bf96      	itet	ls
100039e4:	4b07      	ldrls	r3, [pc, #28]	; (10003a04 <gpio_mode+0x2c>)
100039e6:	2300      	movhi	r3, #0
100039e8:	5c5b      	ldrbls	r3, [r3, r1]
100039ea:	300c      	adds	r0, #12
100039ec:	6003      	str	r3, [r0, #0]
100039ee:	f7ff bdb5 	b.w	1000355c <HAL_GPIO_Init>
100039f2:	2903      	cmp	r1, #3
100039f4:	bf0c      	ite	eq
100039f6:	2304      	moveq	r3, #4
100039f8:	2303      	movne	r3, #3
100039fa:	60c3      	str	r3, [r0, #12]
100039fc:	300c      	adds	r0, #12
100039fe:	f7ff bdad 	b.w	1000355c <HAL_GPIO_Init>
10003a02:	bf00      	nop
10003a04:	100034f0 	.word	0x100034f0

10003a08 <gpio_dir>:
10003a08:	2901      	cmp	r1, #1
10003a0a:	6843      	ldr	r3, [r0, #4]
10003a0c:	6081      	str	r1, [r0, #8]
10003a0e:	d008      	beq.n	10003a22 <gpio_dir+0x1a>
10003a10:	2b03      	cmp	r3, #3
10003a12:	bf96      	itet	ls
10003a14:	4a07      	ldrls	r2, [pc, #28]	; (10003a34 <gpio_dir+0x2c>)
10003a16:	2300      	movhi	r3, #0
10003a18:	5cd3      	ldrbls	r3, [r2, r3]
10003a1a:	300c      	adds	r0, #12
10003a1c:	6003      	str	r3, [r0, #0]
10003a1e:	f7ff bd9d 	b.w	1000355c <HAL_GPIO_Init>
10003a22:	2b03      	cmp	r3, #3
10003a24:	bf0c      	ite	eq
10003a26:	2304      	moveq	r3, #4
10003a28:	2303      	movne	r3, #3
10003a2a:	60c3      	str	r3, [r0, #12]
10003a2c:	300c      	adds	r0, #12
10003a2e:	f7ff bd95 	b.w	1000355c <HAL_GPIO_Init>
10003a32:	bf00      	nop
10003a34:	100034f0 	.word	0x100034f0

10003a38 <gpio_write>:
10003a38:	b530      	push	{r4, r5, lr}
10003a3a:	68c3      	ldr	r3, [r0, #12]
10003a3c:	b083      	sub	sp, #12
10003a3e:	2b04      	cmp	r3, #4
10003a40:	d01b      	beq.n	10003a7a <gpio_write+0x42>
10003a42:	460a      	mov	r2, r1
10003a44:	7d03      	ldrb	r3, [r0, #20]
10003a46:	490f      	ldr	r1, [pc, #60]	; (10003a84 <gpio_write+0x4c>)
10003a48:	7d44      	ldrb	r4, [r0, #21]
10003a4a:	5ccb      	ldrb	r3, [r1, r3]
10003a4c:	2101      	movs	r1, #1
10003a4e:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
10003a52:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
10003a56:	681d      	ldr	r5, [r3, #0]
10003a58:	fa01 f004 	lsl.w	r0, r1, r4
10003a5c:	9501      	str	r5, [sp, #4]
10003a5e:	9901      	ldr	r1, [sp, #4]
10003a60:	f002 0201 	and.w	r2, r2, #1
10003a64:	ea21 0100 	bic.w	r1, r1, r0
10003a68:	9101      	str	r1, [sp, #4]
10003a6a:	9901      	ldr	r1, [sp, #4]
10003a6c:	40a2      	lsls	r2, r4
10003a6e:	430a      	orrs	r2, r1
10003a70:	9201      	str	r2, [sp, #4]
10003a72:	9a01      	ldr	r2, [sp, #4]
10003a74:	601a      	str	r2, [r3, #0]
10003a76:	b003      	add	sp, #12
10003a78:	bd30      	pop	{r4, r5, pc}
10003a7a:	300c      	adds	r0, #12
10003a7c:	f7ff ff46 	bl	1000390c <HAL_GPIO_WritePin>
10003a80:	b003      	add	sp, #12
10003a82:	bd30      	pop	{r4, r5, pc}
10003a84:	10003554 	.word	0x10003554

10003a88 <gpio_read>:
10003a88:	7d03      	ldrb	r3, [r0, #20]
10003a8a:	490b      	ldr	r1, [pc, #44]	; (10003ab8 <gpio_read+0x30>)
10003a8c:	b082      	sub	sp, #8
10003a8e:	5ccb      	ldrb	r3, [r1, r3]
10003a90:	68c2      	ldr	r2, [r0, #12]
10003a92:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
10003a96:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
10003a9a:	681b      	ldr	r3, [r3, #0]
10003a9c:	7d40      	ldrb	r0, [r0, #21]
10003a9e:	9301      	str	r3, [sp, #4]
10003aa0:	9b01      	ldr	r3, [sp, #4]
10003aa2:	2a04      	cmp	r2, #4
10003aa4:	fa23 f000 	lsr.w	r0, r3, r0
10003aa8:	f000 0001 	and.w	r0, r0, #1
10003aac:	bf08      	it	eq
10003aae:	f080 0001 	eoreq.w	r0, r0, #1
10003ab2:	b002      	add	sp, #8
10003ab4:	4770      	bx	lr
10003ab6:	bf00      	nop
10003ab8:	10003558 	.word	0x10003558

10003abc <gpio_change_dir>:
10003abc:	2901      	cmp	r1, #1
10003abe:	6843      	ldr	r3, [r0, #4]
10003ac0:	6081      	str	r1, [r0, #8]
10003ac2:	d015      	beq.n	10003af0 <gpio_change_dir+0x34>
10003ac4:	2b03      	cmp	r3, #3
10003ac6:	bf96      	itet	ls
10003ac8:	4a13      	ldrls	r2, [pc, #76]	; (10003b18 <gpio_change_dir+0x5c>)
10003aca:	2300      	movhi	r3, #0
10003acc:	5cd3      	ldrbls	r3, [r2, r3]
10003ace:	4a13      	ldr	r2, [pc, #76]	; (10003b1c <gpio_change_dir+0x60>)
10003ad0:	60c3      	str	r3, [r0, #12]
10003ad2:	7d03      	ldrb	r3, [r0, #20]
10003ad4:	7d40      	ldrb	r0, [r0, #21]
10003ad6:	5cd3      	ldrb	r3, [r2, r3]
10003ad8:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
10003adc:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
10003ae0:	681a      	ldr	r2, [r3, #0]
10003ae2:	b999      	cbnz	r1, 10003b0c <gpio_change_dir+0x50>
10003ae4:	2101      	movs	r1, #1
10003ae6:	4081      	lsls	r1, r0
10003ae8:	ea22 0201 	bic.w	r2, r2, r1
10003aec:	601a      	str	r2, [r3, #0]
10003aee:	4770      	bx	lr
10003af0:	2b03      	cmp	r3, #3
10003af2:	bf0c      	ite	eq
10003af4:	2304      	moveq	r3, #4
10003af6:	2303      	movne	r3, #3
10003af8:	60c3      	str	r3, [r0, #12]
10003afa:	4a08      	ldr	r2, [pc, #32]	; (10003b1c <gpio_change_dir+0x60>)
10003afc:	7d03      	ldrb	r3, [r0, #20]
10003afe:	7d40      	ldrb	r0, [r0, #21]
10003b00:	5cd3      	ldrb	r3, [r2, r3]
10003b02:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
10003b06:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
10003b0a:	681a      	ldr	r2, [r3, #0]
10003b0c:	2101      	movs	r1, #1
10003b0e:	4081      	lsls	r1, r0
10003b10:	430a      	orrs	r2, r1
10003b12:	601a      	str	r2, [r3, #0]
10003b14:	4770      	bx	lr
10003b16:	bf00      	nop
10003b18:	100034f0 	.word	0x100034f0
10003b1c:	10003550 	.word	0x10003550

10003b20 <gpio_direct_write>:
10003b20:	b410      	push	{r4}
10003b22:	4a09      	ldr	r2, [pc, #36]	; (10003b48 <gpio_direct_write+0x28>)
10003b24:	7d03      	ldrb	r3, [r0, #20]
10003b26:	7d40      	ldrb	r0, [r0, #21]
10003b28:	5cd3      	ldrb	r3, [r2, r3]
10003b2a:	2401      	movs	r4, #1
10003b2c:	f103 4380 	add.w	r3, r3, #1073741824	; 0x40000000
10003b30:	f503 5380 	add.w	r3, r3, #4096	; 0x1000
10003b34:	681a      	ldr	r2, [r3, #0]
10003b36:	4084      	lsls	r4, r0
10003b38:	ea22 0204 	bic.w	r2, r2, r4
10003b3c:	4081      	lsls	r1, r0
10003b3e:	430a      	orrs	r2, r1
10003b40:	601a      	str	r2, [r3, #0]
10003b42:	bc10      	pop	{r4}
10003b44:	4770      	bx	lr
10003b46:	bf00      	nop
10003b48:	10003554 	.word	0x10003554

10003b4c <gpio_pull_ctrl>:
10003b4c:	6800      	ldr	r0, [r0, #0]
10003b4e:	f7ff be69 	b.w	10003824 <HAL_GPIO_PullCtrl>
10003b52:	bf00      	nop

10003b54 <gpio_pin_struct>:
	...

10003d68 <deregister_tm_clones>:
10003d68:	4b04      	ldr	r3, [pc, #16]	; (10003d7c <deregister_tm_clones+0x14>)
10003d6a:	4805      	ldr	r0, [pc, #20]	; (10003d80 <deregister_tm_clones+0x18>)
10003d6c:	1a1b      	subs	r3, r3, r0
10003d6e:	2b06      	cmp	r3, #6
10003d70:	d902      	bls.n	10003d78 <deregister_tm_clones+0x10>
10003d72:	4b04      	ldr	r3, [pc, #16]	; (10003d84 <deregister_tm_clones+0x1c>)
10003d74:	b103      	cbz	r3, 10003d78 <deregister_tm_clones+0x10>
10003d76:	4718      	bx	r3
10003d78:	4770      	bx	lr
10003d7a:	bf00      	nop
10003d7c:	10003653 	.word	0x10003653
10003d80:	10003650 	.word	0x10003650
10003d84:	00000000 	.word	0x00000000

10003d88 <register_tm_clones>:
10003d88:	4905      	ldr	r1, [pc, #20]	; (10003da0 <register_tm_clones+0x18>)
10003d8a:	4806      	ldr	r0, [pc, #24]	; (10003da4 <register_tm_clones+0x1c>)
10003d8c:	1a09      	subs	r1, r1, r0
10003d8e:	1089      	asrs	r1, r1, #2
10003d90:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
10003d94:	1049      	asrs	r1, r1, #1
10003d96:	d002      	beq.n	10003d9e <register_tm_clones+0x16>
10003d98:	4b03      	ldr	r3, [pc, #12]	; (10003da8 <register_tm_clones+0x20>)
10003d9a:	b103      	cbz	r3, 10003d9e <register_tm_clones+0x16>
10003d9c:	4718      	bx	r3
10003d9e:	4770      	bx	lr
10003da0:	10003650 	.word	0x10003650
10003da4:	10003650 	.word	0x10003650
10003da8:	00000000 	.word	0x00000000

10003dac <__do_global_dtors_aux>:
10003dac:	b510      	push	{r4, lr}
10003dae:	4c06      	ldr	r4, [pc, #24]	; (10003dc8 <__do_global_dtors_aux+0x1c>)
10003db0:	7823      	ldrb	r3, [r4, #0]
10003db2:	b943      	cbnz	r3, 10003dc6 <__do_global_dtors_aux+0x1a>
10003db4:	f7ff ffd8 	bl	10003d68 <deregister_tm_clones>
10003db8:	4b04      	ldr	r3, [pc, #16]	; (10003dcc <__do_global_dtors_aux+0x20>)
10003dba:	b113      	cbz	r3, 10003dc2 <__do_global_dtors_aux+0x16>
10003dbc:	4804      	ldr	r0, [pc, #16]	; (10003dd0 <__do_global_dtors_aux+0x24>)
10003dbe:	f3af 8000 	nop.w
10003dc2:	2301      	movs	r3, #1
10003dc4:	7023      	strb	r3, [r4, #0]
10003dc6:	bd10      	pop	{r4, pc}
10003dc8:	100041ac 	.word	0x100041ac
10003dcc:	00000000 	.word	0x00000000
10003dd0:	100041a4 	.word	0x100041a4

10003dd4 <frame_dummy>:
10003dd4:	b508      	push	{r3, lr}
10003dd6:	4b08      	ldr	r3, [pc, #32]	; (10003df8 <frame_dummy+0x24>)
10003dd8:	b11b      	cbz	r3, 10003de2 <frame_dummy+0xe>
10003dda:	4808      	ldr	r0, [pc, #32]	; (10003dfc <frame_dummy+0x28>)
10003ddc:	4908      	ldr	r1, [pc, #32]	; (10003e00 <frame_dummy+0x2c>)
10003dde:	f3af 8000 	nop.w
10003de2:	4808      	ldr	r0, [pc, #32]	; (10003e04 <frame_dummy+0x30>)
10003de4:	6803      	ldr	r3, [r0, #0]
10003de6:	b913      	cbnz	r3, 10003dee <frame_dummy+0x1a>
10003de8:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
10003dec:	e7cc      	b.n	10003d88 <register_tm_clones>
10003dee:	4b06      	ldr	r3, [pc, #24]	; (10003e08 <frame_dummy+0x34>)
10003df0:	2b00      	cmp	r3, #0
10003df2:	d0f9      	beq.n	10003de8 <frame_dummy+0x14>
10003df4:	4798      	blx	r3
10003df6:	e7f7      	b.n	10003de8 <frame_dummy+0x14>
10003df8:	00000000 	.word	0x00000000
10003dfc:	100041a4 	.word	0x100041a4
10003e00:	100041b0 	.word	0x100041b0
10003e04:	100041a8 	.word	0x100041a8
10003e08:	00000000 	.word	0x00000000

10003e0c <_AppStart>:
10003e0c:	b508      	push	{r3, lr}
10003e0e:	f000 f897 	bl	10003f40 <SystemInit>
10003e12:	f7ff fc5d 	bl	100036d0 <main>
	...

10003e18 <ShowRamBuildInfo>:
10003e18:	b570      	push	{r4, r5, r6, lr}
10003e1a:	4c12      	ldr	r4, [pc, #72]	; (10003e64 <ShowRamBuildInfo+0x4c>)
10003e1c:	6823      	ldr	r3, [r4, #0]
10003e1e:	005b      	lsls	r3, r3, #1
10003e20:	d400      	bmi.n	10003e24 <ShowRamBuildInfo+0xc>
10003e22:	bd70      	pop	{r4, r5, r6, pc}
10003e24:	4810      	ldr	r0, [pc, #64]	; (10003e68 <ShowRamBuildInfo+0x50>)
10003e26:	4d11      	ldr	r5, [pc, #68]	; (10003e6c <ShowRamBuildInfo+0x54>)
10003e28:	47a8      	blx	r5
10003e2a:	6823      	ldr	r3, [r4, #0]
10003e2c:	005e      	lsls	r6, r3, #1
10003e2e:	d510      	bpl.n	10003e52 <ShowRamBuildInfo+0x3a>
10003e30:	480f      	ldr	r0, [pc, #60]	; (10003e70 <ShowRamBuildInfo+0x58>)
10003e32:	47a8      	blx	r5
10003e34:	6823      	ldr	r3, [r4, #0]
10003e36:	0058      	lsls	r0, r3, #1
10003e38:	d5f3      	bpl.n	10003e22 <ShowRamBuildInfo+0xa>
10003e3a:	480e      	ldr	r0, [pc, #56]	; (10003e74 <ShowRamBuildInfo+0x5c>)
10003e3c:	47a8      	blx	r5
10003e3e:	6823      	ldr	r3, [r4, #0]
10003e40:	0059      	lsls	r1, r3, #1
10003e42:	d5ee      	bpl.n	10003e22 <ShowRamBuildInfo+0xa>
10003e44:	480c      	ldr	r0, [pc, #48]	; (10003e78 <ShowRamBuildInfo+0x60>)
10003e46:	47a8      	blx	r5
10003e48:	6823      	ldr	r3, [r4, #0]
10003e4a:	005a      	lsls	r2, r3, #1
10003e4c:	d5e9      	bpl.n	10003e22 <ShowRamBuildInfo+0xa>
10003e4e:	480b      	ldr	r0, [pc, #44]	; (10003e7c <ShowRamBuildInfo+0x64>)
10003e50:	47a8      	blx	r5
10003e52:	6823      	ldr	r3, [r4, #0]
10003e54:	005b      	lsls	r3, r3, #1
10003e56:	d5e4      	bpl.n	10003e22 <ShowRamBuildInfo+0xa>
10003e58:	462b      	mov	r3, r5
10003e5a:	e8bd 4070 	ldmia.w	sp!, {r4, r5, r6, lr}
10003e5e:	4808      	ldr	r0, [pc, #32]	; (10003e80 <ShowRamBuildInfo+0x68>)
10003e60:	4718      	bx	r3
10003e62:	bf00      	nop
10003e64:	10000314 	.word	0x10000314
10003e68:	10002ff0 	.word	0x10002ff0
10003e6c:	0000f39d 	.word	0x0000f39d
10003e70:	10003030 	.word	0x10003030
10003e74:	10003054 	.word	0x10003054
10003e78:	1000306c 	.word	0x1000306c
10003e7c:	10003088 	.word	0x10003088
10003e80:	100030dc 	.word	0x100030dc

10003e84 <SpicDisableRtl8195A>:
10003e84:	4a02      	ldr	r2, [pc, #8]	; (10003e90 <SpicDisableRtl8195A+0xc>)
10003e86:	6813      	ldr	r3, [r2, #0]
10003e88:	f023 0301 	bic.w	r3, r3, #1
10003e8c:	6013      	str	r3, [r2, #0]
10003e8e:	4770      	bx	lr
10003e90:	400002c0 	.word	0x400002c0

10003e94 <En32KCalibration>:
10003e94:	e92d 47f0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10003e98:	4b20      	ldr	r3, [pc, #128]	; (10003f1c <En32KCalibration+0x88>)
10003e9a:	f8df 80a0 	ldr.w	r8, [pc, #160]	; 10003f3c <En32KCalibration+0xa8>
10003e9e:	f04f 0900 	mov.w	r9, #0
10003ea2:	f8c8 9000 	str.w	r9, [r8]
10003ea6:	2028      	movs	r0, #40	; 0x28
10003ea8:	f8c8 3000 	str.w	r3, [r8]
10003eac:	f000 f960 	bl	10004170 <__HalDelayUs_veneer>
10003eb0:	4b1b      	ldr	r3, [pc, #108]	; (10003f20 <En32KCalibration+0x8c>)
10003eb2:	f8c8 9000 	str.w	r9, [r8]
10003eb6:	2028      	movs	r0, #40	; 0x28
10003eb8:	f8c8 3000 	str.w	r3, [r8]
10003ebc:	f000 f958 	bl	10004170 <__HalDelayUs_veneer>
10003ec0:	4b18      	ldr	r3, [pc, #96]	; (10003f24 <En32KCalibration+0x90>)
10003ec2:	f8c8 9000 	str.w	r9, [r8]
10003ec6:	2028      	movs	r0, #40	; 0x28
10003ec8:	f8c8 3000 	str.w	r3, [r8]
10003ecc:	f000 f950 	bl	10004170 <__HalDelayUs_veneer>
10003ed0:	4b15      	ldr	r3, [pc, #84]	; (10003f28 <En32KCalibration+0x94>)
10003ed2:	f8c8 9000 	str.w	r9, [r8]
10003ed6:	2028      	movs	r0, #40	; 0x28
10003ed8:	f8c8 3000 	str.w	r3, [r8]
10003edc:	f000 f948 	bl	10004170 <__HalDelayUs_veneer>
10003ee0:	4647      	mov	r7, r8
10003ee2:	4c12      	ldr	r4, [pc, #72]	; (10003f2c <En32KCalibration+0x98>)
10003ee4:	4e12      	ldr	r6, [pc, #72]	; (10003f30 <En32KCalibration+0x9c>)
10003ee6:	f44f 1588 	mov.w	r5, #1114112	; 0x110000
10003eea:	f8c8 9000 	str.w	r9, [r8]
10003eee:	e003      	b.n	10003ef8 <En32KCalibration+0x64>
10003ef0:	f000 f93e 	bl	10004170 <__HalDelayUs_veneer>
10003ef4:	3c01      	subs	r4, #1
10003ef6:	d00a      	beq.n	10003f0e <En32KCalibration+0x7a>
10003ef8:	603d      	str	r5, [r7, #0]
10003efa:	2028      	movs	r0, #40	; 0x28
10003efc:	f000 f938 	bl	10004170 <__HalDelayUs_veneer>
10003f00:	6833      	ldr	r3, [r6, #0]
10003f02:	201e      	movs	r0, #30
10003f04:	f413 5f40 	tst.w	r3, #12288	; 0x3000
10003f08:	d0f2      	beq.n	10003ef0 <En32KCalibration+0x5c>
10003f0a:	e8bd 87f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
10003f0e:	4907      	ldr	r1, [pc, #28]	; (10003f2c <En32KCalibration+0x98>)
10003f10:	4808      	ldr	r0, [pc, #32]	; (10003f34 <En32KCalibration+0xa0>)
10003f12:	4b09      	ldr	r3, [pc, #36]	; (10003f38 <En32KCalibration+0xa4>)
10003f14:	e8bd 47f0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
10003f18:	4718      	bx	r3
10003f1a:	bf00      	nop
10003f1c:	00811500 	.word	0x00811500
10003f20:	008201c0 	.word	0x008201c0
10003f24:	00840100 	.word	0x00840100
10003f28:	0080f980 	.word	0x0080f980
10003f2c:	000186a1 	.word	0x000186a1
10003f30:	40000278 	.word	0x40000278
10003f34:	100034d8 	.word	0x100034d8
10003f38:	0000f39d 	.word	0x0000f39d
10003f3c:	40000274 	.word	0x40000274

10003f40 <SystemInit>:
10003f40:	b508      	push	{r3, lr}
10003f42:	f000 f90d 	bl	10004160 <__HalGetCpuClk_veneer>
10003f46:	4b01      	ldr	r3, [pc, #4]	; (10003f4c <SystemInit+0xc>)
10003f48:	6018      	str	r0, [r3, #0]
10003f4a:	bd08      	pop	{r3, pc}
10003f4c:	10004090 	.word	0x10004090

10003f50 <SystemCoreClockUpdate>:
10003f50:	f7ff bff6 	b.w	10003f40 <SystemInit>

10003f54 <__libc_init_array>:
10003f54:	4b0e      	ldr	r3, [pc, #56]	; (10003f90 <__libc_init_array+0x3c>)
10003f56:	b570      	push	{r4, r5, r6, lr}
10003f58:	461e      	mov	r6, r3
10003f5a:	4c0e      	ldr	r4, [pc, #56]	; (10003f94 <__libc_init_array+0x40>)
10003f5c:	2500      	movs	r5, #0
10003f5e:	1ae4      	subs	r4, r4, r3
10003f60:	10a4      	asrs	r4, r4, #2
10003f62:	42a5      	cmp	r5, r4
10003f64:	d004      	beq.n	10003f70 <__libc_init_array+0x1c>
10003f66:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
10003f6a:	4798      	blx	r3
10003f6c:	3501      	adds	r5, #1
10003f6e:	e7f8      	b.n	10003f62 <__libc_init_array+0xe>
10003f70:	f000 f890 	bl	10004094 <_init>
10003f74:	4b08      	ldr	r3, [pc, #32]	; (10003f98 <__libc_init_array+0x44>)
10003f76:	4c09      	ldr	r4, [pc, #36]	; (10003f9c <__libc_init_array+0x48>)
10003f78:	461e      	mov	r6, r3
10003f7a:	1ae4      	subs	r4, r4, r3
10003f7c:	10a4      	asrs	r4, r4, #2
10003f7e:	2500      	movs	r5, #0
10003f80:	42a5      	cmp	r5, r4
10003f82:	d004      	beq.n	10003f8e <__libc_init_array+0x3a>
10003f84:	f856 3025 	ldr.w	r3, [r6, r5, lsl #2]
10003f88:	4798      	blx	r3
10003f8a:	3501      	adds	r5, #1
10003f8c:	e7f8      	b.n	10003f80 <__libc_init_array+0x2c>
10003f8e:	bd70      	pop	{r4, r5, r6, pc}
10003f90:	10004094 	.word	0x10004094
10003f94:	10004094 	.word	0x10004094
10003f98:	100040a0 	.word	0x100040a0
10003f9c:	100040a4 	.word	0x100040a4

10003fa0 <g_APinDescription>:
10003fa0:	00000006 00000000 00000000 00000007     ................
	...
10003fb8:	00000005 00000000 00000000 00000034     ............4...
	...
10003fd0:	00000035 00000000 00000000 00000004     5...............
	...
10003fe8:	00000003 00000000 00000000 00000002     ................
	...
10004000:	00000014 00000000 00000000 00000015     ................
	...
10004018:	00000020 00000000 00000000 00000022      ..........."...
	...
10004030:	00000023 00000000 00000000 00000021     #...........!...
	...
10004048:	00000013 00000000 00000000 00000012     ................
	...
10004060:	00000001 00000000 00000000 00000000     ................
	...
10004078:	00000045 00000000 00000000              E...........

10004084 <z.7624>:
10004084:	1f123bb5                                .;..

10004088 <y.7623>:
10004088:	000587c4                                ....

1000408c <c.7625>:
1000408c:	0074cbb1                                ..t.

10004090 <SystemCoreClock>:
10004090:	09ef21a9                                .!..

10004094 <_init>:
10004094:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
10004096:	bf00      	nop
10004098:	bcf8      	pop	{r3, r4, r5, r6, r7}
1000409a:	bc08      	pop	{r3}
1000409c:	469e      	mov	lr, r3
1000409e:	4770      	bx	lr

100040a0 <__init_array_start>:
100040a0:	10003dd5 	.word	0x10003dd5

100040a4 <_fini>:
100040a4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
100040a6:	bf00      	nop
100040a8:	bcf8      	pop	{r3, r4, r5, r6, r7}
100040aa:	bc08      	pop	{r3}
100040ac:	469e      	mov	lr, r3
100040ae:	4770      	bx	lr

100040b0 <__GPIO_PullCtrl_8195a_veneer>:
100040b0:	b401      	push	{r0}
100040b2:	4802      	ldr	r0, [pc, #8]	; (100040bc <__GPIO_PullCtrl_8195a_veneer+0xc>)
100040b4:	4684      	mov	ip, r0
100040b6:	bc01      	pop	{r0}
100040b8:	4760      	bx	ip
100040ba:	bf00      	nop
100040bc:	0000d39d 	.word	0x0000d39d

100040c0 <__HAL_GPIO_WritePin_8195a_veneer>:
100040c0:	b401      	push	{r0}
100040c2:	4802      	ldr	r0, [pc, #8]	; (100040cc <__HAL_GPIO_WritePin_8195a_veneer+0xc>)
100040c4:	4684      	mov	ip, r0
100040c6:	bc01      	pop	{r0}
100040c8:	4760      	bx	ip
100040ca:	bf00      	nop
100040cc:	0000dc91 	.word	0x0000dc91

100040d0 <__HAL_GPIO_UserRegIrq_8195a_veneer>:
100040d0:	b401      	push	{r0}
100040d2:	4802      	ldr	r0, [pc, #8]	; (100040dc <__HAL_GPIO_UserRegIrq_8195a_veneer+0xc>)
100040d4:	4684      	mov	ip, r0
100040d6:	bc01      	pop	{r0}
100040d8:	4760      	bx	ip
100040da:	bf00      	nop
100040dc:	0000de15 	.word	0x0000de15

100040e0 <__HAL_GPIO_UserUnRegIrq_8195a_veneer>:
100040e0:	b401      	push	{r0}
100040e2:	4802      	ldr	r0, [pc, #8]	; (100040ec <__HAL_GPIO_UserUnRegIrq_8195a_veneer+0xc>)
100040e4:	4684      	mov	ip, r0
100040e6:	bc01      	pop	{r0}
100040e8:	4760      	bx	ip
100040ea:	bf00      	nop
100040ec:	0000def9 	.word	0x0000def9

100040f0 <__HAL_GPIO_GetIPPinName_8195a_veneer>:
100040f0:	b401      	push	{r0}
100040f2:	4802      	ldr	r0, [pc, #8]	; (100040fc <__HAL_GPIO_GetIPPinName_8195a_veneer+0xc>)
100040f4:	4684      	mov	ip, r0
100040f6:	bc01      	pop	{r0}
100040f8:	4760      	bx	ip
100040fa:	bf00      	nop
100040fc:	0000e1c1 	.word	0x0000e1c1

10004100 <__HAL_GPIO_UnMaskIrq_8195a_veneer>:
10004100:	b401      	push	{r0}
10004102:	4802      	ldr	r0, [pc, #8]	; (1000410c <__HAL_GPIO_UnMaskIrq_8195a_veneer+0xc>)
10004104:	4684      	mov	ip, r0
10004106:	bc01      	pop	{r0}
10004108:	4760      	bx	ip
1000410a:	bf00      	nop
1000410c:	0000e061 	.word	0x0000e061

10004110 <__HAL_GPIO_DeInit_8195a_veneer>:
10004110:	b401      	push	{r0}
10004112:	4802      	ldr	r0, [pc, #8]	; (1000411c <__HAL_GPIO_DeInit_8195a_veneer+0xc>)
10004114:	4684      	mov	ip, r0
10004116:	bc01      	pop	{r0}
10004118:	4760      	bx	ip
1000411a:	bf00      	nop
1000411c:	0000dac1 	.word	0x0000dac1

10004120 <__HAL_GPIO_MaskIrq_8195a_veneer>:
10004120:	b401      	push	{r0}
10004122:	4802      	ldr	r0, [pc, #8]	; (1000412c <__HAL_GPIO_MaskIrq_8195a_veneer+0xc>)
10004124:	4684      	mov	ip, r0
10004126:	bc01      	pop	{r0}
10004128:	4760      	bx	ip
1000412a:	bf00      	nop
1000412c:	0000dfc1 	.word	0x0000dfc1

10004130 <__HAL_GPIO_IntCtrl_8195a_veneer>:
10004130:	b401      	push	{r0}
10004132:	4802      	ldr	r0, [pc, #8]	; (1000413c <__HAL_GPIO_IntCtrl_8195a_veneer+0xc>)
10004134:	4684      	mov	ip, r0
10004136:	bc01      	pop	{r0}
10004138:	4760      	bx	ip
1000413a:	bf00      	nop
1000413c:	0000d6cd 	.word	0x0000d6cd

10004140 <__HAL_GPIO_UnRegIrq_8195a_veneer>:
10004140:	b401      	push	{r0}
10004142:	4802      	ldr	r0, [pc, #8]	; (1000414c <__HAL_GPIO_UnRegIrq_8195a_veneer+0xc>)
10004144:	4684      	mov	ip, r0
10004146:	bc01      	pop	{r0}
10004148:	4760      	bx	ip
1000414a:	bf00      	nop
1000414c:	0000ddf5 	.word	0x0000ddf5

10004150 <__HAL_GPIO_ReadPin_8195a_veneer>:
10004150:	b401      	push	{r0}
10004152:	4802      	ldr	r0, [pc, #8]	; (1000415c <__HAL_GPIO_ReadPin_8195a_veneer+0xc>)
10004154:	4684      	mov	ip, r0
10004156:	bc01      	pop	{r0}
10004158:	4760      	bx	ip
1000415a:	bf00      	nop
1000415c:	0000dbd1 	.word	0x0000dbd1

10004160 <__HalGetCpuClk_veneer>:
10004160:	b401      	push	{r0}
10004162:	4802      	ldr	r0, [pc, #8]	; (1000416c <__HalGetCpuClk_veneer+0xc>)
10004164:	4684      	mov	ip, r0
10004166:	bc01      	pop	{r0}
10004168:	4760      	bx	ip
1000416a:	bf00      	nop
1000416c:	00000355 	.word	0x00000355

10004170 <__HalDelayUs_veneer>:
10004170:	b401      	push	{r0}
10004172:	4802      	ldr	r0, [pc, #8]	; (1000417c <__HalDelayUs_veneer+0xc>)
10004174:	4684      	mov	ip, r0
10004176:	bc01      	pop	{r0}
10004178:	4760      	bx	ip
1000417a:	bf00      	nop
1000417c:	00000899 	.word	0x00000899

10004180 <__HAL_GPIO_Init_8195a_veneer>:
10004180:	b401      	push	{r0}
10004182:	4802      	ldr	r0, [pc, #8]	; (1000418c <__HAL_GPIO_Init_8195a_veneer+0xc>)
10004184:	4684      	mov	ip, r0
10004186:	bc01      	pop	{r0}
10004188:	4760      	bx	ip
1000418a:	bf00      	nop
1000418c:	0000d805 	.word	0x0000d805

10004190 <__HAL_GPIO_RegIrq_8195a_veneer>:
10004190:	b401      	push	{r0}
10004192:	4802      	ldr	r0, [pc, #8]	; (1000419c <__HAL_GPIO_RegIrq_8195a_veneer+0xc>)
10004194:	4684      	mov	ip, r0
10004196:	bc01      	pop	{r0}
10004198:	4760      	bx	ip
1000419a:	bf00      	nop
1000419c:	0000ddad 	.word	0x0000ddad

100041a0 <__do_global_dtors_aux_fini_array_entry>:
100041a0:	10003dad                                .=..

100041a4 <__EH_FRAME_BEGIN__>:
100041a4:	00000000                                ....

100041a8 <__JCR_END__>:
100041a8:	00000000                                ....
