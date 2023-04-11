
binding_example.o:	file format mach-o arm64

Disassembly of section __TEXT,__text:

0000000000000000 <ltmp0>:
; int main() {
       0: ff 03 01 d1  	sub	sp, sp, #64
       4: fd 7b 03 a9  	stp	x29, x30, [sp, #48]
       8: fd c3 00 91  	add	x29, sp, #48
       c: 08 00 80 52  	mov	w8, #0
      10: e8 17 00 b9  	str	w8, [sp, #20]
      14: bf c3 1f b8  	stur	wzr, [x29, #-4]
      18: a0 43 00 d1  	sub	x0, x29, #16
      1c: e0 07 00 f9  	str	x0, [sp, #8]
;     Base base;
      20: 00 00 00 94  	bl	0x20 <ltmp0+0x20>
      24: e8 07 40 f9  	ldr	x8, [sp, #8]
;     Base* basePtr = &base;
      28: e8 0f 00 f9  	str	x8, [sp, #24]
;     basePtr->staticBinding(); // 정적 바인딩된 함수 호출
      2c: e0 0f 40 f9  	ldr	x0, [sp, #24]
      30: 00 00 00 94  	bl	0x30 <ltmp0+0x30>
;     basePtr->dynamicBinding(); // 동적 바인딩된 함수 호출
      34: e0 0f 40 f9  	ldr	x0, [sp, #24]
      38: 08 00 40 f9  	ldr	x8, [x0]
      3c: 08 01 40 f9  	ldr	x8, [x8]
      40: 00 01 3f d6  	blr	x8
      44: e0 17 40 b9  	ldr	w0, [sp, #20]
;     return 0;
      48: fd 7b 43 a9  	ldp	x29, x30, [sp, #48]
      4c: ff 03 01 91  	add	sp, sp, #64
      50: c0 03 5f d6  	ret

0000000000000054 <__ZN4BaseC1Ev>:
; class Base {
      54: ff 83 00 d1  	sub	sp, sp, #32
      58: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
      5c: fd 43 00 91  	add	x29, sp, #16
      60: e0 07 00 f9  	str	x0, [sp, #8]
      64: e0 07 40 f9  	ldr	x0, [sp, #8]
      68: e0 03 00 f9  	str	x0, [sp]
      6c: 00 00 00 94  	bl	0x6c <__ZN4BaseC1Ev+0x18>
      70: e0 03 40 f9  	ldr	x0, [sp]
      74: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
      78: ff 83 00 91  	add	sp, sp, #32
      7c: c0 03 5f d6  	ret

0000000000000080 <__ZN4Base13staticBindingEv>:
;     void staticBinding() {
      80: ff 83 00 d1  	sub	sp, sp, #32
      84: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
      88: fd 43 00 91  	add	x29, sp, #16
      8c: e0 07 00 f9  	str	x0, [sp, #8]
      90: 00 00 00 90  	adrp	x0, 0x0 <__ZN4Base13staticBindingEv+0x10>
      94: 00 00 40 f9  	ldr	x0, [x0]
      98: 01 00 00 90  	adrp	x1, 0x0 <__ZN4Base13staticBindingEv+0x18>
      9c: 21 00 00 91  	add	x1, x1, #0
;         std::cout << "Static binding function called" << std::endl;
      a0: 00 00 00 94  	bl	0xa0 <__ZN4Base13staticBindingEv+0x20>
      a4: 01 00 00 90  	adrp	x1, 0x0 <__ZN4Base13staticBindingEv+0x24>
      a8: 21 00 40 f9  	ldr	x1, [x1]
;         std::cout << "Static binding function called" << std::endl;
      ac: 00 00 00 94  	bl	0xac <__ZN4Base13staticBindingEv+0x2c>
;     }
      b0: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
      b4: ff 83 00 91  	add	sp, sp, #32
      b8: c0 03 5f d6  	ret

00000000000000bc <__ZN4BaseC2Ev>:
; class Base {
      bc: ff 43 00 d1  	sub	sp, sp, #16
      c0: 08 00 00 90  	adrp	x8, 0x0 <__ZN4BaseC2Ev+0x4>
      c4: 08 01 40 f9  	ldr	x8, [x8]
      c8: 08 41 00 91  	add	x8, x8, #16
      cc: e0 07 00 f9  	str	x0, [sp, #8]
      d0: e0 07 40 f9  	ldr	x0, [sp, #8]
; class Base {
      d4: 08 00 00 f9  	str	x8, [x0]
      d8: ff 43 00 91  	add	sp, sp, #16
      dc: c0 03 5f d6  	ret

00000000000000e0 <__ZN4Base14dynamicBindingEv>:
;     virtual void dynamicBinding() {
      e0: ff 83 00 d1  	sub	sp, sp, #32
      e4: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
      e8: fd 43 00 91  	add	x29, sp, #16
      ec: e0 07 00 f9  	str	x0, [sp, #8]
      f0: 00 00 00 90  	adrp	x0, 0x0 <__ZN4Base14dynamicBindingEv+0x10>
      f4: 00 00 40 f9  	ldr	x0, [x0]
      f8: 01 00 00 90  	adrp	x1, 0x0 <__ZN4Base14dynamicBindingEv+0x18>
      fc: 21 00 00 91  	add	x1, x1, #0
;         std::cout << "Dynamic binding function called" << std::endl;
     100: 00 00 00 94  	bl	0x100 <__ZN4Base14dynamicBindingEv+0x20>
     104: 01 00 00 90  	adrp	x1, 0x0 <__ZN4Base14dynamicBindingEv+0x24>
     108: 21 00 40 f9  	ldr	x1, [x1]
;         std::cout << "Dynamic binding function called" << std::endl;
     10c: 00 00 00 94  	bl	0x10c <__ZN4Base14dynamicBindingEv+0x2c>
;     }
     110: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     114: ff 83 00 91  	add	sp, sp, #32
     118: c0 03 5f d6  	ret

000000000000011c <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc>:
; {
     11c: ff c3 00 d1  	sub	sp, sp, #48
     120: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     124: fd 83 00 91  	add	x29, sp, #32
     128: a0 83 1f f8  	stur	x0, [x29, #-8]
     12c: e1 0b 00 f9  	str	x1, [sp, #16]
;     return _VSTD::__put_character_sequence(__os, __str, _Traits::length(__str));
     130: a8 83 5f f8  	ldur	x8, [x29, #-8]
     134: e8 07 00 f9  	str	x8, [sp, #8]
     138: e8 0b 40 f9  	ldr	x8, [sp, #16]
     13c: e8 03 00 f9  	str	x8, [sp]
     140: e0 0b 40 f9  	ldr	x0, [sp, #16]
     144: 00 00 00 94  	bl	0x144 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc+0x28>
     148: e1 03 40 f9  	ldr	x1, [sp]
     14c: e2 03 00 aa  	mov	x2, x0
     150: e0 07 40 f9  	ldr	x0, [sp, #8]
     154: 00 00 00 94  	bl	0x154 <__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_PKc+0x38>
     158: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     15c: ff c3 00 91  	add	sp, sp, #48
     160: c0 03 5f d6  	ret

0000000000000164 <__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsB6v15006EPFRS3_S4_E>:
;     { return __pf(*this); }
     164: ff 83 00 d1  	sub	sp, sp, #32
     168: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     16c: fd 43 00 91  	add	x29, sp, #16
     170: e0 07 00 f9  	str	x0, [sp, #8]
     174: e1 03 00 f9  	str	x1, [sp]
     178: e0 07 40 f9  	ldr	x0, [sp, #8]
     17c: e8 03 40 f9  	ldr	x8, [sp]
     180: 00 01 3f d6  	blr	x8
     184: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     188: ff 83 00 91  	add	sp, sp, #32
     18c: c0 03 5f d6  	ret

0000000000000190 <__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_>:
; {
     190: ff 83 00 d1  	sub	sp, sp, #32
     194: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     198: fd 43 00 91  	add	x29, sp, #16
     19c: e0 07 00 f9  	str	x0, [sp, #8]
;     __os.put(__os.widen('\n'));
     1a0: e8 07 40 f9  	ldr	x8, [sp, #8]
     1a4: e8 03 00 f9  	str	x8, [sp]
     1a8: e8 07 40 f9  	ldr	x8, [sp, #8]
     1ac: 09 01 40 f9  	ldr	x9, [x8]
     1b0: 29 81 5e f8  	ldur	x9, [x9, #-24]
     1b4: 00 01 09 8b  	add	x0, x8, x9
     1b8: 41 01 80 52  	mov	w1, #10
     1bc: 00 00 00 94  	bl	0x1bc <__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_+0x2c>
     1c0: e8 03 00 aa  	mov	x8, x0
     1c4: e0 03 40 f9  	ldr	x0, [sp]
     1c8: 01 1d 00 13  	sxtb	w1, w8
     1cc: 00 00 00 94  	bl	0x1cc <__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_+0x3c>
;     __os.flush();
     1d0: e0 07 40 f9  	ldr	x0, [sp, #8]
     1d4: 00 00 00 94  	bl	0x1d4 <__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_+0x44>
;     return __os;
     1d8: e0 07 40 f9  	ldr	x0, [sp, #8]
     1dc: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     1e0: ff 83 00 91  	add	sp, sp, #32
     1e4: c0 03 5f d6  	ret

00000000000001e8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m>:
; {
     1e8: ff 83 02 d1  	sub	sp, sp, #160
     1ec: fd 7b 09 a9  	stp	x29, x30, [sp, #144]
     1f0: fd 43 02 91  	add	x29, sp, #144
     1f4: a0 83 1f f8  	stur	x0, [x29, #-8]
     1f8: a1 03 1f f8  	stur	x1, [x29, #-16]
     1fc: a2 83 1e f8  	stur	x2, [x29, #-24]
;         typename basic_ostream<_CharT, _Traits>::sentry __s(__os);
     200: a1 83 5f f8  	ldur	x1, [x29, #-8]
     204: a0 a3 00 d1  	sub	x0, x29, #40
     208: 00 00 00 94  	bl	0x208 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x20>
     20c: 01 00 00 14  	b	0x210 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x28>
     210: a0 a3 00 d1  	sub	x0, x29, #40
;         if (__s)
     214: 00 00 00 94  	bl	0x214 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x2c>
     218: e0 47 00 b9  	str	w0, [sp, #68]
     21c: 01 00 00 14  	b	0x220 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x38>
     220: e8 47 40 b9  	ldr	w8, [sp, #68]
;         if (__s)
     224: 48 0a 00 36  	tbz	w8, #0, 0x36c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x184>
     228: 01 00 00 14  	b	0x22c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x44>
;             if (__pad_and_output(_Ip(__os),
     22c: a1 83 5f f8  	ldur	x1, [x29, #-8]
     230: e0 23 01 91  	add	x0, sp, #72
     234: 00 00 00 94  	bl	0x234 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x4c>
;                                  __str,
     238: a8 03 5f f8  	ldur	x8, [x29, #-16]
     23c: e8 1f 00 f9  	str	x8, [sp, #56]
;                                  (__os.flags() & ios_base::adjustfield) == ios_base::left ?
     240: a8 83 5f f8  	ldur	x8, [x29, #-8]
     244: 09 01 40 f9  	ldr	x9, [x8]
     248: 29 81 5e f8  	ldur	x9, [x9, #-24]
     24c: 00 01 09 8b  	add	x0, x8, x9
     250: 00 00 00 94  	bl	0x250 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x68>
     254: e0 43 00 b9  	str	w0, [sp, #64]
     258: 01 00 00 14  	b	0x25c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x74>
     25c: e8 43 40 b9  	ldr	w8, [sp, #64]
     260: 09 16 80 52  	mov	w9, #176
;                                  (__os.flags() & ios_base::adjustfield) == ios_base::left ?
     264: 08 01 09 0a  	and	w8, w8, w9
     268: 08 81 00 71  	subs	w8, w8, #32
     26c: e8 07 9f 1a  	cset	w8, ne
     270: e8 00 00 37  	tbnz	w8, #0, 0x28c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xa4>
     274: 01 00 00 14  	b	0x278 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x90>
;                                      __str + __len :
     278: a8 03 5f f8  	ldur	x8, [x29, #-16]
     27c: a9 83 5e f8  	ldur	x9, [x29, #-24]
     280: 08 01 09 8b  	add	x8, x8, x9
     284: e8 1b 00 f9  	str	x8, [sp, #48]
;                                  (__os.flags() & ios_base::adjustfield) == ios_base::left ?
     288: 04 00 00 14  	b	0x298 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xb0>
;                                      __str,
     28c: a8 03 5f f8  	ldur	x8, [x29, #-16]
     290: e8 1b 00 f9  	str	x8, [sp, #48]
;                                  (__os.flags() & ios_base::adjustfield) == ios_base::left ?
     294: 01 00 00 14  	b	0x298 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xb0>
     298: e8 1b 40 f9  	ldr	x8, [sp, #48]
     29c: e8 0b 00 f9  	str	x8, [sp, #16]
;                                  __str + __len,
     2a0: a8 03 5f f8  	ldur	x8, [x29, #-16]
     2a4: a9 83 5e f8  	ldur	x9, [x29, #-24]
     2a8: 08 01 09 8b  	add	x8, x8, x9
     2ac: e8 0f 00 f9  	str	x8, [sp, #24]
;                                  __os,
     2b0: a8 83 5f f8  	ldur	x8, [x29, #-8]
     2b4: 09 01 40 f9  	ldr	x9, [x8]
     2b8: 29 81 5e f8  	ldur	x9, [x9, #-24]
     2bc: 08 01 09 8b  	add	x8, x8, x9
     2c0: e8 13 00 f9  	str	x8, [sp, #32]
;                                  __os.fill()).failed())
     2c4: a8 83 5f f8  	ldur	x8, [x29, #-8]
     2c8: 09 01 40 f9  	ldr	x9, [x8]
     2cc: 29 81 5e f8  	ldur	x9, [x9, #-24]
     2d0: 00 01 09 8b  	add	x0, x8, x9
     2d4: 00 00 00 94  	bl	0x2d4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xec>
     2d8: e0 2f 00 b9  	str	w0, [sp, #44]
     2dc: 01 00 00 14  	b	0x2e0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0xf8>
     2e0: e8 2f 40 b9  	ldr	w8, [sp, #44]
     2e4: e4 13 40 f9  	ldr	x4, [sp, #32]
     2e8: e3 0f 40 f9  	ldr	x3, [sp, #24]
     2ec: e2 0b 40 f9  	ldr	x2, [sp, #16]
     2f0: e1 1f 40 f9  	ldr	x1, [sp, #56]
;             if (__pad_and_output(_Ip(__os),
     2f4: e0 27 40 f9  	ldr	x0, [sp, #72]
     2f8: 05 1d 00 13  	sxtb	w5, w8
     2fc: 00 00 00 94  	bl	0x2fc <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x114>
     300: e0 07 00 f9  	str	x0, [sp, #8]
     304: 01 00 00 14  	b	0x308 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x120>
     308: e8 07 40 f9  	ldr	x8, [sp, #8]
     30c: a0 03 01 d1  	sub	x0, x29, #64
;             if (__pad_and_output(_Ip(__os),
     310: a8 03 1c f8  	stur	x8, [x29, #-64]
;                                  __os.fill()).failed())
     314: 00 00 00 94  	bl	0x314 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x12c>
;             if (__pad_and_output(_Ip(__os),
     318: 80 02 00 36  	tbz	w0, #0, 0x368 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x180>
     31c: 01 00 00 14  	b	0x320 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x138>
;                 __os.setstate(ios_base::badbit | ios_base::failbit);
     320: a8 83 5f f8  	ldur	x8, [x29, #-8]
     324: 09 01 40 f9  	ldr	x9, [x8]
     328: 29 81 5e f8  	ldur	x9, [x9, #-24]
     32c: 00 01 09 8b  	add	x0, x8, x9
     330: a1 00 80 52  	mov	w1, #5
     334: 00 00 00 94  	bl	0x334 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x14c>
     338: 01 00 00 14  	b	0x33c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x154>
     33c: 0b 00 00 14  	b	0x368 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x180>
; }
     340: e8 03 01 aa  	mov	x8, x1
     344: a0 03 1d f8  	stur	x0, [x29, #-48]
     348: a8 c3 1c b8  	stur	w8, [x29, #-52]
     34c: 0d 00 00 14  	b	0x380 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x198>
     350: e8 03 01 aa  	mov	x8, x1
     354: a0 03 1d f8  	stur	x0, [x29, #-48]
     358: a8 c3 1c b8  	stur	w8, [x29, #-52]
     35c: a0 a3 00 d1  	sub	x0, x29, #40
;     }
     360: 00 00 00 94  	bl	0x360 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x178>
     364: 06 00 00 14  	b	0x37c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x194>
;         }
     368: 01 00 00 14  	b	0x36c <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x184>
     36c: a0 a3 00 d1  	sub	x0, x29, #40
;     }
     370: 00 00 00 94  	bl	0x370 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x188>
     374: 01 00 00 14  	b	0x378 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x190>
     378: 0c 00 00 14  	b	0x3a8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1c0>
     37c: 01 00 00 14  	b	0x380 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x198>
     380: a0 03 5d f8  	ldur	x0, [x29, #-48]
     384: 00 00 00 94  	bl	0x384 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x19c>
;         __os.__set_badbit_and_consider_rethrow();
     388: a8 83 5f f8  	ldur	x8, [x29, #-8]
     38c: 09 01 40 f9  	ldr	x9, [x8]
     390: 29 81 5e f8  	ldur	x9, [x9, #-24]
     394: 00 01 09 8b  	add	x0, x8, x9
     398: 00 00 00 94  	bl	0x398 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b0>
     39c: 01 00 00 14  	b	0x3a0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
;     }
     3a0: 00 00 00 94  	bl	0x3a0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1b8>
     3a4: 01 00 00 14  	b	0x3a8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1c0>
;     return __os;
     3a8: a0 83 5f f8  	ldur	x0, [x29, #-8]
     3ac: fd 7b 49 a9  	ldp	x29, x30, [sp, #144]
     3b0: ff 83 02 91  	add	sp, sp, #160
     3b4: c0 03 5f d6  	ret
; }
     3b8: e8 03 01 aa  	mov	x8, x1
     3bc: a0 03 1d f8  	stur	x0, [x29, #-48]
     3c0: a8 c3 1c b8  	stur	w8, [x29, #-52]
;     }
     3c4: 00 00 00 94  	bl	0x3c4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1dc>
     3c8: 01 00 00 14  	b	0x3cc <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1e4>
     3cc: 01 00 00 14  	b	0x3d0 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1e8>
     3d0: a0 03 5d f8  	ldur	x0, [x29, #-48]
     3d4: 00 00 00 94  	bl	0x3d4 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1ec>
;     }
     3d8: 00 00 00 94  	bl	0x3d8 <__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m+0x1f0>

00000000000003dc <__ZNSt3__111char_traitsIcE6lengthEPKc>:
;     static inline size_t _LIBCPP_CONSTEXPR_AFTER_CXX14 length(const char_type* __s)  _NOEXCEPT {
     3dc: ff 83 00 d1  	sub	sp, sp, #32
     3e0: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     3e4: fd 43 00 91  	add	x29, sp, #16
     3e8: e0 07 00 f9  	str	x0, [sp, #8]
;       return __builtin_strlen(__s);
     3ec: e0 07 40 f9  	ldr	x0, [sp, #8]
     3f0: 00 00 00 94  	bl	0x3f0 <__ZNSt3__111char_traitsIcE6lengthEPKc+0x14>
     3f4: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     3f8: ff 83 00 91  	add	sp, sp, #32
     3fc: c0 03 5f d6  	ret

0000000000000400 <__ZNKSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentrycvbB6v15006Ev>:
;     explicit operator bool() const {return __ok_;}
     400: ff 43 00 d1  	sub	sp, sp, #16
     404: e0 07 00 f9  	str	x0, [sp, #8]
     408: e8 07 40 f9  	ldr	x8, [sp, #8]
     40c: 08 01 40 39  	ldrb	w8, [x8]
     410: 00 01 00 12  	and	w0, w8, #0x1
     414: ff 43 00 91  	add	sp, sp, #16
     418: c0 03 5f d6  	ret

000000000000041c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_>:
; {
     41c: ff 83 02 d1  	sub	sp, sp, #160
     420: fd 7b 09 a9  	stp	x29, x30, [sp, #144]
     424: fd 43 02 91  	add	x29, sp, #144
     428: a0 03 1f f8  	stur	x0, [x29, #-16]
     42c: a1 83 1e f8  	stur	x1, [x29, #-24]
     430: a2 03 1e f8  	stur	x2, [x29, #-32]
     434: a3 83 1d f8  	stur	x3, [x29, #-40]
     438: a4 03 1d f8  	stur	x4, [x29, #-48]
     43c: a5 f3 1c 38  	sturb	w5, [x29, #-49]
;     if (__s.__sbuf_ == nullptr)
     440: a8 03 5f f8  	ldur	x8, [x29, #-16]
     444: 08 01 00 f1  	subs	x8, x8, #0
     448: e8 07 9f 1a  	cset	w8, ne
     44c: a8 00 00 37  	tbnz	w8, #0, 0x460 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x44>
     450: 01 00 00 14  	b	0x454 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x38>
;         return __s;
     454: a8 03 5f f8  	ldur	x8, [x29, #-16]
     458: a8 83 1f f8  	stur	x8, [x29, #-8]
     45c: 7b 00 00 14  	b	0x648 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x22c>
;     streamsize __sz = __oe - __ob;
     460: a8 83 5d f8  	ldur	x8, [x29, #-40]
     464: a9 83 5e f8  	ldur	x9, [x29, #-24]
     468: 08 01 09 eb  	subs	x8, x8, x9
     46c: a8 03 1c f8  	stur	x8, [x29, #-64]
;     streamsize __ns = __iob.width();
     470: a0 03 5d f8  	ldur	x0, [x29, #-48]
     474: 00 00 00 94  	bl	0x474 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x58>
     478: e0 27 00 f9  	str	x0, [sp, #72]
;     if (__ns > __sz)
     47c: e8 27 40 f9  	ldr	x8, [sp, #72]
     480: a9 03 5c f8  	ldur	x9, [x29, #-64]
     484: 08 01 09 eb  	subs	x8, x8, x9
     488: e8 c7 9f 1a  	cset	w8, le
     48c: e8 00 00 37  	tbnz	w8, #0, 0x4a8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x8c>
     490: 01 00 00 14  	b	0x494 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x78>
;         __ns -= __sz;
     494: a9 03 5c f8  	ldur	x9, [x29, #-64]
     498: e8 27 40 f9  	ldr	x8, [sp, #72]
     49c: 08 01 09 eb  	subs	x8, x8, x9
     4a0: e8 27 00 f9  	str	x8, [sp, #72]
     4a4: 03 00 00 14  	b	0x4b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x94>
;         __ns = 0;
     4a8: ff 27 00 f9  	str	xzr, [sp, #72]
     4ac: 01 00 00 14  	b	0x4b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x94>
;     streamsize __np = __op - __ob;
     4b0: a8 03 5e f8  	ldur	x8, [x29, #-32]
     4b4: a9 83 5e f8  	ldur	x9, [x29, #-24]
     4b8: 08 01 09 eb  	subs	x8, x8, x9
     4bc: e8 23 00 f9  	str	x8, [sp, #64]
;     if (__np > 0)
     4c0: e8 23 40 f9  	ldr	x8, [sp, #64]
     4c4: 08 01 00 f1  	subs	x8, x8, #0
     4c8: e8 c7 9f 1a  	cset	w8, le
     4cc: 08 02 00 37  	tbnz	w8, #0, 0x50c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xf0>
     4d0: 01 00 00 14  	b	0x4d4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xb8>
;         if (__s.__sbuf_->sputn(__ob, __np) != __np)
     4d4: a0 03 5f f8  	ldur	x0, [x29, #-16]
     4d8: a1 83 5e f8  	ldur	x1, [x29, #-24]
     4dc: e2 23 40 f9  	ldr	x2, [sp, #64]
     4e0: 00 00 00 94  	bl	0x4e0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xc4>
     4e4: e8 23 40 f9  	ldr	x8, [sp, #64]
     4e8: 08 00 08 eb  	subs	x8, x0, x8
     4ec: e8 17 9f 1a  	cset	w8, eq
     4f0: c8 00 00 37  	tbnz	w8, #0, 0x508 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xec>
     4f4: 01 00 00 14  	b	0x4f8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xdc>
;             __s.__sbuf_ = nullptr;
     4f8: bf 03 1f f8  	stur	xzr, [x29, #-16]
;             return __s;
     4fc: a8 03 5f f8  	ldur	x8, [x29, #-16]
     500: a8 83 1f f8  	stur	x8, [x29, #-8]
     504: 51 00 00 14  	b	0x648 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x22c>
;     }
     508: 01 00 00 14  	b	0x50c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0xf0>
;     if (__ns > 0)
     50c: e8 27 40 f9  	ldr	x8, [sp, #72]
     510: 08 01 00 f1  	subs	x8, x8, #0
     514: e8 c7 9f 1a  	cset	w8, le
     518: e8 05 00 37  	tbnz	w8, #0, 0x5d4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b8>
     51c: 01 00 00 14  	b	0x520 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x104>
;         basic_string<_CharT, _Traits> __sp(__ns, __fl);
     520: e1 27 40 f9  	ldr	x1, [sp, #72]
     524: a2 f3 dc 38  	ldursb	w2, [x29, #-49]
     528: e0 a3 00 91  	add	x0, sp, #40
     52c: e0 03 00 f9  	str	x0, [sp]
     530: 00 00 00 94  	bl	0x530 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x114>
     534: e0 03 40 f9  	ldr	x0, [sp]
;         if (__s.__sbuf_->sputn(__sp.data(), __ns) != __ns)
     538: a8 03 5f f8  	ldur	x8, [x29, #-16]
     53c: e8 07 00 f9  	str	x8, [sp, #8]
     540: 00 00 00 94  	bl	0x540 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x124>
     544: e1 03 00 aa  	mov	x1, x0
     548: e0 07 40 f9  	ldr	x0, [sp, #8]
     54c: e2 27 40 f9  	ldr	x2, [sp, #72]
     550: 00 00 00 94  	bl	0x550 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x134>
     554: e0 0b 00 f9  	str	x0, [sp, #16]
     558: 01 00 00 14  	b	0x55c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x140>
     55c: e8 0b 40 f9  	ldr	x8, [sp, #16]
;         if (__s.__sbuf_->sputn(__sp.data(), __ns) != __ns)
     560: e9 27 40 f9  	ldr	x9, [sp, #72]
     564: 08 01 09 eb  	subs	x8, x8, x9
     568: e8 17 9f 1a  	cset	w8, eq
     56c: c8 01 00 37  	tbnz	w8, #0, 0x5a4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x188>
     570: 01 00 00 14  	b	0x574 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x158>
;             __s.__sbuf_ = nullptr;
     574: bf 03 1f f8  	stur	xzr, [x29, #-16]
;             return __s;
     578: a8 03 5f f8  	ldur	x8, [x29, #-16]
     57c: a8 83 1f f8  	stur	x8, [x29, #-8]
     580: 28 00 80 52  	mov	w8, #1
     584: e8 1b 00 b9  	str	w8, [sp, #24]
     588: 09 00 00 14  	b	0x5ac <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
; }
     58c: e8 03 01 aa  	mov	x8, x1
     590: e0 13 00 f9  	str	x0, [sp, #32]
     594: e8 1f 00 b9  	str	w8, [sp, #28]
     598: e0 a3 00 91  	add	x0, sp, #40
;     }
     59c: 00 00 00 94  	bl	0x59c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x180>
     5a0: 0c 00 00 14  	b	0x5d0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b4>
     5a4: ff 1b 00 b9  	str	wzr, [sp, #24]
     5a8: 01 00 00 14  	b	0x5ac <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x190>
     5ac: e0 a3 00 91  	add	x0, sp, #40
;     }
     5b0: 00 00 00 94  	bl	0x5b0 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x194>
     5b4: e8 1b 40 b9  	ldr	w8, [sp, #24]
     5b8: 08 01 00 71  	subs	w8, w8, #0
     5bc: e8 17 9f 1a  	cset	w8, eq
     5c0: 68 00 00 37  	tbnz	w8, #0, 0x5cc <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b0>
     5c4: 01 00 00 14  	b	0x5c8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1ac>
     5c8: 20 00 00 14  	b	0x648 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x22c>
;     }
     5cc: 02 00 00 14  	b	0x5d4 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1b8>
     5d0: 22 00 00 14  	b	0x658 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x23c>
;     __np = __oe - __op;
     5d4: a8 83 5d f8  	ldur	x8, [x29, #-40]
     5d8: a9 03 5e f8  	ldur	x9, [x29, #-32]
     5dc: 08 01 09 eb  	subs	x8, x8, x9
     5e0: e8 23 00 f9  	str	x8, [sp, #64]
;     if (__np > 0)
     5e4: e8 23 40 f9  	ldr	x8, [sp, #64]
     5e8: 08 01 00 f1  	subs	x8, x8, #0
     5ec: e8 c7 9f 1a  	cset	w8, le
     5f0: 08 02 00 37  	tbnz	w8, #0, 0x630 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x214>
     5f4: 01 00 00 14  	b	0x5f8 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1dc>
;         if (__s.__sbuf_->sputn(__op, __np) != __np)
     5f8: a0 03 5f f8  	ldur	x0, [x29, #-16]
     5fc: a1 03 5e f8  	ldur	x1, [x29, #-32]
     600: e2 23 40 f9  	ldr	x2, [sp, #64]
     604: 00 00 00 94  	bl	0x604 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x1e8>
     608: e8 23 40 f9  	ldr	x8, [sp, #64]
     60c: 08 00 08 eb  	subs	x8, x0, x8
     610: e8 17 9f 1a  	cset	w8, eq
     614: c8 00 00 37  	tbnz	w8, #0, 0x62c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x210>
     618: 01 00 00 14  	b	0x61c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x200>
;             __s.__sbuf_ = nullptr;
     61c: bf 03 1f f8  	stur	xzr, [x29, #-16]
;             return __s;
     620: a8 03 5f f8  	ldur	x8, [x29, #-16]
     624: a8 83 1f f8  	stur	x8, [x29, #-8]
     628: 08 00 00 14  	b	0x648 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x22c>
;     }
     62c: 01 00 00 14  	b	0x630 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x214>
;     __iob.width(0);
     630: a0 03 5d f8  	ldur	x0, [x29, #-48]
     634: 01 00 80 d2  	mov	x1, #0
     638: 00 00 00 94  	bl	0x638 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x21c>
;     return __s;
     63c: a8 03 5f f8  	ldur	x8, [x29, #-16]
     640: a8 83 1f f8  	stur	x8, [x29, #-8]
     644: 01 00 00 14  	b	0x648 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x22c>
; }
     648: a0 83 5f f8  	ldur	x0, [x29, #-8]
     64c: fd 7b 49 a9  	ldp	x29, x30, [sp, #144]
     650: ff 83 02 91  	add	sp, sp, #160
     654: c0 03 5f d6  	ret
;     }
     658: e0 13 40 f9  	ldr	x0, [sp, #32]
     65c: 00 00 00 94  	bl	0x65c <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x240>
     660: 00 00 00 94  	bl	0x660 <__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_+0x244>

0000000000000664 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE>:
;         : __sbuf_(__s.rdbuf()) {}
     664: ff c3 00 d1  	sub	sp, sp, #48
     668: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     66c: fd 83 00 91  	add	x29, sp, #32
     670: a0 83 1f f8  	stur	x0, [x29, #-8]
     674: e1 0b 00 f9  	str	x1, [sp, #16]
     678: a0 83 5f f8  	ldur	x0, [x29, #-8]
     67c: e0 07 00 f9  	str	x0, [sp, #8]
     680: e1 0b 40 f9  	ldr	x1, [sp, #16]
     684: 00 00 00 94  	bl	0x684 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC1B6v15006ERNS_13basic_ostreamIcS2_EE+0x20>
     688: e0 07 40 f9  	ldr	x0, [sp, #8]
     68c: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     690: ff c3 00 91  	add	sp, sp, #48
     694: c0 03 5f d6  	ret

0000000000000698 <__ZNKSt3__18ios_base5flagsB6v15006Ev>:
; {
     698: ff 43 00 d1  	sub	sp, sp, #16
     69c: e0 07 00 f9  	str	x0, [sp, #8]
     6a0: e8 07 40 f9  	ldr	x8, [sp, #8]
;     return __fmtflags_;
     6a4: 00 09 40 b9  	ldr	w0, [x8, #8]
     6a8: ff 43 00 91  	add	sp, sp, #16
     6ac: c0 03 5f d6  	ret

00000000000006b0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev>:
; {
     6b0: ff 83 00 d1  	sub	sp, sp, #32
     6b4: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     6b8: fd 43 00 91  	add	x29, sp, #16
     6bc: e0 07 00 f9  	str	x0, [sp, #8]
     6c0: e8 07 40 f9  	ldr	x8, [sp, #8]
     6c4: e8 03 00 f9  	str	x8, [sp]
;     if (traits_type::eq_int_type(traits_type::eof(), __fill_))
     6c8: 00 00 00 94  	bl	0x6c8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x18>
     6cc: e8 03 40 f9  	ldr	x8, [sp]
     6d0: 01 91 40 b9  	ldr	w1, [x8, #144]
     6d4: 00 00 00 94  	bl	0x6d4 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x24>
     6d8: 20 01 00 36  	tbz	w0, #0, 0x6fc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x4c>
     6dc: 01 00 00 14  	b	0x6e0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x30>
     6e0: e0 03 40 f9  	ldr	x0, [sp]
     6e4: 01 04 80 52  	mov	w1, #32
;         __fill_ = widen(' ');
     6e8: 00 00 00 94  	bl	0x6e8 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x38>
     6ec: e9 03 40 f9  	ldr	x9, [sp]
     6f0: 08 1c 00 13  	sxtb	w8, w0
     6f4: 28 91 00 b9  	str	w8, [x9, #144]
     6f8: 01 00 00 14  	b	0x6fc <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE4fillB6v15006Ev+0x4c>
     6fc: e8 03 40 f9  	ldr	x8, [sp]
;     return __fill_;
     700: 08 91 40 b9  	ldr	w8, [x8, #144]
     704: 00 1d 00 13  	sxtb	w0, w8
     708: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     70c: ff 83 00 91  	add	sp, sp, #32
     710: c0 03 5f d6  	ret

0000000000000714 <__ZNKSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEE6failedB6v15006Ev>:
;     _LIBCPP_INLINE_VISIBILITY bool failed() const _NOEXCEPT {return __sbuf_ == nullptr;}
     714: ff 43 00 d1  	sub	sp, sp, #16
     718: e0 07 00 f9  	str	x0, [sp, #8]
     71c: e8 07 40 f9  	ldr	x8, [sp, #8]
     720: 08 01 40 f9  	ldr	x8, [x8]
     724: 08 01 00 f1  	subs	x8, x8, #0
     728: e8 17 9f 1a  	cset	w8, eq
     72c: 00 01 00 12  	and	w0, w8, #0x1
     730: ff 43 00 91  	add	sp, sp, #16
     734: c0 03 5f d6  	ret

0000000000000738 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej>:
;     _LIBCPP_INLINE_VISIBILITY void setstate(iostate __state) {ios_base::setstate(__state);}
     738: ff 83 00 d1  	sub	sp, sp, #32
     73c: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     740: fd 43 00 91  	add	x29, sp, #16
     744: e0 07 00 f9  	str	x0, [sp, #8]
     748: e1 07 00 b9  	str	w1, [sp, #4]
     74c: e0 07 40 f9  	ldr	x0, [sp, #8]
     750: e1 07 40 b9  	ldr	w1, [sp, #4]
     754: 00 00 00 94  	bl	0x754 <__ZNSt3__19basic_iosIcNS_11char_traitsIcEEE8setstateB6v15006Ej+0x1c>
     758: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     75c: ff 83 00 91  	add	sp, sp, #32
     760: c0 03 5f d6  	ret

0000000000000764 <___clang_call_terminate>:
     764: fd 7b bf a9  	stp	x29, x30, [sp, #-16]!
     768: 00 00 00 94  	bl	0x768 <___clang_call_terminate+0x4>
     76c: 00 00 00 94  	bl	0x76c <___clang_call_terminate+0x8>

0000000000000770 <__ZNKSt3__18ios_base5widthB6v15006Ev>:
; {
     770: ff 43 00 d1  	sub	sp, sp, #16
     774: e0 07 00 f9  	str	x0, [sp, #8]
     778: e8 07 40 f9  	ldr	x8, [sp, #8]
;     return __width_;
     77c: 00 0d 40 f9  	ldr	x0, [x8, #24]
     780: ff 43 00 91  	add	sp, sp, #16
     784: c0 03 5f d6  	ret

0000000000000788 <__ZNSt3__115basic_streambufIcNS_11char_traitsIcEEE5sputnB6v15006EPKcl>:
;     { return xsputn(__s, __n); }
     788: ff c3 00 d1  	sub	sp, sp, #48
     78c: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     790: fd 83 00 91  	add	x29, sp, #32
     794: a0 83 1f f8  	stur	x0, [x29, #-8]
     798: e1 0b 00 f9  	str	x1, [sp, #16]
     79c: e2 07 00 f9  	str	x2, [sp, #8]
     7a0: a0 83 5f f8  	ldur	x0, [x29, #-8]
     7a4: e1 0b 40 f9  	ldr	x1, [sp, #16]
     7a8: e2 07 40 f9  	ldr	x2, [sp, #8]
     7ac: 08 00 40 f9  	ldr	x8, [x0]
     7b0: 08 31 40 f9  	ldr	x8, [x8, #96]
     7b4: 00 01 3f d6  	blr	x8
     7b8: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     7bc: ff c3 00 91  	add	sp, sp, #48
     7c0: c0 03 5f d6  	ret

00000000000007c4 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc>:
; {
     7c4: ff c3 00 d1  	sub	sp, sp, #48
     7c8: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     7cc: fd 83 00 91  	add	x29, sp, #32
     7d0: a0 83 1f f8  	stur	x0, [x29, #-8]
     7d4: e1 0b 00 f9  	str	x1, [sp, #16]
     7d8: e2 3f 00 39  	strb	w2, [sp, #15]
     7dc: a0 83 5f f8  	ldur	x0, [x29, #-8]
     7e0: e0 03 00 f9  	str	x0, [sp]
     7e4: e1 0b 40 f9  	ldr	x1, [sp, #16]
     7e8: e2 3f c0 39  	ldrsb	w2, [sp, #15]
     7ec: 00 00 00 94  	bl	0x7ec <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B6v15006Emc+0x28>
     7f0: e0 03 40 f9  	ldr	x0, [sp]
; }
     7f4: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     7f8: ff c3 00 91  	add	sp, sp, #48
     7fc: c0 03 5f d6  	ret

0000000000000800 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev>:
;     const value_type* data() const _NOEXCEPT  {return std::__to_address(__get_pointer());}
     800: ff 83 00 d1  	sub	sp, sp, #32
     804: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     808: fd 43 00 91  	add	x29, sp, #16
     80c: e0 07 00 f9  	str	x0, [sp, #8]
     810: e0 07 40 f9  	ldr	x0, [sp, #8]
     814: 00 00 00 94  	bl	0x814 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev+0x14>
     818: 00 00 00 94  	bl	0x818 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE4dataB6v15006Ev+0x18>
     81c: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     820: ff 83 00 91  	add	sp, sp, #32
     824: c0 03 5f d6  	ret

0000000000000828 <__ZNSt3__18ios_base5widthB6v15006El>:
; {
     828: ff 83 00 d1  	sub	sp, sp, #32
     82c: e0 0f 00 f9  	str	x0, [sp, #24]
     830: e1 0b 00 f9  	str	x1, [sp, #16]
     834: e9 0f 40 f9  	ldr	x9, [sp, #24]
;     streamsize __r = __width_;
     838: 28 0d 40 f9  	ldr	x8, [x9, #24]
     83c: e8 07 00 f9  	str	x8, [sp, #8]
;     __width_ = __wide;
     840: e8 0b 40 f9  	ldr	x8, [sp, #16]
     844: 28 0d 00 f9  	str	x8, [x9, #24]
;     return __r;
     848: e0 07 40 f9  	ldr	x0, [sp, #8]
     84c: ff 83 00 91  	add	sp, sp, #32
     850: c0 03 5f d6  	ret

0000000000000854 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc>:
; {
     854: ff c3 00 d1  	sub	sp, sp, #48
     858: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     85c: fd 83 00 91  	add	x29, sp, #32
     860: a0 83 1f f8  	stur	x0, [x29, #-8]
     864: e1 0b 00 f9  	str	x1, [sp, #16]
     868: e2 3f 00 39  	strb	w2, [sp, #15]
     86c: a0 83 5f f8  	ldur	x0, [x29, #-8]
     870: e0 03 00 f9  	str	x0, [sp]
     874: e1 3b 00 91  	add	x1, sp, #14
     878: e2 37 00 91  	add	x2, sp, #13
;      : __r_(__default_init_tag(), __default_init_tag())
     87c: 00 00 00 94  	bl	0x87c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc+0x28>
     880: e0 03 40 f9  	ldr	x0, [sp]
;     __init(__n, __c);
     884: e1 0b 40 f9  	ldr	x1, [sp, #16]
     888: e2 3f c0 39  	ldrsb	w2, [sp, #15]
     88c: 00 00 00 94  	bl	0x88c <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc+0x38>
     890: e0 03 40 f9  	ldr	x0, [sp]
;     std::__debug_db_insert_c(this);
     894: 00 00 00 94  	bl	0x894 <__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B6v15006Emc+0x40>
     898: e0 03 40 f9  	ldr	x0, [sp]
; }
     89c: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     8a0: ff c3 00 91  	add	sp, sp, #48
     8a4: c0 03 5f d6  	ret

00000000000008a8 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_>:
;   explicit __compressed_pair(_U1&& __t1, _U2&& __t2) : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
     8a8: ff c3 00 d1  	sub	sp, sp, #48
     8ac: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     8b0: fd 83 00 91  	add	x29, sp, #32
     8b4: a0 83 1f f8  	stur	x0, [x29, #-8]
     8b8: e1 0b 00 f9  	str	x1, [sp, #16]
     8bc: e2 07 00 f9  	str	x2, [sp, #8]
     8c0: a0 83 5f f8  	ldur	x0, [x29, #-8]
     8c4: e0 03 00 f9  	str	x0, [sp]
     8c8: e1 0b 40 f9  	ldr	x1, [sp, #16]
     8cc: e2 07 40 f9  	ldr	x2, [sp, #8]
     8d0: 00 00 00 94  	bl	0x8d0 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC1B6v15006INS_18__default_init_tagESA_EEOT_OT0_+0x28>
     8d4: e0 03 40 f9  	ldr	x0, [sp]
     8d8: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     8dc: ff c3 00 91  	add	sp, sp, #48
     8e0: c0 03 5f d6  	ret

00000000000008e4 <__ZNSt3__119__debug_db_insert_cB6v15006INS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEvPT_>:
; _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR_AFTER_CXX11 inline void __debug_db_insert_c(_Tp* __c) {
     8e4: ff 43 00 d1  	sub	sp, sp, #16
     8e8: e0 07 00 f9  	str	x0, [sp, #8]
; }
     8ec: ff 43 00 91  	add	sp, sp, #16
     8f0: c0 03 5f d6  	ret

00000000000008f4 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_>:
;   explicit __compressed_pair(_U1&& __t1, _U2&& __t2) : _Base1(std::forward<_U1>(__t1)), _Base2(std::forward<_U2>(__t2)) {}
     8f4: ff 03 01 d1  	sub	sp, sp, #64
     8f8: fd 7b 03 a9  	stp	x29, x30, [sp, #48]
     8fc: fd c3 00 91  	add	x29, sp, #48
     900: a0 83 1f f8  	stur	x0, [x29, #-8]
     904: a1 03 1f f8  	stur	x1, [x29, #-16]
     908: e2 0f 00 f9  	str	x2, [sp, #24]
     90c: a0 83 5f f8  	ldur	x0, [x29, #-8]
     910: e0 07 00 f9  	str	x0, [sp, #8]
     914: 00 00 00 94  	bl	0x914 <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_+0x20>
     918: e0 07 40 f9  	ldr	x0, [sp, #8]
     91c: 00 00 00 94  	bl	0x91c <__ZNSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_EC2B6v15006INS_18__default_init_tagESA_EEOT_OT0_+0x28>
     920: e0 07 40 f9  	ldr	x0, [sp, #8]
     924: fd 7b 43 a9  	ldp	x29, x30, [sp, #48]
     928: ff 03 01 91  	add	sp, sp, #64
     92c: c0 03 5f d6  	ret

0000000000000930 <__ZNSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EEC2B6v15006ENS_18__default_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__default_init_tag) {}
     930: ff 43 00 d1  	sub	sp, sp, #16
     934: e0 03 00 f9  	str	x0, [sp]
     938: e0 03 40 f9  	ldr	x0, [sp]
     93c: ff 43 00 91  	add	sp, sp, #16
     940: c0 03 5f d6  	ret

0000000000000944 <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR explicit __compressed_pair_elem(__default_init_tag) {}
     944: ff c3 00 d1  	sub	sp, sp, #48
     948: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     94c: fd 83 00 91  	add	x29, sp, #32
     950: e0 0b 00 f9  	str	x0, [sp, #16]
     954: e0 0b 40 f9  	ldr	x0, [sp, #16]
     958: e0 07 00 f9  	str	x0, [sp, #8]
     95c: 00 00 00 94  	bl	0x95c <__ZNSt3__122__compressed_pair_elemINS_9allocatorIcEELi1ELb1EEC2B6v15006ENS_18__default_init_tagE+0x18>
     960: e0 07 40 f9  	ldr	x0, [sp, #8]
     964: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     968: ff c3 00 91  	add	sp, sp, #48
     96c: c0 03 5f d6  	ret

0000000000000970 <__ZNSt3__19allocatorIcEC2B6v15006Ev>:
;     allocator() _NOEXCEPT = default;
     970: ff 83 00 d1  	sub	sp, sp, #32
     974: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     978: fd 43 00 91  	add	x29, sp, #16
     97c: e0 07 00 f9  	str	x0, [sp, #8]
     980: e0 07 40 f9  	ldr	x0, [sp, #8]
     984: e0 03 00 f9  	str	x0, [sp]
     988: 00 00 00 94  	bl	0x988 <__ZNSt3__19allocatorIcEC2B6v15006Ev+0x18>
     98c: e0 03 40 f9  	ldr	x0, [sp]
     990: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     994: ff 83 00 91  	add	sp, sp, #32
     998: c0 03 5f d6  	ret

000000000000099c <__ZNSt3__116__non_trivial_ifILb1ENS_9allocatorIcEEEC2B6v15006Ev>:
;     _LIBCPP_CONSTEXPR __non_trivial_if() _NOEXCEPT { }
     99c: ff 43 00 d1  	sub	sp, sp, #16
     9a0: e0 07 00 f9  	str	x0, [sp, #8]
     9a4: e0 07 40 f9  	ldr	x0, [sp, #8]
     9a8: ff 43 00 91  	add	sp, sp, #16
     9ac: c0 03 5f d6  	ret

00000000000009b0 <__ZNSt3__112__to_addressB6v15006IKcEEPT_S3_>:
; _Tp* __to_address(_Tp* __p) _NOEXCEPT {
     9b0: ff 43 00 d1  	sub	sp, sp, #16
     9b4: e0 07 00 f9  	str	x0, [sp, #8]
;     return __p;
     9b8: e0 07 40 f9  	ldr	x0, [sp, #8]
     9bc: ff 43 00 91  	add	sp, sp, #16
     9c0: c0 03 5f d6  	ret

00000000000009c4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev>:
;         {return __is_long() ? __get_long_pointer() : __get_short_pointer();}
     9c4: ff c3 00 d1  	sub	sp, sp, #48
     9c8: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     9cc: fd 83 00 91  	add	x29, sp, #32
     9d0: a0 83 1f f8  	stur	x0, [x29, #-8]
     9d4: a0 83 5f f8  	ldur	x0, [x29, #-8]
     9d8: e0 0b 00 f9  	str	x0, [sp, #16]
     9dc: 00 00 00 94  	bl	0x9dc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x18>
     9e0: c0 00 00 36  	tbz	w0, #0, 0x9f8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x34>
     9e4: 01 00 00 14  	b	0x9e8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x24>
     9e8: e0 0b 40 f9  	ldr	x0, [sp, #16]
;         {return __is_long() ? __get_long_pointer() : __get_short_pointer();}
     9ec: 00 00 00 94  	bl	0x9ec <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x28>
     9f0: e0 07 00 f9  	str	x0, [sp, #8]
     9f4: 05 00 00 14  	b	0xa08 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x44>
     9f8: e0 0b 40 f9  	ldr	x0, [sp, #16]
;         {return __is_long() ? __get_long_pointer() : __get_short_pointer();}
     9fc: 00 00 00 94  	bl	0x9fc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x38>
     a00: e0 07 00 f9  	str	x0, [sp, #8]
     a04: 01 00 00 14  	b	0xa08 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE13__get_pointerB6v15006Ev+0x44>
     a08: e0 07 40 f9  	ldr	x0, [sp, #8]
;         {return __is_long() ? __get_long_pointer() : __get_short_pointer();}
     a0c: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     a10: ff c3 00 91  	add	sp, sp, #48
     a14: c0 03 5f d6  	ret

0000000000000a18 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev>:
;     bool __is_long() const _NOEXCEPT {
     a18: ff c3 00 d1  	sub	sp, sp, #48
     a1c: fd 7b 02 a9  	stp	x29, x30, [sp, #32]
     a20: fd 83 00 91  	add	x29, sp, #32
     a24: e0 0b 00 f9  	str	x0, [sp, #16]
     a28: e8 0b 40 f9  	ldr	x8, [sp, #16]
     a2c: e8 07 00 f9  	str	x8, [sp, #8]
;         if (__libcpp_is_constant_evaluated())
     a30: 00 00 00 94  	bl	0xa30 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev+0x18>
     a34: e0 00 00 36  	tbz	w0, #0, 0xa50 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev+0x38>
     a38: 01 00 00 14  	b	0xa3c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev+0x24>
     a3c: 28 00 80 52  	mov	w8, #1
;             return true;
     a40: 08 01 00 12  	and	w8, w8, #0x1
     a44: 08 01 00 12  	and	w8, w8, #0x1
     a48: a8 f3 1f 38  	sturb	w8, [x29, #-1]
     a4c: 0b 00 00 14  	b	0xa78 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev+0x60>
     a50: e0 07 40 f9  	ldr	x0, [sp, #8]
;         return __r_.first().__s.__is_long_;
     a54: 00 00 00 94  	bl	0xa54 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev+0x3c>
     a58: 08 5c 40 39  	ldrb	w8, [x0, #23]
     a5c: 08 7d 07 53  	lsr	w8, w8, #7
     a60: 08 1d 00 72  	ands	w8, w8, #0xff
     a64: e8 07 9f 1a  	cset	w8, ne
     a68: 08 01 00 12  	and	w8, w8, #0x1
     a6c: 08 01 00 12  	and	w8, w8, #0x1
     a70: a8 f3 1f 38  	sturb	w8, [x29, #-1]
     a74: 01 00 00 14  	b	0xa78 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9__is_longB6v15006Ev+0x60>
;     }
     a78: a8 f3 5f 38  	ldurb	w8, [x29, #-1]
     a7c: 00 01 00 12  	and	w0, w8, #0x1
     a80: fd 7b 42 a9  	ldp	x29, x30, [sp, #32]
     a84: ff c3 00 91  	add	sp, sp, #48
     a88: c0 03 5f d6  	ret

0000000000000a8c <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev>:
;         {return __r_.first().__l.__data_;}
     a8c: ff 83 00 d1  	sub	sp, sp, #32
     a90: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     a94: fd 43 00 91  	add	x29, sp, #16
     a98: e0 07 00 f9  	str	x0, [sp, #8]
     a9c: e0 07 40 f9  	ldr	x0, [sp, #8]
     aa0: 00 00 00 94  	bl	0xaa0 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE18__get_long_pointerB6v15006Ev+0x14>
     aa4: 00 00 40 f9  	ldr	x0, [x0]
     aa8: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     aac: ff 83 00 91  	add	sp, sp, #32
     ab0: c0 03 5f d6  	ret

0000000000000ab4 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev>:
;         {return pointer_traits<const_pointer>::pointer_to(__r_.first().__s.__data_[0]);}
     ab4: ff 83 00 d1  	sub	sp, sp, #32
     ab8: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     abc: fd 43 00 91  	add	x29, sp, #16
     ac0: e0 07 00 f9  	str	x0, [sp, #8]
     ac4: e0 07 40 f9  	ldr	x0, [sp, #8]
     ac8: 00 00 00 94  	bl	0xac8 <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev+0x14>
     acc: 00 00 00 94  	bl	0xacc <__ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE19__get_short_pointerB6v15006Ev+0x18>
     ad0: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     ad4: ff 83 00 91  	add	sp, sp, #32
     ad8: c0 03 5f d6  	ret

0000000000000adc <__ZNSt3__130__libcpp_is_constant_evaluatedEv>:
; bool __libcpp_is_constant_evaluated() _NOEXCEPT { return __builtin_is_constant_evaluated(); }
     adc: 08 00 80 52  	mov	w8, #0
     ae0: 00 01 00 12  	and	w0, w8, #0x1
     ae4: c0 03 5f d6  	ret

0000000000000ae8 <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev>:
;   typename _Base1::const_reference first() const _NOEXCEPT {
     ae8: ff 83 00 d1  	sub	sp, sp, #32
     aec: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     af0: fd 43 00 91  	add	x29, sp, #16
     af4: e0 07 00 f9  	str	x0, [sp, #8]
     af8: e0 07 40 f9  	ldr	x0, [sp, #8]
;     return static_cast<_Base1 const&>(*this).__get();
     afc: 00 00 00 94  	bl	0xafc <__ZNKSt3__117__compressed_pairINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repES5_E5firstB6v15006Ev+0x14>
     b00: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     b04: ff 83 00 91  	add	sp, sp, #32
     b08: c0 03 5f d6  	ret

0000000000000b0c <__ZNKSt3__122__compressed_pair_elemINS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE5__repELi0ELb0EE5__getB6v15006Ev>:
;   _LIBCPP_HIDE_FROM_ABI _LIBCPP_CONSTEXPR const_reference __get() const _NOEXCEPT { return __value_; }
     b0c: ff 43 00 d1  	sub	sp, sp, #16
     b10: e0 07 00 f9  	str	x0, [sp, #8]
     b14: e0 07 40 f9  	ldr	x0, [sp, #8]
     b18: ff 43 00 91  	add	sp, sp, #16
     b1c: c0 03 5f d6  	ret

0000000000000b20 <__ZNSt3__114pointer_traitsIPKcE10pointer_toB6v15006ERS1_>:
;         {return _VSTD::addressof(__r);}
     b20: ff 43 00 d1  	sub	sp, sp, #16
     b24: e0 07 00 f9  	str	x0, [sp, #8]
     b28: e0 07 40 f9  	ldr	x0, [sp, #8]
     b2c: ff 43 00 91  	add	sp, sp, #16
     b30: c0 03 5f d6  	ret

0000000000000b34 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE>:
;         : __sbuf_(__s.rdbuf()) {}
     b34: ff 03 01 d1  	sub	sp, sp, #64
     b38: fd 7b 03 a9  	stp	x29, x30, [sp, #48]
     b3c: fd c3 00 91  	add	x29, sp, #48
     b40: a0 83 1f f8  	stur	x0, [x29, #-8]
     b44: a1 03 1f f8  	stur	x1, [x29, #-16]
     b48: a8 83 5f f8  	ldur	x8, [x29, #-8]
     b4c: e8 03 00 f9  	str	x8, [sp]
     b50: a8 03 5f f8  	ldur	x8, [x29, #-16]
     b54: 09 01 40 f9  	ldr	x9, [x8]
     b58: 29 81 5e f8  	ldur	x9, [x9, #-24]
     b5c: 00 01 09 8b  	add	x0, x8, x9
     b60: 00 00 00 94  	bl	0xb60 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE+0x2c>
     b64: e0 07 00 f9  	str	x0, [sp, #8]
     b68: 01 00 00 14  	b	0xb6c <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE+0x38>
     b6c: e0 03 40 f9  	ldr	x0, [sp]
     b70: e8 07 40 f9  	ldr	x8, [sp, #8]
;         : __sbuf_(__s.rdbuf()) {}
     b74: 08 00 00 f9  	str	x8, [x0]
     b78: fd 7b 43 a9  	ldp	x29, x30, [sp, #48]
     b7c: ff 03 01 91  	add	sp, sp, #64
     b80: c0 03 5f d6  	ret
     b84: e8 03 01 aa  	mov	x8, x1
     b88: e0 0f 00 f9  	str	x0, [sp, #24]
     b8c: e8 17 00 b9  	str	w8, [sp, #20]
     b90: 01 00 00 14  	b	0xb94 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE+0x60>
     b94: e0 0f 40 f9  	ldr	x0, [sp, #24]
     b98: 00 00 00 94  	bl	0xb98 <__ZNSt3__119ostreambuf_iteratorIcNS_11char_traitsIcEEEC2B6v15006ERNS_13basic_ostreamIcS2_EE+0x64>

0000000000000b9c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev>:
; {
     b9c: ff 83 00 d1  	sub	sp, sp, #32
     ba0: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     ba4: fd 43 00 91  	add	x29, sp, #16
     ba8: e0 07 00 f9  	str	x0, [sp, #8]
     bac: e0 07 40 f9  	ldr	x0, [sp, #8]
;     return static_cast<basic_streambuf<char_type, traits_type>*>(ios_base::rdbuf());
     bb0: 00 00 00 94  	bl	0xbb0 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5rdbufB6v15006Ev+0x14>
     bb4: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     bb8: ff 83 00 91  	add	sp, sp, #32
     bbc: c0 03 5f d6  	ret

0000000000000bc0 <__ZNKSt3__18ios_base5rdbufB6v15006Ev>:
;     _LIBCPP_INLINE_VISIBILITY void* rdbuf() const {return __rdbuf_;}
     bc0: ff 43 00 d1  	sub	sp, sp, #16
     bc4: e0 07 00 f9  	str	x0, [sp, #8]
     bc8: e8 07 40 f9  	ldr	x8, [sp, #8]
     bcc: 00 15 40 f9  	ldr	x0, [x8, #40]
     bd0: ff 43 00 91  	add	sp, sp, #16
     bd4: c0 03 5f d6  	ret

0000000000000bd8 <__ZNSt3__111char_traitsIcE11eq_int_typeEii>:
;         {return __c1 == __c2;}
     bd8: ff 43 00 d1  	sub	sp, sp, #16
     bdc: e0 0f 00 b9  	str	w0, [sp, #12]
     be0: e1 0b 00 b9  	str	w1, [sp, #8]
     be4: e8 0f 40 b9  	ldr	w8, [sp, #12]
     be8: e9 0b 40 b9  	ldr	w9, [sp, #8]
     bec: 08 01 09 6b  	subs	w8, w8, w9
     bf0: e8 17 9f 1a  	cset	w8, eq
     bf4: 00 01 00 12  	and	w0, w8, #0x1
     bf8: ff 43 00 91  	add	sp, sp, #16
     bfc: c0 03 5f d6  	ret

0000000000000c00 <__ZNSt3__111char_traitsIcE3eofEv>:
;         {return int_type(EOF);}
     c00: 00 00 80 12  	mov	w0, #-1
     c04: c0 03 5f d6  	ret

0000000000000c08 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec>:
; {
     c08: ff 43 01 d1  	sub	sp, sp, #80
     c0c: fd 7b 04 a9  	stp	x29, x30, [sp, #64]
     c10: fd 03 01 91  	add	x29, sp, #64
     c14: a0 83 1f f8  	stur	x0, [x29, #-8]
     c18: a1 73 1f 38  	sturb	w1, [x29, #-9]
     c1c: a0 83 5f f8  	ldur	x0, [x29, #-8]
     c20: a8 63 00 d1  	sub	x8, x29, #24
     c24: e8 07 00 f9  	str	x8, [sp, #8]
;     return use_facet<ctype<char_type> >(getloc()).widen(__c);
     c28: 00 00 00 94  	bl	0xc28 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x20>
     c2c: e0 07 40 f9  	ldr	x0, [sp, #8]
     c30: 00 00 00 94  	bl	0xc30 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x28>
     c34: e0 0b 00 f9  	str	x0, [sp, #16]
     c38: 01 00 00 14  	b	0xc3c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x34>
     c3c: e0 0b 40 f9  	ldr	x0, [sp, #16]
;     return use_facet<ctype<char_type> >(getloc()).widen(__c);
     c40: a1 73 df 38  	ldursb	w1, [x29, #-9]
     c44: 00 00 00 94  	bl	0xc44 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x3c>
     c48: e0 07 00 b9  	str	w0, [sp, #4]
     c4c: 01 00 00 14  	b	0xc50 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x48>
     c50: a0 63 00 d1  	sub	x0, x29, #24
;     return use_facet<ctype<char_type> >(getloc()).widen(__c);
     c54: 00 00 00 94  	bl	0xc54 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x4c>
     c58: e8 07 40 b9  	ldr	w8, [sp, #4]
     c5c: 00 1d 00 13  	sxtb	w0, w8
     c60: fd 7b 44 a9  	ldp	x29, x30, [sp, #64]
     c64: ff 43 01 91  	add	sp, sp, #80
     c68: c0 03 5f d6  	ret
; }
     c6c: e8 03 01 aa  	mov	x8, x1
     c70: e0 13 00 f9  	str	x0, [sp, #32]
     c74: e8 1f 00 b9  	str	w8, [sp, #28]
     c78: a0 63 00 d1  	sub	x0, x29, #24
;     return use_facet<ctype<char_type> >(getloc()).widen(__c);
     c7c: 00 00 00 94  	bl	0xc7c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x74>
     c80: 01 00 00 14  	b	0xc84 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x7c>
     c84: 01 00 00 14  	b	0xc88 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x80>
     c88: e0 13 40 f9  	ldr	x0, [sp, #32]
     c8c: 00 00 00 94  	bl	0xc8c <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x84>
     c90: 00 00 00 94  	bl	0xc90 <__ZNKSt3__19basic_iosIcNS_11char_traitsIcEEE5widenB6v15006Ec+0x88>

0000000000000c94 <__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE>:
; {
     c94: ff 83 00 d1  	sub	sp, sp, #32
     c98: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     c9c: fd 43 00 91  	add	x29, sp, #16
     ca0: e0 07 00 f9  	str	x0, [sp, #8]
;     return static_cast<const _Facet&>(*__l.use_facet(_Facet::id));
     ca4: e0 07 40 f9  	ldr	x0, [sp, #8]
     ca8: 01 00 00 90  	adrp	x1, 0x0 <__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE+0x14>
     cac: 21 00 40 f9  	ldr	x1, [x1]
;     return static_cast<const _Facet&>(*__l.use_facet(_Facet::id));
     cb0: 00 00 00 94  	bl	0xcb0 <__ZNSt3__19use_facetB6v15006INS_5ctypeIcEEEERKT_RKNS_6localeE+0x1c>
     cb4: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     cb8: ff 83 00 91  	add	sp, sp, #32
     cbc: c0 03 5f d6  	ret

0000000000000cc0 <__ZNKSt3__15ctypeIcE5widenB6v15006Ec>:
;     {
     cc0: ff 83 00 d1  	sub	sp, sp, #32
     cc4: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     cc8: fd 43 00 91  	add	x29, sp, #16
     ccc: e0 07 00 f9  	str	x0, [sp, #8]
     cd0: e1 1f 00 39  	strb	w1, [sp, #7]
     cd4: e0 07 40 f9  	ldr	x0, [sp, #8]
;         return do_widen(__c);
     cd8: e1 1f c0 39  	ldrsb	w1, [sp, #7]
     cdc: 08 00 40 f9  	ldr	x8, [x0]
     ce0: 08 1d 40 f9  	ldr	x8, [x8, #56]
     ce4: 00 01 3f d6  	blr	x8
     ce8: 00 1c 00 13  	sxtb	w0, w0
     cec: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     cf0: ff 83 00 91  	add	sp, sp, #32
     cf4: c0 03 5f d6  	ret

0000000000000cf8 <__ZNSt3__18ios_base8setstateB6v15006Ej>:
; {
     cf8: ff 83 00 d1  	sub	sp, sp, #32
     cfc: fd 7b 01 a9  	stp	x29, x30, [sp, #16]
     d00: fd 43 00 91  	add	x29, sp, #16
     d04: e0 07 00 f9  	str	x0, [sp, #8]
     d08: e1 07 00 b9  	str	w1, [sp, #4]
     d0c: e0 07 40 f9  	ldr	x0, [sp, #8]
;     clear(__rdstate_ | __state);
     d10: 08 20 40 b9  	ldr	w8, [x0, #32]
     d14: e9 07 40 b9  	ldr	w9, [sp, #4]
     d18: 01 01 09 2a  	orr	w1, w8, w9
     d1c: 00 00 00 94  	bl	0xd1c <__ZNSt3__18ios_base8setstateB6v15006Ej+0x24>
; }
     d20: fd 7b 41 a9  	ldp	x29, x30, [sp, #16]
     d24: ff 83 00 91  	add	sp, sp, #32
     d28: c0 03 5f d6  	ret
