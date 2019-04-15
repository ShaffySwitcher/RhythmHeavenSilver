LZ77CompressionEnabler:
push r14
ldr r4,[r5,0xC]
ldrb r4,[r4,0x3]
lsr r4,r4,7
cmp r4,1
bne @@NotLZ77Compressed
ldr r0,[r5,0xC]
ldr r0,[r0]
mov r1,0x80
lsl r1,r1,0x18
sub r0,r0,r1
ldr r1,[r5,0x10]
swi 0x12
b @@ExitCompressionCheck
@@NotLZ77Compressed:
bl 0x08008594
@@ExitCompressionCheck:
pop r15

LZ77CompressedChecker:
push r5,r14
.if (_debug ==1);&&(_nocashmessages ==1)
	push r0-r7
	ldr r3,[r5,0xC]
	ldrb r0,[r3,0xC]
	ldrb r4,[r3,0x3]
	lsr r4,7
;	cmp r4,1
;	beq @@NotCompressed
;	cmp r0,0
;	beq @@NotCompressed
	ldr r1,[r5,0x10]
	.msg "Graphic data loaded (0x%r3% -> 0x%r1%)"
	@@NotCompressed:
	pop r0-r7
.endif
.if (_debug ==1)&&(_luaconsolemessages ==1)
	push r0-r7
	ldr r3,[r5,0xC]
	ldrb r0,[r3,0xC]
	ldrb r4,[r3,0x3]
	lsr r4,7
	cmp r4,1
	beq @@NotCompressed2
	cmp r0,0
	beq @@NotCompressed2
	ldr r1,[r5,0x10]
	ldr r4,=0x02021100
	ldr r5,[r4]
	cmp r5,0x40
	blt @@addentry
	mov r6,0
	@@addentry:
	add r6,r5,1
	str r6,[r4]
	add r4,4
	lsl r5,r5,3
	add r4,r4,r5
	str r3,[r4]
	str r1,[r4,4]
	@@NotCompressed2:
	pop r0-r7
.endif
ldr r5,[r5,0xC]
ldrb r5,[r5,0x3]
lsr r5,r5,7
cmp r5,1
beq @@LZ77Compressed
bl 0x0804EAFC
@@LZ77Compressed:
pop r5,r15
.pool
;eof
