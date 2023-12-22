
main.out:     file format elf32-littlearm


Disassembly of section .text:

00000000 <deregister_tm_clones>:
   0:	4804      	ldr	r0, [pc, #16]	; (14 <deregister_tm_clones+0x14>)
   2:	4b05      	ldr	r3, [pc, #20]	; (18 <deregister_tm_clones+0x18>)
   4:	b510      	push	{r4, lr}
   6:	4283      	cmp	r3, r0
   8:	d003      	beq.n	12 <deregister_tm_clones+0x12>
   a:	4b04      	ldr	r3, [pc, #16]	; (1c <deregister_tm_clones+0x1c>)
   c:	2b00      	cmp	r3, #0
   e:	d000      	beq.n	12 <deregister_tm_clones+0x12>
  10:	4798      	blx	r3
  12:	bd10      	pop	{r4, pc}
  14:	20000870 	.word	0x20000870
  18:	20000870 	.word	0x20000870
  1c:	00000000 	.word	0x00000000

00000020 <register_tm_clones>:
  20:	4806      	ldr	r0, [pc, #24]	; (3c <register_tm_clones+0x1c>)
  22:	4907      	ldr	r1, [pc, #28]	; (40 <register_tm_clones+0x20>)
  24:	1a09      	subs	r1, r1, r0
  26:	108b      	asrs	r3, r1, #2
  28:	0fc9      	lsrs	r1, r1, #31
  2a:	18c9      	adds	r1, r1, r3
  2c:	b510      	push	{r4, lr}
  2e:	1049      	asrs	r1, r1, #1
  30:	d003      	beq.n	3a <register_tm_clones+0x1a>
  32:	4b04      	ldr	r3, [pc, #16]	; (44 <register_tm_clones+0x24>)
  34:	2b00      	cmp	r3, #0
  36:	d000      	beq.n	3a <register_tm_clones+0x1a>
  38:	4798      	blx	r3
  3a:	bd10      	pop	{r4, pc}
  3c:	20000870 	.word	0x20000870
  40:	20000870 	.word	0x20000870
  44:	00000000 	.word	0x00000000

00000048 <__do_global_dtors_aux>:
  48:	b510      	push	{r4, lr}
  4a:	4c07      	ldr	r4, [pc, #28]	; (68 <__do_global_dtors_aux+0x20>)
  4c:	7823      	ldrb	r3, [r4, #0]
  4e:	2b00      	cmp	r3, #0
  50:	d109      	bne.n	66 <__do_global_dtors_aux+0x1e>
  52:	f7ff ffd5 	bl	0 <deregister_tm_clones>
  56:	4b05      	ldr	r3, [pc, #20]	; (6c <__do_global_dtors_aux+0x24>)
  58:	2b00      	cmp	r3, #0
  5a:	d002      	beq.n	62 <__do_global_dtors_aux+0x1a>
  5c:	4804      	ldr	r0, [pc, #16]	; (70 <__do_global_dtors_aux+0x28>)
  5e:	e000      	b.n	62 <__do_global_dtors_aux+0x1a>
  60:	bf00      	nop
  62:	2301      	movs	r3, #1
  64:	7023      	strb	r3, [r4, #0]
  66:	bd10      	pop	{r4, pc}
  68:	20000870 	.word	0x20000870
  6c:	00000000 	.word	0x00000000
  70:	00000e54 	.word	0x00000e54

00000074 <frame_dummy>:
  74:	4b05      	ldr	r3, [pc, #20]	; (8c <frame_dummy+0x18>)
  76:	b510      	push	{r4, lr}
  78:	2b00      	cmp	r3, #0
  7a:	d003      	beq.n	84 <frame_dummy+0x10>
  7c:	4904      	ldr	r1, [pc, #16]	; (90 <frame_dummy+0x1c>)
  7e:	4805      	ldr	r0, [pc, #20]	; (94 <frame_dummy+0x20>)
  80:	e000      	b.n	84 <frame_dummy+0x10>
  82:	bf00      	nop
  84:	f7ff ffcc 	bl	20 <register_tm_clones>
  88:	bd10      	pop	{r4, pc}
  8a:	46c0      	nop			; (mov r8, r8)
  8c:	00000000 	.word	0x00000000
  90:	20000874 	.word	0x20000874
  94:	00000e54 	.word	0x00000e54

00000098 <_stack_init>:
  98:	2240      	movs	r2, #64	; 0x40
  9a:	0292      	lsls	r2, r2, #10
  9c:	1a9a      	subs	r2, r3, r2
  9e:	4692      	mov	sl, r2
  a0:	4770      	bx	lr
  a2:	46c0      	nop			; (mov r8, r8)

000000a4 <_mainCRTStartup>:
  a4:	4b15      	ldr	r3, [pc, #84]	; (fc <_mainCRTStartup+0x58>)
  a6:	2b00      	cmp	r3, #0
  a8:	d100      	bne.n	ac <_mainCRTStartup+0x8>
  aa:	4b11      	ldr	r3, [pc, #68]	; (f0 <_mainCRTStartup+0x4c>)
  ac:	469d      	mov	sp, r3
  ae:	f7ff fff3 	bl	98 <_stack_init>
  b2:	2100      	movs	r1, #0
  b4:	468b      	mov	fp, r1
  b6:	460f      	mov	r7, r1
  b8:	4811      	ldr	r0, [pc, #68]	; (100 <_mainCRTStartup+0x5c>)
  ba:	4a12      	ldr	r2, [pc, #72]	; (104 <_mainCRTStartup+0x60>)
  bc:	1a12      	subs	r2, r2, r0
  be:	f000 fba5 	bl	80c <memset>
  c2:	4b0c      	ldr	r3, [pc, #48]	; (f4 <_mainCRTStartup+0x50>)
  c4:	2b00      	cmp	r3, #0
  c6:	d000      	beq.n	ca <_mainCRTStartup+0x26>
  c8:	4798      	blx	r3
  ca:	4b0b      	ldr	r3, [pc, #44]	; (f8 <_mainCRTStartup+0x54>)
  cc:	2b00      	cmp	r3, #0
  ce:	d000      	beq.n	d2 <_mainCRTStartup+0x2e>
  d0:	4798      	blx	r3
  d2:	2000      	movs	r0, #0
  d4:	2100      	movs	r1, #0
  d6:	0004      	movs	r4, r0
  d8:	000d      	movs	r5, r1
  da:	480b      	ldr	r0, [pc, #44]	; (108 <_mainCRTStartup+0x64>)
  dc:	f000 f87a 	bl	1d4 <atexit>
  e0:	f000 f8a4 	bl	22c <__libc_init_array>
  e4:	0020      	movs	r0, r4
  e6:	0029      	movs	r1, r5
  e8:	f000 f810 	bl	10c <main>
  ec:	f000 f87a 	bl	1e4 <exit>
  f0:	00080000 	.word	0x00080000
	...
  fc:	200008d8 	.word	0x200008d8
 100:	20000870 	.word	0x20000870
 104:	200008d4 	.word	0x200008d4
 108:	00000205 	.word	0x00000205

0000010c <main>:
 10c:	b590      	push	{r4, r7, lr}
 10e:	b083      	sub	sp, #12
 110:	af00      	add	r7, sp, #0
 112:	230c      	movs	r3, #12
 114:	603b      	str	r3, [r7, #0]
 116:	232d      	movs	r3, #45	; 0x2d
 118:	001a      	movs	r2, r3
 11a:	0013      	movs	r3, r2
 11c:	009b      	lsls	r3, r3, #2
 11e:	189b      	adds	r3, r3, r2
 120:	005b      	lsls	r3, r3, #1
 122:	0018      	movs	r0, r3
 124:	f000 f8a4 	bl	270 <malloc>
 128:	0003      	movs	r3, r0
 12a:	607b      	str	r3, [r7, #4]
 12c:	687b      	ldr	r3, [r7, #4]
 12e:	2b00      	cmp	r3, #0
 130:	d102      	bne.n	138 <main+0x2c>
 132:	2301      	movs	r3, #1
 134:	425b      	negs	r3, r3
 136:	e00f      	b.n	158 <main+0x4c>
 138:	2400      	movs	r4, #0
 13a:	e009      	b.n	150 <main+0x44>
 13c:	687b      	ldr	r3, [r7, #4]
 13e:	0018      	movs	r0, r3
 140:	f000 f810 	bl	164 <func>
 144:	0002      	movs	r2, r0
 146:	4b06      	ldr	r3, [pc, #24]	; (160 <main+0x54>)
 148:	601a      	str	r2, [r3, #0]
 14a:	683b      	ldr	r3, [r7, #0]
 14c:	3301      	adds	r3, #1
 14e:	603b      	str	r3, [r7, #0]
 150:	232d      	movs	r3, #45	; 0x2d
 152:	429c      	cmp	r4, r3
 154:	dbf2      	blt.n	13c <main+0x30>
 156:	2300      	movs	r3, #0
 158:	0018      	movs	r0, r3
 15a:	46bd      	mov	sp, r7
 15c:	b003      	add	sp, #12
 15e:	bd90      	pop	{r4, r7, pc}
 160:	2000088c 	.word	0x2000088c

00000164 <func>:
 164:	b580      	push	{r7, lr}
 166:	b084      	sub	sp, #16
 168:	af00      	add	r7, sp, #0
 16a:	6078      	str	r0, [r7, #4]
 16c:	2300      	movs	r3, #0
 16e:	60fb      	str	r3, [r7, #12]
 170:	4b15      	ldr	r3, [pc, #84]	; (1c8 <func+0x64>)
 172:	60bb      	str	r3, [r7, #8]
 174:	4b15      	ldr	r3, [pc, #84]	; (1cc <func+0x68>)
 176:	681b      	ldr	r3, [r3, #0]
 178:	1c5a      	adds	r2, r3, #1
 17a:	4b14      	ldr	r3, [pc, #80]	; (1cc <func+0x68>)
 17c:	601a      	str	r2, [r3, #0]
 17e:	4b13      	ldr	r3, [pc, #76]	; (1cc <func+0x68>)
 180:	681b      	ldr	r3, [r3, #0]
 182:	009a      	lsls	r2, r3, #2
 184:	4b12      	ldr	r3, [pc, #72]	; (1d0 <func+0x6c>)
 186:	18d3      	adds	r3, r2, r3
 188:	68fa      	ldr	r2, [r7, #12]
 18a:	601a      	str	r2, [r3, #0]
 18c:	2300      	movs	r3, #0
 18e:	60fb      	str	r3, [r7, #12]
 190:	e011      	b.n	1b6 <func+0x52>
 192:	68ba      	ldr	r2, [r7, #8]
 194:	68fb      	ldr	r3, [r7, #12]
 196:	18d3      	adds	r3, r2, r3
 198:	781b      	ldrb	r3, [r3, #0]
 19a:	b2db      	uxtb	r3, r3
 19c:	0019      	movs	r1, r3
 19e:	4b0c      	ldr	r3, [pc, #48]	; (1d0 <func+0x6c>)
 1a0:	68fa      	ldr	r2, [r7, #12]
 1a2:	0092      	lsls	r2, r2, #2
 1a4:	50d1      	str	r1, [r2, r3]
 1a6:	4b09      	ldr	r3, [pc, #36]	; (1cc <func+0x68>)
 1a8:	681b      	ldr	r3, [r3, #0]
 1aa:	1c5a      	adds	r2, r3, #1
 1ac:	4b07      	ldr	r3, [pc, #28]	; (1cc <func+0x68>)
 1ae:	601a      	str	r2, [r3, #0]
 1b0:	68fb      	ldr	r3, [r7, #12]
 1b2:	3301      	adds	r3, #1
 1b4:	60fb      	str	r3, [r7, #12]
 1b6:	68fb      	ldr	r3, [r7, #12]
 1b8:	2b05      	cmp	r3, #5
 1ba:	d9ea      	bls.n	192 <func+0x2e>
 1bc:	4b03      	ldr	r3, [pc, #12]	; (1cc <func+0x68>)
 1be:	681b      	ldr	r3, [r3, #0]
 1c0:	0018      	movs	r0, r3
 1c2:	46bd      	mov	sp, r7
 1c4:	b004      	add	sp, #16
 1c6:	bd80      	pop	{r7, pc}
 1c8:	00000e1c 	.word	0x00000e1c
 1cc:	20000894 	.word	0x20000894
 1d0:	20000008 	.word	0x20000008

000001d4 <atexit>:
 1d4:	b510      	push	{r4, lr}
 1d6:	0001      	movs	r1, r0
 1d8:	2300      	movs	r3, #0
 1da:	2200      	movs	r2, #0
 1dc:	2000      	movs	r0, #0
 1de:	f000 fb7f 	bl	8e0 <__register_exitproc>
 1e2:	bd10      	pop	{r4, pc}

000001e4 <exit>:
 1e4:	b510      	push	{r4, lr}
 1e6:	2100      	movs	r1, #0
 1e8:	0004      	movs	r4, r0
 1ea:	f000 fbbd 	bl	968 <__call_exitprocs>
 1ee:	4b04      	ldr	r3, [pc, #16]	; (200 <exit+0x1c>)
 1f0:	6818      	ldr	r0, [r3, #0]
 1f2:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
 1f4:	2b00      	cmp	r3, #0
 1f6:	d000      	beq.n	1fa <exit+0x16>
 1f8:	4798      	blx	r3
 1fa:	0020      	movs	r0, r4
 1fc:	f000 fdda 	bl	db4 <_exit>
 200:	00000e2c 	.word	0x00000e2c

00000204 <__libc_fini_array>:
 204:	b570      	push	{r4, r5, r6, lr}
 206:	4d07      	ldr	r5, [pc, #28]	; (224 <__libc_fini_array+0x20>)
 208:	4c07      	ldr	r4, [pc, #28]	; (228 <__libc_fini_array+0x24>)
 20a:	1b64      	subs	r4, r4, r5
 20c:	10a4      	asrs	r4, r4, #2
 20e:	d005      	beq.n	21c <__libc_fini_array+0x18>
 210:	3c01      	subs	r4, #1
 212:	00a3      	lsls	r3, r4, #2
 214:	58eb      	ldr	r3, [r5, r3]
 216:	4798      	blx	r3
 218:	2c00      	cmp	r4, #0
 21a:	d1f9      	bne.n	210 <__libc_fini_array+0xc>
 21c:	f000 fde2 	bl	de4 <_fini>
 220:	bd70      	pop	{r4, r5, r6, pc}
 222:	46c0      	nop			; (mov r8, r8)
	...

0000022c <__libc_init_array>:
 22c:	b570      	push	{r4, r5, r6, lr}
 22e:	4d0c      	ldr	r5, [pc, #48]	; (260 <__libc_init_array+0x34>)
 230:	4e0c      	ldr	r6, [pc, #48]	; (264 <__libc_init_array+0x38>)
 232:	1b76      	subs	r6, r6, r5
 234:	10b6      	asrs	r6, r6, #2
 236:	d005      	beq.n	244 <__libc_init_array+0x18>
 238:	2400      	movs	r4, #0
 23a:	cd08      	ldmia	r5!, {r3}
 23c:	3401      	adds	r4, #1
 23e:	4798      	blx	r3
 240:	42a6      	cmp	r6, r4
 242:	d1fa      	bne.n	23a <__libc_init_array+0xe>
 244:	f000 fdc8 	bl	dd8 <_init>
 248:	4d07      	ldr	r5, [pc, #28]	; (268 <__libc_init_array+0x3c>)
 24a:	4e08      	ldr	r6, [pc, #32]	; (26c <__libc_init_array+0x40>)
 24c:	1b76      	subs	r6, r6, r5
 24e:	10b6      	asrs	r6, r6, #2
 250:	d005      	beq.n	25e <__libc_init_array+0x32>
 252:	2400      	movs	r4, #0
 254:	cd08      	ldmia	r5!, {r3}
 256:	3401      	adds	r4, #1
 258:	4798      	blx	r3
 25a:	42a6      	cmp	r6, r4
 25c:	d1fa      	bne.n	254 <__libc_init_array+0x28>
 25e:	bd70      	pop	{r4, r5, r6, pc}
	...
 268:	00000dd0 	.word	0x00000dd0
 26c:	00000dd8 	.word	0x00000dd8

00000270 <malloc>:
 270:	b510      	push	{r4, lr}
 272:	4b03      	ldr	r3, [pc, #12]	; (280 <malloc+0x10>)
 274:	0001      	movs	r1, r0
 276:	6818      	ldr	r0, [r3, #0]
 278:	f000 f80e 	bl	298 <_malloc_r>
 27c:	bd10      	pop	{r4, pc}
 27e:	46c0      	nop			; (mov r8, r8)
 280:	20000030 	.word	0x20000030

00000284 <free>:
 284:	b510      	push	{r4, lr}
 286:	4b03      	ldr	r3, [pc, #12]	; (294 <free+0x10>)
 288:	0001      	movs	r1, r0
 28a:	6818      	ldr	r0, [r3, #0]
 28c:	f000 fc2a 	bl	ae4 <_free_r>
 290:	bd10      	pop	{r4, pc}
 292:	46c0      	nop			; (mov r8, r8)
 294:	20000030 	.word	0x20000030

00000298 <_malloc_r>:
 298:	b5f0      	push	{r4, r5, r6, r7, lr}
 29a:	464e      	mov	r6, r9
 29c:	4645      	mov	r5, r8
 29e:	46de      	mov	lr, fp
 2a0:	4657      	mov	r7, sl
 2a2:	b5e0      	push	{r5, r6, r7, lr}
 2a4:	000d      	movs	r5, r1
 2a6:	350b      	adds	r5, #11
 2a8:	0006      	movs	r6, r0
 2aa:	b083      	sub	sp, #12
 2ac:	2d16      	cmp	r5, #22
 2ae:	d822      	bhi.n	2f6 <_malloc_r+0x5e>
 2b0:	2910      	cmp	r1, #16
 2b2:	d900      	bls.n	2b6 <_malloc_r+0x1e>
 2b4:	e0b2      	b.n	41c <_malloc_r+0x184>
 2b6:	f000 fafd 	bl	8b4 <__malloc_lock>
 2ba:	2510      	movs	r5, #16
 2bc:	2318      	movs	r3, #24
 2be:	2002      	movs	r0, #2
 2c0:	4fcc      	ldr	r7, [pc, #816]	; (5f4 <_malloc_r+0x35c>)
 2c2:	18fb      	adds	r3, r7, r3
 2c4:	001a      	movs	r2, r3
 2c6:	685c      	ldr	r4, [r3, #4]
 2c8:	3a08      	subs	r2, #8
 2ca:	4294      	cmp	r4, r2
 2cc:	d100      	bne.n	2d0 <_malloc_r+0x38>
 2ce:	e0b5      	b.n	43c <_malloc_r+0x1a4>
 2d0:	2303      	movs	r3, #3
 2d2:	6862      	ldr	r2, [r4, #4]
 2d4:	439a      	bics	r2, r3
 2d6:	0013      	movs	r3, r2
 2d8:	68e2      	ldr	r2, [r4, #12]
 2da:	68a1      	ldr	r1, [r4, #8]
 2dc:	60ca      	str	r2, [r1, #12]
 2de:	6091      	str	r1, [r2, #8]
 2e0:	2201      	movs	r2, #1
 2e2:	18e3      	adds	r3, r4, r3
 2e4:	6859      	ldr	r1, [r3, #4]
 2e6:	0030      	movs	r0, r6
 2e8:	430a      	orrs	r2, r1
 2ea:	605a      	str	r2, [r3, #4]
 2ec:	f000 fae4 	bl	8b8 <__malloc_unlock>
 2f0:	0020      	movs	r0, r4
 2f2:	3008      	adds	r0, #8
 2f4:	e095      	b.n	422 <_malloc_r+0x18a>
 2f6:	2307      	movs	r3, #7
 2f8:	439d      	bics	r5, r3
 2fa:	d500      	bpl.n	2fe <_malloc_r+0x66>
 2fc:	e08e      	b.n	41c <_malloc_r+0x184>
 2fe:	42a9      	cmp	r1, r5
 300:	d900      	bls.n	304 <_malloc_r+0x6c>
 302:	e08b      	b.n	41c <_malloc_r+0x184>
 304:	f000 fad6 	bl	8b4 <__malloc_lock>
 308:	23fc      	movs	r3, #252	; 0xfc
 30a:	005b      	lsls	r3, r3, #1
 30c:	429d      	cmp	r5, r3
 30e:	d200      	bcs.n	312 <_malloc_r+0x7a>
 310:	e1a1      	b.n	656 <_malloc_r+0x3be>
 312:	0a68      	lsrs	r0, r5, #9
 314:	d100      	bne.n	318 <_malloc_r+0x80>
 316:	e08b      	b.n	430 <_malloc_r+0x198>
 318:	2804      	cmp	r0, #4
 31a:	d900      	bls.n	31e <_malloc_r+0x86>
 31c:	e174      	b.n	608 <_malloc_r+0x370>
 31e:	2338      	movs	r3, #56	; 0x38
 320:	4698      	mov	r8, r3
 322:	09a8      	lsrs	r0, r5, #6
 324:	4480      	add	r8, r0
 326:	3039      	adds	r0, #57	; 0x39
 328:	00c1      	lsls	r1, r0, #3
 32a:	4fb2      	ldr	r7, [pc, #712]	; (5f4 <_malloc_r+0x35c>)
 32c:	1879      	adds	r1, r7, r1
 32e:	684c      	ldr	r4, [r1, #4]
 330:	3908      	subs	r1, #8
 332:	42a1      	cmp	r1, r4
 334:	d00e      	beq.n	354 <_malloc_r+0xbc>
 336:	2303      	movs	r3, #3
 338:	469c      	mov	ip, r3
 33a:	e004      	b.n	346 <_malloc_r+0xae>
 33c:	2a00      	cmp	r2, #0
 33e:	dacb      	bge.n	2d8 <_malloc_r+0x40>
 340:	68e4      	ldr	r4, [r4, #12]
 342:	42a1      	cmp	r1, r4
 344:	d006      	beq.n	354 <_malloc_r+0xbc>
 346:	4662      	mov	r2, ip
 348:	6863      	ldr	r3, [r4, #4]
 34a:	4393      	bics	r3, r2
 34c:	1b5a      	subs	r2, r3, r5
 34e:	2a0f      	cmp	r2, #15
 350:	ddf4      	ble.n	33c <_malloc_r+0xa4>
 352:	4640      	mov	r0, r8
 354:	003a      	movs	r2, r7
 356:	693c      	ldr	r4, [r7, #16]
 358:	3208      	adds	r2, #8
 35a:	4294      	cmp	r4, r2
 35c:	d100      	bne.n	360 <_malloc_r+0xc8>
 35e:	e078      	b.n	452 <_malloc_r+0x1ba>
 360:	2303      	movs	r3, #3
 362:	6861      	ldr	r1, [r4, #4]
 364:	4399      	bics	r1, r3
 366:	4689      	mov	r9, r1
 368:	000b      	movs	r3, r1
 36a:	1b49      	subs	r1, r1, r5
 36c:	290f      	cmp	r1, #15
 36e:	dd00      	ble.n	372 <_malloc_r+0xda>
 370:	e175      	b.n	65e <_malloc_r+0x3c6>
 372:	617a      	str	r2, [r7, #20]
 374:	613a      	str	r2, [r7, #16]
 376:	2900      	cmp	r1, #0
 378:	dab2      	bge.n	2e0 <_malloc_r+0x48>
 37a:	2280      	movs	r2, #128	; 0x80
 37c:	0092      	lsls	r2, r2, #2
 37e:	4591      	cmp	r9, r2
 380:	d300      	bcc.n	384 <_malloc_r+0xec>
 382:	e110      	b.n	5a6 <_malloc_r+0x30e>
 384:	0959      	lsrs	r1, r3, #5
 386:	08da      	lsrs	r2, r3, #3
 388:	2301      	movs	r3, #1
 38a:	408b      	lsls	r3, r1
 38c:	00d2      	lsls	r2, r2, #3
 38e:	6879      	ldr	r1, [r7, #4]
 390:	19d2      	adds	r2, r2, r7
 392:	430b      	orrs	r3, r1
 394:	6891      	ldr	r1, [r2, #8]
 396:	607b      	str	r3, [r7, #4]
 398:	60e2      	str	r2, [r4, #12]
 39a:	60a1      	str	r1, [r4, #8]
 39c:	6094      	str	r4, [r2, #8]
 39e:	60cc      	str	r4, [r1, #12]
 3a0:	2101      	movs	r1, #1
 3a2:	1082      	asrs	r2, r0, #2
 3a4:	4091      	lsls	r1, r2
 3a6:	4299      	cmp	r1, r3
 3a8:	d859      	bhi.n	45e <_malloc_r+0x1c6>
 3aa:	420b      	tst	r3, r1
 3ac:	d105      	bne.n	3ba <_malloc_r+0x122>
 3ae:	2203      	movs	r2, #3
 3b0:	4390      	bics	r0, r2
 3b2:	0049      	lsls	r1, r1, #1
 3b4:	3004      	adds	r0, #4
 3b6:	420b      	tst	r3, r1
 3b8:	d0fb      	beq.n	3b2 <_malloc_r+0x11a>
 3ba:	2303      	movs	r3, #3
 3bc:	4698      	mov	r8, r3
 3be:	00c3      	lsls	r3, r0, #3
 3c0:	4699      	mov	r9, r3
 3c2:	44b9      	add	r9, r7
 3c4:	46cc      	mov	ip, r9
 3c6:	4682      	mov	sl, r0
 3c8:	4663      	mov	r3, ip
 3ca:	68dc      	ldr	r4, [r3, #12]
 3cc:	45a4      	cmp	ip, r4
 3ce:	d107      	bne.n	3e0 <_malloc_r+0x148>
 3d0:	e126      	b.n	620 <_malloc_r+0x388>
 3d2:	2a00      	cmp	r2, #0
 3d4:	db00      	blt.n	3d8 <_malloc_r+0x140>
 3d6:	e12f      	b.n	638 <_malloc_r+0x3a0>
 3d8:	68e4      	ldr	r4, [r4, #12]
 3da:	45a4      	cmp	ip, r4
 3dc:	d100      	bne.n	3e0 <_malloc_r+0x148>
 3de:	e11f      	b.n	620 <_malloc_r+0x388>
 3e0:	4642      	mov	r2, r8
 3e2:	6863      	ldr	r3, [r4, #4]
 3e4:	4393      	bics	r3, r2
 3e6:	1b5a      	subs	r2, r3, r5
 3e8:	2a0f      	cmp	r2, #15
 3ea:	ddf2      	ble.n	3d2 <_malloc_r+0x13a>
 3ec:	2001      	movs	r0, #1
 3ee:	4680      	mov	r8, r0
 3f0:	1961      	adds	r1, r4, r5
 3f2:	4305      	orrs	r5, r0
 3f4:	6065      	str	r5, [r4, #4]
 3f6:	68a0      	ldr	r0, [r4, #8]
 3f8:	68e5      	ldr	r5, [r4, #12]
 3fa:	3708      	adds	r7, #8
 3fc:	60c5      	str	r5, [r0, #12]
 3fe:	60a8      	str	r0, [r5, #8]
 400:	4640      	mov	r0, r8
 402:	4310      	orrs	r0, r2
 404:	60f9      	str	r1, [r7, #12]
 406:	60b9      	str	r1, [r7, #8]
 408:	6048      	str	r0, [r1, #4]
 40a:	60cf      	str	r7, [r1, #12]
 40c:	0030      	movs	r0, r6
 40e:	608f      	str	r7, [r1, #8]
 410:	50e2      	str	r2, [r4, r3]
 412:	f000 fa51 	bl	8b8 <__malloc_unlock>
 416:	0020      	movs	r0, r4
 418:	3008      	adds	r0, #8
 41a:	e002      	b.n	422 <_malloc_r+0x18a>
 41c:	230c      	movs	r3, #12
 41e:	2000      	movs	r0, #0
 420:	6033      	str	r3, [r6, #0]
 422:	b003      	add	sp, #12
 424:	bcf0      	pop	{r4, r5, r6, r7}
 426:	46bb      	mov	fp, r7
 428:	46b2      	mov	sl, r6
 42a:	46a9      	mov	r9, r5
 42c:	46a0      	mov	r8, r4
 42e:	bdf0      	pop	{r4, r5, r6, r7, pc}
 430:	2180      	movs	r1, #128	; 0x80
 432:	233f      	movs	r3, #63	; 0x3f
 434:	2040      	movs	r0, #64	; 0x40
 436:	4698      	mov	r8, r3
 438:	0089      	lsls	r1, r1, #2
 43a:	e776      	b.n	32a <_malloc_r+0x92>
 43c:	68dc      	ldr	r4, [r3, #12]
 43e:	3002      	adds	r0, #2
 440:	42a3      	cmp	r3, r4
 442:	d000      	beq.n	446 <_malloc_r+0x1ae>
 444:	e744      	b.n	2d0 <_malloc_r+0x38>
 446:	003a      	movs	r2, r7
 448:	693c      	ldr	r4, [r7, #16]
 44a:	3208      	adds	r2, #8
 44c:	4294      	cmp	r4, r2
 44e:	d000      	beq.n	452 <_malloc_r+0x1ba>
 450:	e786      	b.n	360 <_malloc_r+0xc8>
 452:	2101      	movs	r1, #1
 454:	687b      	ldr	r3, [r7, #4]
 456:	1082      	asrs	r2, r0, #2
 458:	4091      	lsls	r1, r2
 45a:	4299      	cmp	r1, r3
 45c:	d9a5      	bls.n	3aa <_malloc_r+0x112>
 45e:	2303      	movs	r3, #3
 460:	68bc      	ldr	r4, [r7, #8]
 462:	6862      	ldr	r2, [r4, #4]
 464:	439a      	bics	r2, r3
 466:	4691      	mov	r9, r2
 468:	4295      	cmp	r5, r2
 46a:	d803      	bhi.n	474 <_malloc_r+0x1dc>
 46c:	1b53      	subs	r3, r2, r5
 46e:	2b0f      	cmp	r3, #15
 470:	dd00      	ble.n	474 <_malloc_r+0x1dc>
 472:	e08a      	b.n	58a <_malloc_r+0x2f2>
 474:	0023      	movs	r3, r4
 476:	444b      	add	r3, r9
 478:	4a5f      	ldr	r2, [pc, #380]	; (5f8 <_malloc_r+0x360>)
 47a:	9301      	str	r3, [sp, #4]
 47c:	4b5f      	ldr	r3, [pc, #380]	; (5fc <_malloc_r+0x364>)
 47e:	4693      	mov	fp, r2
 480:	469a      	mov	sl, r3
 482:	6812      	ldr	r2, [r2, #0]
 484:	681b      	ldr	r3, [r3, #0]
 486:	18eb      	adds	r3, r5, r3
 488:	3201      	adds	r2, #1
 48a:	d100      	bne.n	48e <_malloc_r+0x1f6>
 48c:	e136      	b.n	6fc <_malloc_r+0x464>
 48e:	4a5c      	ldr	r2, [pc, #368]	; (600 <_malloc_r+0x368>)
 490:	4694      	mov	ip, r2
 492:	4463      	add	r3, ip
 494:	0b1b      	lsrs	r3, r3, #12
 496:	031b      	lsls	r3, r3, #12
 498:	9300      	str	r3, [sp, #0]
 49a:	0030      	movs	r0, r6
 49c:	9900      	ldr	r1, [sp, #0]
 49e:	f000 fa0d 	bl	8bc <_sbrk_r>
 4a2:	0003      	movs	r3, r0
 4a4:	4680      	mov	r8, r0
 4a6:	3301      	adds	r3, #1
 4a8:	d100      	bne.n	4ac <_malloc_r+0x214>
 4aa:	e0f3      	b.n	694 <_malloc_r+0x3fc>
 4ac:	9b01      	ldr	r3, [sp, #4]
 4ae:	4283      	cmp	r3, r0
 4b0:	d900      	bls.n	4b4 <_malloc_r+0x21c>
 4b2:	e0ed      	b.n	690 <_malloc_r+0x3f8>
 4b4:	4652      	mov	r2, sl
 4b6:	9800      	ldr	r0, [sp, #0]
 4b8:	6852      	ldr	r2, [r2, #4]
 4ba:	0003      	movs	r3, r0
 4bc:	4694      	mov	ip, r2
 4be:	4651      	mov	r1, sl
 4c0:	4463      	add	r3, ip
 4c2:	604b      	str	r3, [r1, #4]
 4c4:	9901      	ldr	r1, [sp, #4]
 4c6:	001a      	movs	r2, r3
 4c8:	4541      	cmp	r1, r8
 4ca:	d100      	bne.n	4ce <_malloc_r+0x236>
 4cc:	e14b      	b.n	766 <_malloc_r+0x4ce>
 4ce:	465b      	mov	r3, fp
 4d0:	681b      	ldr	r3, [r3, #0]
 4d2:	3301      	adds	r3, #1
 4d4:	d100      	bne.n	4d8 <_malloc_r+0x240>
 4d6:	e150      	b.n	77a <_malloc_r+0x4e2>
 4d8:	4643      	mov	r3, r8
 4da:	9901      	ldr	r1, [sp, #4]
 4dc:	1a5b      	subs	r3, r3, r1
 4de:	189a      	adds	r2, r3, r2
 4e0:	4653      	mov	r3, sl
 4e2:	605a      	str	r2, [r3, #4]
 4e4:	2307      	movs	r3, #7
 4e6:	4642      	mov	r2, r8
 4e8:	4641      	mov	r1, r8
 4ea:	401a      	ands	r2, r3
 4ec:	9201      	str	r2, [sp, #4]
 4ee:	4219      	tst	r1, r3
 4f0:	d100      	bne.n	4f4 <_malloc_r+0x25c>
 4f2:	e10d      	b.n	710 <_malloc_r+0x478>
 4f4:	2308      	movs	r3, #8
 4f6:	4698      	mov	r8, r3
 4f8:	1a88      	subs	r0, r1, r2
 4fa:	4b42      	ldr	r3, [pc, #264]	; (604 <_malloc_r+0x36c>)
 4fc:	9900      	ldr	r1, [sp, #0]
 4fe:	4480      	add	r8, r0
 500:	4441      	add	r1, r8
 502:	1a9b      	subs	r3, r3, r2
 504:	1a5b      	subs	r3, r3, r1
 506:	051b      	lsls	r3, r3, #20
 508:	0d1b      	lsrs	r3, r3, #20
 50a:	9100      	str	r1, [sp, #0]
 50c:	0030      	movs	r0, r6
 50e:	0019      	movs	r1, r3
 510:	469b      	mov	fp, r3
 512:	f000 f9d3 	bl	8bc <_sbrk_r>
 516:	1c43      	adds	r3, r0, #1
 518:	d100      	bne.n	51c <_malloc_r+0x284>
 51a:	e14a      	b.n	7b2 <_malloc_r+0x51a>
 51c:	4643      	mov	r3, r8
 51e:	1ac0      	subs	r0, r0, r3
 520:	0003      	movs	r3, r0
 522:	445b      	add	r3, fp
 524:	9300      	str	r3, [sp, #0]
 526:	4653      	mov	r3, sl
 528:	4652      	mov	r2, sl
 52a:	685b      	ldr	r3, [r3, #4]
 52c:	2101      	movs	r1, #1
 52e:	445b      	add	r3, fp
 530:	6053      	str	r3, [r2, #4]
 532:	4642      	mov	r2, r8
 534:	4640      	mov	r0, r8
 536:	60ba      	str	r2, [r7, #8]
 538:	9a00      	ldr	r2, [sp, #0]
 53a:	430a      	orrs	r2, r1
 53c:	6042      	str	r2, [r0, #4]
 53e:	42bc      	cmp	r4, r7
 540:	d100      	bne.n	544 <_malloc_r+0x2ac>
 542:	e11e      	b.n	782 <_malloc_r+0x4ea>
 544:	464a      	mov	r2, r9
 546:	2a0f      	cmp	r2, #15
 548:	d800      	bhi.n	54c <_malloc_r+0x2b4>
 54a:	e11c      	b.n	786 <_malloc_r+0x4ee>
 54c:	2007      	movs	r0, #7
 54e:	3a0c      	subs	r2, #12
 550:	4382      	bics	r2, r0
 552:	6860      	ldr	r0, [r4, #4]
 554:	4001      	ands	r1, r0
 556:	2005      	movs	r0, #5
 558:	4311      	orrs	r1, r2
 55a:	6061      	str	r1, [r4, #4]
 55c:	18a1      	adds	r1, r4, r2
 55e:	6048      	str	r0, [r1, #4]
 560:	6088      	str	r0, [r1, #8]
 562:	2a0f      	cmp	r2, #15
 564:	d900      	bls.n	568 <_malloc_r+0x2d0>
 566:	e12f      	b.n	7c8 <_malloc_r+0x530>
 568:	4642      	mov	r2, r8
 56a:	4644      	mov	r4, r8
 56c:	6852      	ldr	r2, [r2, #4]
 56e:	4651      	mov	r1, sl
 570:	6ac9      	ldr	r1, [r1, #44]	; 0x2c
 572:	4299      	cmp	r1, r3
 574:	d201      	bcs.n	57a <_malloc_r+0x2e2>
 576:	4651      	mov	r1, sl
 578:	62cb      	str	r3, [r1, #44]	; 0x2c
 57a:	4651      	mov	r1, sl
 57c:	6b09      	ldr	r1, [r1, #48]	; 0x30
 57e:	4299      	cmp	r1, r3
 580:	d300      	bcc.n	584 <_malloc_r+0x2ec>
 582:	e089      	b.n	698 <_malloc_r+0x400>
 584:	4651      	mov	r1, sl
 586:	630b      	str	r3, [r1, #48]	; 0x30
 588:	e086      	b.n	698 <_malloc_r+0x400>
 58a:	2201      	movs	r2, #1
 58c:	0029      	movs	r1, r5
 58e:	4313      	orrs	r3, r2
 590:	4311      	orrs	r1, r2
 592:	1965      	adds	r5, r4, r5
 594:	6061      	str	r1, [r4, #4]
 596:	0030      	movs	r0, r6
 598:	60bd      	str	r5, [r7, #8]
 59a:	606b      	str	r3, [r5, #4]
 59c:	f000 f98c 	bl	8b8 <__malloc_unlock>
 5a0:	0020      	movs	r0, r4
 5a2:	3008      	adds	r0, #8
 5a4:	e73d      	b.n	422 <_malloc_r+0x18a>
 5a6:	0a5a      	lsrs	r2, r3, #9
 5a8:	2a04      	cmp	r2, #4
 5aa:	d96b      	bls.n	684 <_malloc_r+0x3ec>
 5ac:	2a14      	cmp	r2, #20
 5ae:	d900      	bls.n	5b2 <_malloc_r+0x31a>
 5b0:	e0be      	b.n	730 <_malloc_r+0x498>
 5b2:	0011      	movs	r1, r2
 5b4:	325c      	adds	r2, #92	; 0x5c
 5b6:	315b      	adds	r1, #91	; 0x5b
 5b8:	00d2      	lsls	r2, r2, #3
 5ba:	2308      	movs	r3, #8
 5bc:	425b      	negs	r3, r3
 5be:	469c      	mov	ip, r3
 5c0:	18ba      	adds	r2, r7, r2
 5c2:	4494      	add	ip, r2
 5c4:	4663      	mov	r3, ip
 5c6:	689a      	ldr	r2, [r3, #8]
 5c8:	2303      	movs	r3, #3
 5ca:	4698      	mov	r8, r3
 5cc:	4594      	cmp	ip, r2
 5ce:	d100      	bne.n	5d2 <_malloc_r+0x33a>
 5d0:	e097      	b.n	702 <_malloc_r+0x46a>
 5d2:	4643      	mov	r3, r8
 5d4:	6851      	ldr	r1, [r2, #4]
 5d6:	4399      	bics	r1, r3
 5d8:	4549      	cmp	r1, r9
 5da:	d902      	bls.n	5e2 <_malloc_r+0x34a>
 5dc:	6892      	ldr	r2, [r2, #8]
 5de:	4594      	cmp	ip, r2
 5e0:	d1f7      	bne.n	5d2 <_malloc_r+0x33a>
 5e2:	68d3      	ldr	r3, [r2, #12]
 5e4:	469c      	mov	ip, r3
 5e6:	687b      	ldr	r3, [r7, #4]
 5e8:	4661      	mov	r1, ip
 5ea:	60a2      	str	r2, [r4, #8]
 5ec:	60e1      	str	r1, [r4, #12]
 5ee:	608c      	str	r4, [r1, #8]
 5f0:	60d4      	str	r4, [r2, #12]
 5f2:	e6d5      	b.n	3a0 <_malloc_r+0x108>
 5f4:	20000468 	.word	0x20000468
 5f8:	20000460 	.word	0x20000460
 5fc:	20000898 	.word	0x20000898
 600:	0000100f 	.word	0x0000100f
 604:	00001008 	.word	0x00001008
 608:	2814      	cmp	r0, #20
 60a:	d952      	bls.n	6b2 <_malloc_r+0x41a>
 60c:	2854      	cmp	r0, #84	; 0x54
 60e:	d900      	bls.n	612 <_malloc_r+0x37a>
 610:	e096      	b.n	740 <_malloc_r+0x4a8>
 612:	236e      	movs	r3, #110	; 0x6e
 614:	4698      	mov	r8, r3
 616:	0b28      	lsrs	r0, r5, #12
 618:	4480      	add	r8, r0
 61a:	306f      	adds	r0, #111	; 0x6f
 61c:	00c1      	lsls	r1, r0, #3
 61e:	e684      	b.n	32a <_malloc_r+0x92>
 620:	2308      	movs	r3, #8
 622:	469b      	mov	fp, r3
 624:	3b07      	subs	r3, #7
 626:	44dc      	add	ip, fp
 628:	469b      	mov	fp, r3
 62a:	44da      	add	sl, fp
 62c:	4643      	mov	r3, r8
 62e:	4652      	mov	r2, sl
 630:	4213      	tst	r3, r2
 632:	d000      	beq.n	636 <_malloc_r+0x39e>
 634:	e6c8      	b.n	3c8 <_malloc_r+0x130>
 636:	e04c      	b.n	6d2 <_malloc_r+0x43a>
 638:	2201      	movs	r2, #1
 63a:	18e3      	adds	r3, r4, r3
 63c:	6859      	ldr	r1, [r3, #4]
 63e:	0030      	movs	r0, r6
 640:	430a      	orrs	r2, r1
 642:	605a      	str	r2, [r3, #4]
 644:	68e3      	ldr	r3, [r4, #12]
 646:	68a2      	ldr	r2, [r4, #8]
 648:	60d3      	str	r3, [r2, #12]
 64a:	609a      	str	r2, [r3, #8]
 64c:	f000 f934 	bl	8b8 <__malloc_unlock>
 650:	0020      	movs	r0, r4
 652:	3008      	adds	r0, #8
 654:	e6e5      	b.n	422 <_malloc_r+0x18a>
 656:	002b      	movs	r3, r5
 658:	08e8      	lsrs	r0, r5, #3
 65a:	3308      	adds	r3, #8
 65c:	e630      	b.n	2c0 <_malloc_r+0x28>
 65e:	2301      	movs	r3, #1
 660:	1960      	adds	r0, r4, r5
 662:	431d      	orrs	r5, r3
 664:	6065      	str	r5, [r4, #4]
 666:	6178      	str	r0, [r7, #20]
 668:	6138      	str	r0, [r7, #16]
 66a:	60c2      	str	r2, [r0, #12]
 66c:	6082      	str	r2, [r0, #8]
 66e:	001a      	movs	r2, r3
 670:	464b      	mov	r3, r9
 672:	430a      	orrs	r2, r1
 674:	6042      	str	r2, [r0, #4]
 676:	0030      	movs	r0, r6
 678:	50e1      	str	r1, [r4, r3]
 67a:	f000 f91d 	bl	8b8 <__malloc_unlock>
 67e:	0020      	movs	r0, r4
 680:	3008      	adds	r0, #8
 682:	e6ce      	b.n	422 <_malloc_r+0x18a>
 684:	099a      	lsrs	r2, r3, #6
 686:	0011      	movs	r1, r2
 688:	3239      	adds	r2, #57	; 0x39
 68a:	3138      	adds	r1, #56	; 0x38
 68c:	00d2      	lsls	r2, r2, #3
 68e:	e794      	b.n	5ba <_malloc_r+0x322>
 690:	42bc      	cmp	r4, r7
 692:	d060      	beq.n	756 <_malloc_r+0x4be>
 694:	68bc      	ldr	r4, [r7, #8]
 696:	6862      	ldr	r2, [r4, #4]
 698:	2303      	movs	r3, #3
 69a:	439a      	bics	r2, r3
 69c:	1b53      	subs	r3, r2, r5
 69e:	4295      	cmp	r5, r2
 6a0:	d802      	bhi.n	6a8 <_malloc_r+0x410>
 6a2:	2b0f      	cmp	r3, #15
 6a4:	dd00      	ble.n	6a8 <_malloc_r+0x410>
 6a6:	e770      	b.n	58a <_malloc_r+0x2f2>
 6a8:	0030      	movs	r0, r6
 6aa:	f000 f905 	bl	8b8 <__malloc_unlock>
 6ae:	2000      	movs	r0, #0
 6b0:	e6b7      	b.n	422 <_malloc_r+0x18a>
 6b2:	235b      	movs	r3, #91	; 0x5b
 6b4:	4698      	mov	r8, r3
 6b6:	4480      	add	r8, r0
 6b8:	305c      	adds	r0, #92	; 0x5c
 6ba:	00c1      	lsls	r1, r0, #3
 6bc:	e635      	b.n	32a <_malloc_r+0x92>
 6be:	2308      	movs	r3, #8
 6c0:	425b      	negs	r3, r3
 6c2:	469c      	mov	ip, r3
 6c4:	44e1      	add	r9, ip
 6c6:	464b      	mov	r3, r9
 6c8:	689b      	ldr	r3, [r3, #8]
 6ca:	3801      	subs	r0, #1
 6cc:	454b      	cmp	r3, r9
 6ce:	d000      	beq.n	6d2 <_malloc_r+0x43a>
 6d0:	e097      	b.n	802 <_malloc_r+0x56a>
 6d2:	4643      	mov	r3, r8
 6d4:	4203      	tst	r3, r0
 6d6:	d1f2      	bne.n	6be <_malloc_r+0x426>
 6d8:	687b      	ldr	r3, [r7, #4]
 6da:	438b      	bics	r3, r1
 6dc:	607b      	str	r3, [r7, #4]
 6de:	0049      	lsls	r1, r1, #1
 6e0:	4299      	cmp	r1, r3
 6e2:	d900      	bls.n	6e6 <_malloc_r+0x44e>
 6e4:	e6bb      	b.n	45e <_malloc_r+0x1c6>
 6e6:	2900      	cmp	r1, #0
 6e8:	d104      	bne.n	6f4 <_malloc_r+0x45c>
 6ea:	e6b8      	b.n	45e <_malloc_r+0x1c6>
 6ec:	2204      	movs	r2, #4
 6ee:	4694      	mov	ip, r2
 6f0:	0049      	lsls	r1, r1, #1
 6f2:	44e2      	add	sl, ip
 6f4:	420b      	tst	r3, r1
 6f6:	d0f9      	beq.n	6ec <_malloc_r+0x454>
 6f8:	4650      	mov	r0, sl
 6fa:	e660      	b.n	3be <_malloc_r+0x126>
 6fc:	3310      	adds	r3, #16
 6fe:	9300      	str	r3, [sp, #0]
 700:	e6cb      	b.n	49a <_malloc_r+0x202>
 702:	1089      	asrs	r1, r1, #2
 704:	3b02      	subs	r3, #2
 706:	408b      	lsls	r3, r1
 708:	6879      	ldr	r1, [r7, #4]
 70a:	430b      	orrs	r3, r1
 70c:	607b      	str	r3, [r7, #4]
 70e:	e76b      	b.n	5e8 <_malloc_r+0x350>
 710:	9b00      	ldr	r3, [sp, #0]
 712:	0030      	movs	r0, r6
 714:	4443      	add	r3, r8
 716:	425b      	negs	r3, r3
 718:	051b      	lsls	r3, r3, #20
 71a:	0d1b      	lsrs	r3, r3, #20
 71c:	0019      	movs	r1, r3
 71e:	469b      	mov	fp, r3
 720:	f000 f8cc 	bl	8bc <_sbrk_r>
 724:	1c43      	adds	r3, r0, #1
 726:	d000      	beq.n	72a <_malloc_r+0x492>
 728:	e6f8      	b.n	51c <_malloc_r+0x284>
 72a:	2300      	movs	r3, #0
 72c:	469b      	mov	fp, r3
 72e:	e6fa      	b.n	526 <_malloc_r+0x28e>
 730:	2a54      	cmp	r2, #84	; 0x54
 732:	d82a      	bhi.n	78a <_malloc_r+0x4f2>
 734:	0b1a      	lsrs	r2, r3, #12
 736:	0011      	movs	r1, r2
 738:	326f      	adds	r2, #111	; 0x6f
 73a:	316e      	adds	r1, #110	; 0x6e
 73c:	00d2      	lsls	r2, r2, #3
 73e:	e73c      	b.n	5ba <_malloc_r+0x322>
 740:	23aa      	movs	r3, #170	; 0xaa
 742:	005b      	lsls	r3, r3, #1
 744:	4298      	cmp	r0, r3
 746:	d82a      	bhi.n	79e <_malloc_r+0x506>
 748:	3bdd      	subs	r3, #221	; 0xdd
 74a:	4698      	mov	r8, r3
 74c:	0be8      	lsrs	r0, r5, #15
 74e:	4480      	add	r8, r0
 750:	3078      	adds	r0, #120	; 0x78
 752:	00c1      	lsls	r1, r0, #3
 754:	e5e9      	b.n	32a <_malloc_r+0x92>
 756:	4653      	mov	r3, sl
 758:	685b      	ldr	r3, [r3, #4]
 75a:	9a00      	ldr	r2, [sp, #0]
 75c:	469c      	mov	ip, r3
 75e:	4653      	mov	r3, sl
 760:	4462      	add	r2, ip
 762:	605a      	str	r2, [r3, #4]
 764:	e6b3      	b.n	4ce <_malloc_r+0x236>
 766:	0509      	lsls	r1, r1, #20
 768:	d000      	beq.n	76c <_malloc_r+0x4d4>
 76a:	e6b0      	b.n	4ce <_malloc_r+0x236>
 76c:	0002      	movs	r2, r0
 76e:	68bc      	ldr	r4, [r7, #8]
 770:	444a      	add	r2, r9
 772:	3101      	adds	r1, #1
 774:	430a      	orrs	r2, r1
 776:	6062      	str	r2, [r4, #4]
 778:	e6f9      	b.n	56e <_malloc_r+0x2d6>
 77a:	465b      	mov	r3, fp
 77c:	4642      	mov	r2, r8
 77e:	601a      	str	r2, [r3, #0]
 780:	e6b0      	b.n	4e4 <_malloc_r+0x24c>
 782:	4644      	mov	r4, r8
 784:	e6f3      	b.n	56e <_malloc_r+0x2d6>
 786:	6041      	str	r1, [r0, #4]
 788:	e78e      	b.n	6a8 <_malloc_r+0x410>
 78a:	21aa      	movs	r1, #170	; 0xaa
 78c:	0049      	lsls	r1, r1, #1
 78e:	428a      	cmp	r2, r1
 790:	d824      	bhi.n	7dc <_malloc_r+0x544>
 792:	0bda      	lsrs	r2, r3, #15
 794:	0011      	movs	r1, r2
 796:	3278      	adds	r2, #120	; 0x78
 798:	3177      	adds	r1, #119	; 0x77
 79a:	00d2      	lsls	r2, r2, #3
 79c:	e70d      	b.n	5ba <_malloc_r+0x322>
 79e:	4b1a      	ldr	r3, [pc, #104]	; (808 <_malloc_r+0x570>)
 7a0:	4298      	cmp	r0, r3
 7a2:	d824      	bhi.n	7ee <_malloc_r+0x556>
 7a4:	237c      	movs	r3, #124	; 0x7c
 7a6:	4698      	mov	r8, r3
 7a8:	0ca8      	lsrs	r0, r5, #18
 7aa:	4480      	add	r8, r0
 7ac:	307d      	adds	r0, #125	; 0x7d
 7ae:	00c1      	lsls	r1, r0, #3
 7b0:	e5bb      	b.n	32a <_malloc_r+0x92>
 7b2:	9a00      	ldr	r2, [sp, #0]
 7b4:	9b01      	ldr	r3, [sp, #4]
 7b6:	4694      	mov	ip, r2
 7b8:	4642      	mov	r2, r8
 7ba:	3b08      	subs	r3, #8
 7bc:	4463      	add	r3, ip
 7be:	1a9b      	subs	r3, r3, r2
 7c0:	9300      	str	r3, [sp, #0]
 7c2:	2300      	movs	r3, #0
 7c4:	469b      	mov	fp, r3
 7c6:	e6ae      	b.n	526 <_malloc_r+0x28e>
 7c8:	0021      	movs	r1, r4
 7ca:	0030      	movs	r0, r6
 7cc:	3108      	adds	r1, #8
 7ce:	f000 f989 	bl	ae4 <_free_r>
 7d2:	4653      	mov	r3, sl
 7d4:	68bc      	ldr	r4, [r7, #8]
 7d6:	685b      	ldr	r3, [r3, #4]
 7d8:	6862      	ldr	r2, [r4, #4]
 7da:	e6c8      	b.n	56e <_malloc_r+0x2d6>
 7dc:	490a      	ldr	r1, [pc, #40]	; (808 <_malloc_r+0x570>)
 7de:	428a      	cmp	r2, r1
 7e0:	d80b      	bhi.n	7fa <_malloc_r+0x562>
 7e2:	0c9a      	lsrs	r2, r3, #18
 7e4:	0011      	movs	r1, r2
 7e6:	327d      	adds	r2, #125	; 0x7d
 7e8:	317c      	adds	r1, #124	; 0x7c
 7ea:	00d2      	lsls	r2, r2, #3
 7ec:	e6e5      	b.n	5ba <_malloc_r+0x322>
 7ee:	21fe      	movs	r1, #254	; 0xfe
 7f0:	237e      	movs	r3, #126	; 0x7e
 7f2:	207f      	movs	r0, #127	; 0x7f
 7f4:	4698      	mov	r8, r3
 7f6:	0089      	lsls	r1, r1, #2
 7f8:	e597      	b.n	32a <_malloc_r+0x92>
 7fa:	22fe      	movs	r2, #254	; 0xfe
 7fc:	217e      	movs	r1, #126	; 0x7e
 7fe:	0092      	lsls	r2, r2, #2
 800:	e6db      	b.n	5ba <_malloc_r+0x322>
 802:	687b      	ldr	r3, [r7, #4]
 804:	e76b      	b.n	6de <_malloc_r+0x446>
 806:	46c0      	nop			; (mov r8, r8)
 808:	00000554 	.word	0x00000554

0000080c <memset>:
 80c:	b5f0      	push	{r4, r5, r6, r7, lr}
 80e:	0005      	movs	r5, r0
 810:	0783      	lsls	r3, r0, #30
 812:	d049      	beq.n	8a8 <memset+0x9c>
 814:	1e54      	subs	r4, r2, #1
 816:	2a00      	cmp	r2, #0
 818:	d045      	beq.n	8a6 <memset+0x9a>
 81a:	0003      	movs	r3, r0
 81c:	2603      	movs	r6, #3
 81e:	b2ca      	uxtb	r2, r1
 820:	e002      	b.n	828 <memset+0x1c>
 822:	3501      	adds	r5, #1
 824:	3c01      	subs	r4, #1
 826:	d33e      	bcc.n	8a6 <memset+0x9a>
 828:	3301      	adds	r3, #1
 82a:	702a      	strb	r2, [r5, #0]
 82c:	4233      	tst	r3, r6
 82e:	d1f8      	bne.n	822 <memset+0x16>
 830:	2c03      	cmp	r4, #3
 832:	d930      	bls.n	896 <memset+0x8a>
 834:	22ff      	movs	r2, #255	; 0xff
 836:	400a      	ands	r2, r1
 838:	0215      	lsls	r5, r2, #8
 83a:	4315      	orrs	r5, r2
 83c:	042a      	lsls	r2, r5, #16
 83e:	4315      	orrs	r5, r2
 840:	2c0f      	cmp	r4, #15
 842:	d934      	bls.n	8ae <memset+0xa2>
 844:	0027      	movs	r7, r4
 846:	3f10      	subs	r7, #16
 848:	093f      	lsrs	r7, r7, #4
 84a:	013e      	lsls	r6, r7, #4
 84c:	46b4      	mov	ip, r6
 84e:	001e      	movs	r6, r3
 850:	001a      	movs	r2, r3
 852:	3610      	adds	r6, #16
 854:	4466      	add	r6, ip
 856:	6015      	str	r5, [r2, #0]
 858:	6055      	str	r5, [r2, #4]
 85a:	6095      	str	r5, [r2, #8]
 85c:	60d5      	str	r5, [r2, #12]
 85e:	3210      	adds	r2, #16
 860:	42b2      	cmp	r2, r6
 862:	d1f8      	bne.n	856 <memset+0x4a>
 864:	3701      	adds	r7, #1
 866:	013f      	lsls	r7, r7, #4
 868:	19db      	adds	r3, r3, r7
 86a:	270f      	movs	r7, #15
 86c:	220c      	movs	r2, #12
 86e:	4027      	ands	r7, r4
 870:	4022      	ands	r2, r4
 872:	003c      	movs	r4, r7
 874:	2a00      	cmp	r2, #0
 876:	d00e      	beq.n	896 <memset+0x8a>
 878:	1f3e      	subs	r6, r7, #4
 87a:	08b6      	lsrs	r6, r6, #2
 87c:	00b4      	lsls	r4, r6, #2
 87e:	46a4      	mov	ip, r4
 880:	001a      	movs	r2, r3
 882:	1d1c      	adds	r4, r3, #4
 884:	4464      	add	r4, ip
 886:	c220      	stmia	r2!, {r5}
 888:	42a2      	cmp	r2, r4
 88a:	d1fc      	bne.n	886 <memset+0x7a>
 88c:	2403      	movs	r4, #3
 88e:	3601      	adds	r6, #1
 890:	00b6      	lsls	r6, r6, #2
 892:	199b      	adds	r3, r3, r6
 894:	403c      	ands	r4, r7
 896:	2c00      	cmp	r4, #0
 898:	d005      	beq.n	8a6 <memset+0x9a>
 89a:	b2c9      	uxtb	r1, r1
 89c:	191c      	adds	r4, r3, r4
 89e:	7019      	strb	r1, [r3, #0]
 8a0:	3301      	adds	r3, #1
 8a2:	429c      	cmp	r4, r3
 8a4:	d1fb      	bne.n	89e <memset+0x92>
 8a6:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8a8:	0003      	movs	r3, r0
 8aa:	0014      	movs	r4, r2
 8ac:	e7c0      	b.n	830 <memset+0x24>
 8ae:	0027      	movs	r7, r4
 8b0:	e7e2      	b.n	878 <memset+0x6c>
 8b2:	46c0      	nop			; (mov r8, r8)

000008b4 <__malloc_lock>:
 8b4:	4770      	bx	lr
 8b6:	46c0      	nop			; (mov r8, r8)

000008b8 <__malloc_unlock>:
 8b8:	4770      	bx	lr
 8ba:	46c0      	nop			; (mov r8, r8)

000008bc <_sbrk_r>:
 8bc:	2300      	movs	r3, #0
 8be:	b570      	push	{r4, r5, r6, lr}
 8c0:	4d06      	ldr	r5, [pc, #24]	; (8dc <_sbrk_r+0x20>)
 8c2:	0004      	movs	r4, r0
 8c4:	0008      	movs	r0, r1
 8c6:	602b      	str	r3, [r5, #0]
 8c8:	f000 fa66 	bl	d98 <_sbrk>
 8cc:	1c43      	adds	r3, r0, #1
 8ce:	d000      	beq.n	8d2 <_sbrk_r+0x16>
 8d0:	bd70      	pop	{r4, r5, r6, pc}
 8d2:	682b      	ldr	r3, [r5, #0]
 8d4:	2b00      	cmp	r3, #0
 8d6:	d0fb      	beq.n	8d0 <_sbrk_r+0x14>
 8d8:	6023      	str	r3, [r4, #0]
 8da:	e7f9      	b.n	8d0 <_sbrk_r+0x14>
 8dc:	200008cc 	.word	0x200008cc

000008e0 <__register_exitproc>:
 8e0:	b5f0      	push	{r4, r5, r6, r7, lr}
 8e2:	46c6      	mov	lr, r8
 8e4:	b500      	push	{lr}
 8e6:	4c1f      	ldr	r4, [pc, #124]	; (964 <__register_exitproc+0x84>)
 8e8:	b082      	sub	sp, #8
 8ea:	6824      	ldr	r4, [r4, #0]
 8ec:	9401      	str	r4, [sp, #4]
 8ee:	24a4      	movs	r4, #164	; 0xa4
 8f0:	9d01      	ldr	r5, [sp, #4]
 8f2:	0064      	lsls	r4, r4, #1
 8f4:	592d      	ldr	r5, [r5, r4]
 8f6:	2d00      	cmp	r5, #0
 8f8:	d02b      	beq.n	952 <__register_exitproc+0x72>
 8fa:	686c      	ldr	r4, [r5, #4]
 8fc:	2c1f      	cmp	r4, #31
 8fe:	dc2e      	bgt.n	95e <__register_exitproc+0x7e>
 900:	2800      	cmp	r0, #0
 902:	d109      	bne.n	918 <__register_exitproc+0x38>
 904:	2000      	movs	r0, #0
 906:	1c63      	adds	r3, r4, #1
 908:	3402      	adds	r4, #2
 90a:	00a4      	lsls	r4, r4, #2
 90c:	606b      	str	r3, [r5, #4]
 90e:	5161      	str	r1, [r4, r5]
 910:	b002      	add	sp, #8
 912:	bc80      	pop	{r7}
 914:	46b8      	mov	r8, r7
 916:	bdf0      	pop	{r4, r5, r6, r7, pc}
 918:	2788      	movs	r7, #136	; 0x88
 91a:	00a6      	lsls	r6, r4, #2
 91c:	19ae      	adds	r6, r5, r6
 91e:	51f2      	str	r2, [r6, r7]
 920:	3701      	adds	r7, #1
 922:	37ff      	adds	r7, #255	; 0xff
 924:	46bc      	mov	ip, r7
 926:	2201      	movs	r2, #1
 928:	44ac      	add	ip, r5
 92a:	4667      	mov	r7, ip
 92c:	40a2      	lsls	r2, r4
 92e:	683f      	ldr	r7, [r7, #0]
 930:	4690      	mov	r8, r2
 932:	4317      	orrs	r7, r2
 934:	4662      	mov	r2, ip
 936:	6017      	str	r7, [r2, #0]
 938:	2784      	movs	r7, #132	; 0x84
 93a:	007f      	lsls	r7, r7, #1
 93c:	51f3      	str	r3, [r6, r7]
 93e:	2802      	cmp	r0, #2
 940:	d1e0      	bne.n	904 <__register_exitproc+0x24>
 942:	002b      	movs	r3, r5
 944:	4640      	mov	r0, r8
 946:	338d      	adds	r3, #141	; 0x8d
 948:	33ff      	adds	r3, #255	; 0xff
 94a:	681a      	ldr	r2, [r3, #0]
 94c:	4310      	orrs	r0, r2
 94e:	6018      	str	r0, [r3, #0]
 950:	e7d8      	b.n	904 <__register_exitproc+0x24>
 952:	9d01      	ldr	r5, [sp, #4]
 954:	9e01      	ldr	r6, [sp, #4]
 956:	354d      	adds	r5, #77	; 0x4d
 958:	35ff      	adds	r5, #255	; 0xff
 95a:	5135      	str	r5, [r6, r4]
 95c:	e7cd      	b.n	8fa <__register_exitproc+0x1a>
 95e:	2001      	movs	r0, #1
 960:	4240      	negs	r0, r0
 962:	e7d5      	b.n	910 <__register_exitproc+0x30>
 964:	00000e2c 	.word	0x00000e2c

00000968 <__call_exitprocs>:
 968:	b5f0      	push	{r4, r5, r6, r7, lr}
 96a:	464e      	mov	r6, r9
 96c:	46de      	mov	lr, fp
 96e:	4657      	mov	r7, sl
 970:	4645      	mov	r5, r8
 972:	22a4      	movs	r2, #164	; 0xa4
 974:	b5e0      	push	{r5, r6, r7, lr}
 976:	4b33      	ldr	r3, [pc, #204]	; (a44 <__call_exitprocs+0xdc>)
 978:	0052      	lsls	r2, r2, #1
 97a:	681b      	ldr	r3, [r3, #0]
 97c:	b083      	sub	sp, #12
 97e:	589e      	ldr	r6, [r3, r2]
 980:	4689      	mov	r9, r1
 982:	9001      	str	r0, [sp, #4]
 984:	9300      	str	r3, [sp, #0]
 986:	2e00      	cmp	r6, #0
 988:	d03d      	beq.n	a06 <__call_exitprocs+0x9e>
 98a:	6875      	ldr	r5, [r6, #4]
 98c:	1e6c      	subs	r4, r5, #1
 98e:	d43a      	bmi.n	a06 <__call_exitprocs+0x9e>
 990:	3501      	adds	r5, #1
 992:	00ad      	lsls	r5, r5, #2
 994:	002b      	movs	r3, r5
 996:	3380      	adds	r3, #128	; 0x80
 998:	4698      	mov	r8, r3
 99a:	23c4      	movs	r3, #196	; 0xc4
 99c:	005b      	lsls	r3, r3, #1
 99e:	469b      	mov	fp, r3
 9a0:	1977      	adds	r7, r6, r5
 9a2:	3501      	adds	r5, #1
 9a4:	35ff      	adds	r5, #255	; 0xff
 9a6:	44b0      	add	r8, r6
 9a8:	1975      	adds	r5, r6, r5
 9aa:	44b3      	add	fp, r6
 9ac:	e007      	b.n	9be <__call_exitprocs+0x56>
 9ae:	2304      	movs	r3, #4
 9b0:	425b      	negs	r3, r3
 9b2:	469c      	mov	ip, r3
 9b4:	3f04      	subs	r7, #4
 9b6:	44e0      	add	r8, ip
 9b8:	18ed      	adds	r5, r5, r3
 9ba:	3c01      	subs	r4, #1
 9bc:	d323      	bcc.n	a06 <__call_exitprocs+0x9e>
 9be:	464b      	mov	r3, r9
 9c0:	2b00      	cmp	r3, #0
 9c2:	d002      	beq.n	9ca <__call_exitprocs+0x62>
 9c4:	682b      	ldr	r3, [r5, #0]
 9c6:	454b      	cmp	r3, r9
 9c8:	d1f1      	bne.n	9ae <__call_exitprocs+0x46>
 9ca:	6873      	ldr	r3, [r6, #4]
 9cc:	683a      	ldr	r2, [r7, #0]
 9ce:	3b01      	subs	r3, #1
 9d0:	42a3      	cmp	r3, r4
 9d2:	d031      	beq.n	a38 <__call_exitprocs+0xd0>
 9d4:	2300      	movs	r3, #0
 9d6:	603b      	str	r3, [r7, #0]
 9d8:	2a00      	cmp	r2, #0
 9da:	d0e8      	beq.n	9ae <__call_exitprocs+0x46>
 9dc:	6873      	ldr	r3, [r6, #4]
 9de:	4659      	mov	r1, fp
 9e0:	469a      	mov	sl, r3
 9e2:	2301      	movs	r3, #1
 9e4:	40a3      	lsls	r3, r4
 9e6:	6809      	ldr	r1, [r1, #0]
 9e8:	4219      	tst	r1, r3
 9ea:	d113      	bne.n	a14 <__call_exitprocs+0xac>
 9ec:	4790      	blx	r2
 9ee:	6873      	ldr	r3, [r6, #4]
 9f0:	4553      	cmp	r3, sl
 9f2:	d11c      	bne.n	a2e <__call_exitprocs+0xc6>
 9f4:	22a4      	movs	r2, #164	; 0xa4
 9f6:	9b00      	ldr	r3, [sp, #0]
 9f8:	0052      	lsls	r2, r2, #1
 9fa:	589b      	ldr	r3, [r3, r2]
 9fc:	42b3      	cmp	r3, r6
 9fe:	d0d6      	beq.n	9ae <__call_exitprocs+0x46>
 a00:	001e      	movs	r6, r3
 a02:	2e00      	cmp	r6, #0
 a04:	d1c1      	bne.n	98a <__call_exitprocs+0x22>
 a06:	b003      	add	sp, #12
 a08:	bcf0      	pop	{r4, r5, r6, r7}
 a0a:	46bb      	mov	fp, r7
 a0c:	46b2      	mov	sl, r6
 a0e:	46a9      	mov	r9, r5
 a10:	46a0      	mov	r8, r4
 a12:	bdf0      	pop	{r4, r5, r6, r7, pc}
 a14:	0031      	movs	r1, r6
 a16:	318d      	adds	r1, #141	; 0x8d
 a18:	31ff      	adds	r1, #255	; 0xff
 a1a:	6809      	ldr	r1, [r1, #0]
 a1c:	4219      	tst	r1, r3
 a1e:	d10d      	bne.n	a3c <__call_exitprocs+0xd4>
 a20:	4643      	mov	r3, r8
 a22:	9801      	ldr	r0, [sp, #4]
 a24:	6819      	ldr	r1, [r3, #0]
 a26:	4790      	blx	r2
 a28:	6873      	ldr	r3, [r6, #4]
 a2a:	4553      	cmp	r3, sl
 a2c:	d0e2      	beq.n	9f4 <__call_exitprocs+0x8c>
 a2e:	22a4      	movs	r2, #164	; 0xa4
 a30:	9b00      	ldr	r3, [sp, #0]
 a32:	0052      	lsls	r2, r2, #1
 a34:	589e      	ldr	r6, [r3, r2]
 a36:	e7e4      	b.n	a02 <__call_exitprocs+0x9a>
 a38:	6074      	str	r4, [r6, #4]
 a3a:	e7cd      	b.n	9d8 <__call_exitprocs+0x70>
 a3c:	4643      	mov	r3, r8
 a3e:	6818      	ldr	r0, [r3, #0]
 a40:	4790      	blx	r2
 a42:	e7d4      	b.n	9ee <__call_exitprocs+0x86>
 a44:	00000e2c 	.word	0x00000e2c

00000a48 <_malloc_trim_r>:
 a48:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 a4a:	000c      	movs	r4, r1
 a4c:	0005      	movs	r5, r0
 a4e:	f7ff ff31 	bl	8b4 <__malloc_lock>
 a52:	4f20      	ldr	r7, [pc, #128]	; (ad4 <_malloc_trim_r+0x8c>)
 a54:	68bb      	ldr	r3, [r7, #8]
 a56:	685e      	ldr	r6, [r3, #4]
 a58:	2303      	movs	r3, #3
 a5a:	439e      	bics	r6, r3
 a5c:	4b1e      	ldr	r3, [pc, #120]	; (ad8 <_malloc_trim_r+0x90>)
 a5e:	1b34      	subs	r4, r6, r4
 a60:	469c      	mov	ip, r3
 a62:	4464      	add	r4, ip
 a64:	0b24      	lsrs	r4, r4, #12
 a66:	3c01      	subs	r4, #1
 a68:	3311      	adds	r3, #17
 a6a:	0324      	lsls	r4, r4, #12
 a6c:	429c      	cmp	r4, r3
 a6e:	db07      	blt.n	a80 <_malloc_trim_r+0x38>
 a70:	2100      	movs	r1, #0
 a72:	0028      	movs	r0, r5
 a74:	f7ff ff22 	bl	8bc <_sbrk_r>
 a78:	68bb      	ldr	r3, [r7, #8]
 a7a:	199b      	adds	r3, r3, r6
 a7c:	4298      	cmp	r0, r3
 a7e:	d004      	beq.n	a8a <_malloc_trim_r+0x42>
 a80:	0028      	movs	r0, r5
 a82:	f7ff ff19 	bl	8b8 <__malloc_unlock>
 a86:	2000      	movs	r0, #0
 a88:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}
 a8a:	0028      	movs	r0, r5
 a8c:	4261      	negs	r1, r4
 a8e:	f7ff ff15 	bl	8bc <_sbrk_r>
 a92:	1c43      	adds	r3, r0, #1
 a94:	d00d      	beq.n	ab2 <_malloc_trim_r+0x6a>
 a96:	2201      	movs	r2, #1
 a98:	68bb      	ldr	r3, [r7, #8]
 a9a:	1b36      	subs	r6, r6, r4
 a9c:	4316      	orrs	r6, r2
 a9e:	605e      	str	r6, [r3, #4]
 aa0:	4b0e      	ldr	r3, [pc, #56]	; (adc <_malloc_trim_r+0x94>)
 aa2:	0028      	movs	r0, r5
 aa4:	681a      	ldr	r2, [r3, #0]
 aa6:	1b14      	subs	r4, r2, r4
 aa8:	601c      	str	r4, [r3, #0]
 aaa:	f7ff ff05 	bl	8b8 <__malloc_unlock>
 aae:	2001      	movs	r0, #1
 ab0:	e7ea      	b.n	a88 <_malloc_trim_r+0x40>
 ab2:	2100      	movs	r1, #0
 ab4:	0028      	movs	r0, r5
 ab6:	f7ff ff01 	bl	8bc <_sbrk_r>
 aba:	68ba      	ldr	r2, [r7, #8]
 abc:	1a83      	subs	r3, r0, r2
 abe:	2b0f      	cmp	r3, #15
 ac0:	ddde      	ble.n	a80 <_malloc_trim_r+0x38>
 ac2:	4907      	ldr	r1, [pc, #28]	; (ae0 <_malloc_trim_r+0x98>)
 ac4:	6809      	ldr	r1, [r1, #0]
 ac6:	1a40      	subs	r0, r0, r1
 ac8:	4904      	ldr	r1, [pc, #16]	; (adc <_malloc_trim_r+0x94>)
 aca:	6008      	str	r0, [r1, #0]
 acc:	2101      	movs	r1, #1
 ace:	430b      	orrs	r3, r1
 ad0:	6053      	str	r3, [r2, #4]
 ad2:	e7d5      	b.n	a80 <_malloc_trim_r+0x38>
 ad4:	20000468 	.word	0x20000468
 ad8:	00000fef 	.word	0x00000fef
 adc:	2000089c 	.word	0x2000089c
 ae0:	20000460 	.word	0x20000460

00000ae4 <_free_r>:
 ae4:	b5f0      	push	{r4, r5, r6, r7, lr}
 ae6:	46c6      	mov	lr, r8
 ae8:	0005      	movs	r5, r0
 aea:	000c      	movs	r4, r1
 aec:	b500      	push	{lr}
 aee:	2900      	cmp	r1, #0
 af0:	d04f      	beq.n	b92 <_free_r+0xae>
 af2:	f7ff fedf 	bl	8b4 <__malloc_lock>
 af6:	0021      	movs	r1, r4
 af8:	3908      	subs	r1, #8
 afa:	684c      	ldr	r4, [r1, #4]
 afc:	2601      	movs	r6, #1
 afe:	0022      	movs	r2, r4
 b00:	2003      	movs	r0, #3
 b02:	43b2      	bics	r2, r6
 b04:	188f      	adds	r7, r1, r2
 b06:	687b      	ldr	r3, [r7, #4]
 b08:	4383      	bics	r3, r0
 b0a:	4862      	ldr	r0, [pc, #392]	; (c94 <_free_r+0x1b0>)
 b0c:	4698      	mov	r8, r3
 b0e:	6883      	ldr	r3, [r0, #8]
 b10:	42bb      	cmp	r3, r7
 b12:	d06a      	beq.n	bea <_free_r+0x106>
 b14:	4643      	mov	r3, r8
 b16:	607b      	str	r3, [r7, #4]
 b18:	4226      	tst	r6, r4
 b1a:	d11e      	bne.n	b5a <_free_r+0x76>
 b1c:	2308      	movs	r3, #8
 b1e:	469c      	mov	ip, r3
 b20:	680c      	ldr	r4, [r1, #0]
 b22:	4484      	add	ip, r0
 b24:	1b09      	subs	r1, r1, r4
 b26:	1912      	adds	r2, r2, r4
 b28:	688c      	ldr	r4, [r1, #8]
 b2a:	4564      	cmp	r4, ip
 b2c:	d04f      	beq.n	bce <_free_r+0xea>
 b2e:	68cb      	ldr	r3, [r1, #12]
 b30:	60e3      	str	r3, [r4, #12]
 b32:	609c      	str	r4, [r3, #8]
 b34:	4643      	mov	r3, r8
 b36:	18fc      	adds	r4, r7, r3
 b38:	6864      	ldr	r4, [r4, #4]
 b3a:	4234      	tst	r4, r6
 b3c:	d111      	bne.n	b62 <_free_r+0x7e>
 b3e:	68bb      	ldr	r3, [r7, #8]
 b40:	4c55      	ldr	r4, [pc, #340]	; (c98 <_free_r+0x1b4>)
 b42:	4442      	add	r2, r8
 b44:	42a3      	cmp	r3, r4
 b46:	d100      	bne.n	b4a <_free_r+0x66>
 b48:	e07e      	b.n	c48 <_free_r+0x164>
 b4a:	68fc      	ldr	r4, [r7, #12]
 b4c:	60dc      	str	r4, [r3, #12]
 b4e:	60a3      	str	r3, [r4, #8]
 b50:	2301      	movs	r3, #1
 b52:	4313      	orrs	r3, r2
 b54:	604b      	str	r3, [r1, #4]
 b56:	508a      	str	r2, [r1, r2]
 b58:	e006      	b.n	b68 <_free_r+0x84>
 b5a:	18fc      	adds	r4, r7, r3
 b5c:	6864      	ldr	r4, [r4, #4]
 b5e:	4234      	tst	r4, r6
 b60:	d0ed      	beq.n	b3e <_free_r+0x5a>
 b62:	4316      	orrs	r6, r2
 b64:	604e      	str	r6, [r1, #4]
 b66:	603a      	str	r2, [r7, #0]
 b68:	2380      	movs	r3, #128	; 0x80
 b6a:	009b      	lsls	r3, r3, #2
 b6c:	429a      	cmp	r2, r3
 b6e:	d213      	bcs.n	b98 <_free_r+0xb4>
 b70:	0954      	lsrs	r4, r2, #5
 b72:	08d3      	lsrs	r3, r2, #3
 b74:	2201      	movs	r2, #1
 b76:	40a2      	lsls	r2, r4
 b78:	6844      	ldr	r4, [r0, #4]
 b7a:	00db      	lsls	r3, r3, #3
 b7c:	4322      	orrs	r2, r4
 b7e:	6042      	str	r2, [r0, #4]
 b80:	1818      	adds	r0, r3, r0
 b82:	6883      	ldr	r3, [r0, #8]
 b84:	60c8      	str	r0, [r1, #12]
 b86:	608b      	str	r3, [r1, #8]
 b88:	6081      	str	r1, [r0, #8]
 b8a:	60d9      	str	r1, [r3, #12]
 b8c:	0028      	movs	r0, r5
 b8e:	f7ff fe93 	bl	8b8 <__malloc_unlock>
 b92:	bc80      	pop	{r7}
 b94:	46b8      	mov	r8, r7
 b96:	bdf0      	pop	{r4, r5, r6, r7, pc}
 b98:	0a53      	lsrs	r3, r2, #9
 b9a:	2b04      	cmp	r3, #4
 b9c:	d83e      	bhi.n	c1c <_free_r+0x138>
 b9e:	0994      	lsrs	r4, r2, #6
 ba0:	0026      	movs	r6, r4
 ba2:	3439      	adds	r4, #57	; 0x39
 ba4:	3638      	adds	r6, #56	; 0x38
 ba6:	00e4      	lsls	r4, r4, #3
 ba8:	1904      	adds	r4, r0, r4
 baa:	6823      	ldr	r3, [r4, #0]
 bac:	3c08      	subs	r4, #8
 bae:	2703      	movs	r7, #3
 bb0:	429c      	cmp	r4, r3
 bb2:	d042      	beq.n	c3a <_free_r+0x156>
 bb4:	6858      	ldr	r0, [r3, #4]
 bb6:	43b8      	bics	r0, r7
 bb8:	4290      	cmp	r0, r2
 bba:	d902      	bls.n	bc2 <_free_r+0xde>
 bbc:	689b      	ldr	r3, [r3, #8]
 bbe:	429c      	cmp	r4, r3
 bc0:	d1f8      	bne.n	bb4 <_free_r+0xd0>
 bc2:	68dc      	ldr	r4, [r3, #12]
 bc4:	60cc      	str	r4, [r1, #12]
 bc6:	608b      	str	r3, [r1, #8]
 bc8:	60a1      	str	r1, [r4, #8]
 bca:	60d9      	str	r1, [r3, #12]
 bcc:	e7de      	b.n	b8c <_free_r+0xa8>
 bce:	4643      	mov	r3, r8
 bd0:	18f8      	adds	r0, r7, r3
 bd2:	6840      	ldr	r0, [r0, #4]
 bd4:	4230      	tst	r0, r6
 bd6:	d157      	bne.n	c88 <_free_r+0x1a4>
 bd8:	68fb      	ldr	r3, [r7, #12]
 bda:	68b8      	ldr	r0, [r7, #8]
 bdc:	4442      	add	r2, r8
 bde:	4316      	orrs	r6, r2
 be0:	60c3      	str	r3, [r0, #12]
 be2:	6098      	str	r0, [r3, #8]
 be4:	604e      	str	r6, [r1, #4]
 be6:	508a      	str	r2, [r1, r2]
 be8:	e7d0      	b.n	b8c <_free_r+0xa8>
 bea:	0013      	movs	r3, r2
 bec:	4443      	add	r3, r8
 bee:	4226      	tst	r6, r4
 bf0:	d106      	bne.n	c00 <_free_r+0x11c>
 bf2:	680a      	ldr	r2, [r1, #0]
 bf4:	1a89      	subs	r1, r1, r2
 bf6:	688c      	ldr	r4, [r1, #8]
 bf8:	189b      	adds	r3, r3, r2
 bfa:	68ca      	ldr	r2, [r1, #12]
 bfc:	60e2      	str	r2, [r4, #12]
 bfe:	6094      	str	r4, [r2, #8]
 c00:	2201      	movs	r2, #1
 c02:	431a      	orrs	r2, r3
 c04:	604a      	str	r2, [r1, #4]
 c06:	4a25      	ldr	r2, [pc, #148]	; (c9c <_free_r+0x1b8>)
 c08:	6081      	str	r1, [r0, #8]
 c0a:	6812      	ldr	r2, [r2, #0]
 c0c:	429a      	cmp	r2, r3
 c0e:	d8bd      	bhi.n	b8c <_free_r+0xa8>
 c10:	4b23      	ldr	r3, [pc, #140]	; (ca0 <_free_r+0x1bc>)
 c12:	0028      	movs	r0, r5
 c14:	6819      	ldr	r1, [r3, #0]
 c16:	f7ff ff17 	bl	a48 <_malloc_trim_r>
 c1a:	e7b7      	b.n	b8c <_free_r+0xa8>
 c1c:	2b14      	cmp	r3, #20
 c1e:	d907      	bls.n	c30 <_free_r+0x14c>
 c20:	2b54      	cmp	r3, #84	; 0x54
 c22:	d81a      	bhi.n	c5a <_free_r+0x176>
 c24:	0b14      	lsrs	r4, r2, #12
 c26:	0026      	movs	r6, r4
 c28:	346f      	adds	r4, #111	; 0x6f
 c2a:	366e      	adds	r6, #110	; 0x6e
 c2c:	00e4      	lsls	r4, r4, #3
 c2e:	e7bb      	b.n	ba8 <_free_r+0xc4>
 c30:	001e      	movs	r6, r3
 c32:	335c      	adds	r3, #92	; 0x5c
 c34:	365b      	adds	r6, #91	; 0x5b
 c36:	00dc      	lsls	r4, r3, #3
 c38:	e7b6      	b.n	ba8 <_free_r+0xc4>
 c3a:	2201      	movs	r2, #1
 c3c:	10b6      	asrs	r6, r6, #2
 c3e:	40b2      	lsls	r2, r6
 c40:	6846      	ldr	r6, [r0, #4]
 c42:	4332      	orrs	r2, r6
 c44:	6042      	str	r2, [r0, #4]
 c46:	e7bd      	b.n	bc4 <_free_r+0xe0>
 c48:	60d9      	str	r1, [r3, #12]
 c4a:	6099      	str	r1, [r3, #8]
 c4c:	60cb      	str	r3, [r1, #12]
 c4e:	608b      	str	r3, [r1, #8]
 c50:	2301      	movs	r3, #1
 c52:	4313      	orrs	r3, r2
 c54:	604b      	str	r3, [r1, #4]
 c56:	508a      	str	r2, [r1, r2]
 c58:	e798      	b.n	b8c <_free_r+0xa8>
 c5a:	24aa      	movs	r4, #170	; 0xaa
 c5c:	0064      	lsls	r4, r4, #1
 c5e:	42a3      	cmp	r3, r4
 c60:	d805      	bhi.n	c6e <_free_r+0x18a>
 c62:	0bd4      	lsrs	r4, r2, #15
 c64:	0026      	movs	r6, r4
 c66:	3478      	adds	r4, #120	; 0x78
 c68:	3677      	adds	r6, #119	; 0x77
 c6a:	00e4      	lsls	r4, r4, #3
 c6c:	e79c      	b.n	ba8 <_free_r+0xc4>
 c6e:	4c0d      	ldr	r4, [pc, #52]	; (ca4 <_free_r+0x1c0>)
 c70:	42a3      	cmp	r3, r4
 c72:	d805      	bhi.n	c80 <_free_r+0x19c>
 c74:	0c94      	lsrs	r4, r2, #18
 c76:	0026      	movs	r6, r4
 c78:	347d      	adds	r4, #125	; 0x7d
 c7a:	367c      	adds	r6, #124	; 0x7c
 c7c:	00e4      	lsls	r4, r4, #3
 c7e:	e793      	b.n	ba8 <_free_r+0xc4>
 c80:	24fe      	movs	r4, #254	; 0xfe
 c82:	267e      	movs	r6, #126	; 0x7e
 c84:	00a4      	lsls	r4, r4, #2
 c86:	e78f      	b.n	ba8 <_free_r+0xc4>
 c88:	0033      	movs	r3, r6
 c8a:	4313      	orrs	r3, r2
 c8c:	604b      	str	r3, [r1, #4]
 c8e:	603a      	str	r2, [r7, #0]
 c90:	e77c      	b.n	b8c <_free_r+0xa8>
 c92:	46c0      	nop			; (mov r8, r8)
 c94:	20000468 	.word	0x20000468
 c98:	20000470 	.word	0x20000470
 c9c:	20000464 	.word	0x20000464
 ca0:	20000898 	.word	0x20000898
 ca4:	00000554 	.word	0x00000554

00000ca8 <cleanup_glue>:
 ca8:	b5f0      	push	{r4, r5, r6, r7, lr}
 caa:	46c6      	mov	lr, r8
 cac:	680e      	ldr	r6, [r1, #0]
 cae:	0004      	movs	r4, r0
 cb0:	000d      	movs	r5, r1
 cb2:	b500      	push	{lr}
 cb4:	2e00      	cmp	r6, #0
 cb6:	d017      	beq.n	ce8 <cleanup_glue+0x40>
 cb8:	6837      	ldr	r7, [r6, #0]
 cba:	2f00      	cmp	r7, #0
 cbc:	d010      	beq.n	ce0 <cleanup_glue+0x38>
 cbe:	683b      	ldr	r3, [r7, #0]
 cc0:	4698      	mov	r8, r3
 cc2:	2b00      	cmp	r3, #0
 cc4:	d008      	beq.n	cd8 <cleanup_glue+0x30>
 cc6:	6819      	ldr	r1, [r3, #0]
 cc8:	2900      	cmp	r1, #0
 cca:	d001      	beq.n	cd0 <cleanup_glue+0x28>
 ccc:	f7ff ffec 	bl	ca8 <cleanup_glue>
 cd0:	4641      	mov	r1, r8
 cd2:	0020      	movs	r0, r4
 cd4:	f7ff ff06 	bl	ae4 <_free_r>
 cd8:	0039      	movs	r1, r7
 cda:	0020      	movs	r0, r4
 cdc:	f7ff ff02 	bl	ae4 <_free_r>
 ce0:	0031      	movs	r1, r6
 ce2:	0020      	movs	r0, r4
 ce4:	f7ff fefe 	bl	ae4 <_free_r>
 ce8:	0029      	movs	r1, r5
 cea:	0020      	movs	r0, r4
 cec:	f7ff fefa 	bl	ae4 <_free_r>
 cf0:	bc80      	pop	{r7}
 cf2:	46b8      	mov	r8, r7
 cf4:	bdf0      	pop	{r4, r5, r6, r7, pc}
 cf6:	46c0      	nop			; (mov r8, r8)

00000cf8 <_reclaim_reent>:
 cf8:	4b26      	ldr	r3, [pc, #152]	; (d94 <_reclaim_reent+0x9c>)
 cfa:	b570      	push	{r4, r5, r6, lr}
 cfc:	681b      	ldr	r3, [r3, #0]
 cfe:	0005      	movs	r5, r0
 d00:	4283      	cmp	r3, r0
 d02:	d046      	beq.n	d92 <_reclaim_reent+0x9a>
 d04:	6cc1      	ldr	r1, [r0, #76]	; 0x4c
 d06:	2900      	cmp	r1, #0
 d08:	d011      	beq.n	d2e <_reclaim_reent+0x36>
 d0a:	2600      	movs	r6, #0
 d0c:	598c      	ldr	r4, [r1, r6]
 d0e:	2c00      	cmp	r4, #0
 d10:	d007      	beq.n	d22 <_reclaim_reent+0x2a>
 d12:	0021      	movs	r1, r4
 d14:	6824      	ldr	r4, [r4, #0]
 d16:	0028      	movs	r0, r5
 d18:	f7ff fee4 	bl	ae4 <_free_r>
 d1c:	2c00      	cmp	r4, #0
 d1e:	d1f8      	bne.n	d12 <_reclaim_reent+0x1a>
 d20:	6ce9      	ldr	r1, [r5, #76]	; 0x4c
 d22:	3604      	adds	r6, #4
 d24:	2e80      	cmp	r6, #128	; 0x80
 d26:	d1f1      	bne.n	d0c <_reclaim_reent+0x14>
 d28:	0028      	movs	r0, r5
 d2a:	f7ff fedb 	bl	ae4 <_free_r>
 d2e:	6c29      	ldr	r1, [r5, #64]	; 0x40
 d30:	2900      	cmp	r1, #0
 d32:	d002      	beq.n	d3a <_reclaim_reent+0x42>
 d34:	0028      	movs	r0, r5
 d36:	f7ff fed5 	bl	ae4 <_free_r>
 d3a:	23a4      	movs	r3, #164	; 0xa4
 d3c:	005b      	lsls	r3, r3, #1
 d3e:	58ec      	ldr	r4, [r5, r3]
 d40:	2c00      	cmp	r4, #0
 d42:	d00b      	beq.n	d5c <_reclaim_reent+0x64>
 d44:	002e      	movs	r6, r5
 d46:	364d      	adds	r6, #77	; 0x4d
 d48:	36ff      	adds	r6, #255	; 0xff
 d4a:	42b4      	cmp	r4, r6
 d4c:	d006      	beq.n	d5c <_reclaim_reent+0x64>
 d4e:	0021      	movs	r1, r4
 d50:	6824      	ldr	r4, [r4, #0]
 d52:	0028      	movs	r0, r5
 d54:	f7ff fec6 	bl	ae4 <_free_r>
 d58:	42a6      	cmp	r6, r4
 d5a:	d1f8      	bne.n	d4e <_reclaim_reent+0x56>
 d5c:	6d69      	ldr	r1, [r5, #84]	; 0x54
 d5e:	2900      	cmp	r1, #0
 d60:	d002      	beq.n	d68 <_reclaim_reent+0x70>
 d62:	0028      	movs	r0, r5
 d64:	f7ff febe 	bl	ae4 <_free_r>
 d68:	6bab      	ldr	r3, [r5, #56]	; 0x38
 d6a:	2b00      	cmp	r3, #0
 d6c:	d011      	beq.n	d92 <_reclaim_reent+0x9a>
 d6e:	6beb      	ldr	r3, [r5, #60]	; 0x3c
 d70:	0028      	movs	r0, r5
 d72:	4798      	blx	r3
 d74:	23b8      	movs	r3, #184	; 0xb8
 d76:	009b      	lsls	r3, r3, #2
 d78:	58ec      	ldr	r4, [r5, r3]
 d7a:	2c00      	cmp	r4, #0
 d7c:	d009      	beq.n	d92 <_reclaim_reent+0x9a>
 d7e:	6821      	ldr	r1, [r4, #0]
 d80:	2900      	cmp	r1, #0
 d82:	d002      	beq.n	d8a <_reclaim_reent+0x92>
 d84:	0028      	movs	r0, r5
 d86:	f7ff ff8f 	bl	ca8 <cleanup_glue>
 d8a:	0021      	movs	r1, r4
 d8c:	0028      	movs	r0, r5
 d8e:	f7ff fea9 	bl	ae4 <_free_r>
 d92:	bd70      	pop	{r4, r5, r6, pc}
 d94:	20000030 	.word	0x20000030

00000d98 <_sbrk>:
 d98:	4a04      	ldr	r2, [pc, #16]	; (dac <_sbrk+0x14>)
 d9a:	0003      	movs	r3, r0
 d9c:	6810      	ldr	r0, [r2, #0]
 d9e:	2800      	cmp	r0, #0
 da0:	d002      	beq.n	da8 <_sbrk+0x10>
 da2:	18c3      	adds	r3, r0, r3
 da4:	6013      	str	r3, [r2, #0]
 da6:	4770      	bx	lr
 da8:	4801      	ldr	r0, [pc, #4]	; (db0 <_sbrk+0x18>)
 daa:	e7fa      	b.n	da2 <_sbrk+0xa>
 dac:	200008d0 	.word	0x200008d0
 db0:	200008d4 	.word	0x200008d4

00000db4 <_exit>:
 db4:	e7fe      	b.n	db4 <_exit>
 db6:	46c0      	nop			; (mov r8, r8)

00000db8 <register_fini>:
 db8:	4b03      	ldr	r3, [pc, #12]	; (dc8 <register_fini+0x10>)
 dba:	b510      	push	{r4, lr}
 dbc:	2b00      	cmp	r3, #0
 dbe:	d002      	beq.n	dc6 <register_fini+0xe>
 dc0:	4802      	ldr	r0, [pc, #8]	; (dcc <register_fini+0x14>)
 dc2:	f7ff fa07 	bl	1d4 <atexit>
 dc6:	bd10      	pop	{r4, pc}
 dc8:	00000000 	.word	0x00000000
 dcc:	00000205 	.word	0x00000205

00000dd0 <__frame_dummy_init_array_entry>:
 dd0:	00000075 00000db9                       u.......

00000dd8 <_init>:
 dd8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 dda:	46c0      	nop			; (mov r8, r8)
 ddc:	bcf8      	pop	{r3, r4, r5, r6, r7}
 dde:	bc08      	pop	{r3}
 de0:	469e      	mov	lr, r3
 de2:	4770      	bx	lr

00000de4 <_fini>:
 de4:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 de6:	46c0      	nop			; (mov r8, r8)

00000de8 <__do_global_dtors_aux_fini_array_entry>:
 de8:	0049 0000 bcf8 bc08 469e 4770               I........FpG
