	area Rotation_matrix, code, readwrite
	MOV R4,#3
	ADR r1,array
	adr r2,result
y	mov r0,#3
	add r1,r1,#24
	

x	ldr r7,[r1],#-12
	str r7,[r2],#4
	subs r0,r0,#1
	bne x
	add r1,r1,#16
	subs r4,r4,#1
	bne y
	mov r4,#3
	adr r1,array
w	mov r0,#3

z	ldr r7,[r1],#12
	str r7,[r2],#4
	subs r0,r0,#1
	bne z
	subs r4,r4,#1
	sub r1,r1,#32
	bne w


	adr r1,array
	ldr r4,[r1],#16
	ldr r3,[r1],#16
	ldr r5,[r1],#-4
	mul r7,r3,r5
	ldr r3,[r1],#-8
	ldr r5,[r1],#-8
	mul r8,r3,r5
	sub r7,r7,r8
	mul r6,r4,r7
	adr r9,array
	add r9,r9,#4
	ldr r10,[r9],#4
	ldr r3,[r1],#20
	ldr r5,[r1],#-8
	mul r7,r3,r5
	ldr r3,[r1],#-4
	ldr r5,[r1],#-8
	mul r8,r3,r5
	sub r7,r7,r8
	mul r11,r7,r10
	sub r6,r6,r11
	ldr r10,[r9],#0
	ldr r3,[r1],#16
	ldr r5,[r1],#-4
	mul r7,r3,r5
	ldr r3,[r1],#-8
	ldr r5,[r1],#0
	mul r8,r3,r5
	sub r7,r7,r8
	mul r11,r7,r10
	add r6,r6,r11
	str r6,[r2],#0

array dcd 1,2,3
	  dcd 4,5,6
	  dcd 7,8,9

result SPACE 100	  	
       END