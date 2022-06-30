// Determining the Rotation Matrix, Transpose, Determinant of a given matrix
area Rotation_matrix, code, readwrite
	MOV R4,#3
	ADR r1,array
	ADR r2,result
y	MOV r0,#3
	ADD r1,r1,#24
// Determining Rotation Matrix
x	LDR r7,[r1],#-12
	STR r7,[r2],#4
	SUBS r0,r0,#1
	BNE x
	ADD r1,r1,#16
	SUBS r4,r4,#1
	BNE y
	MOV r4,#3
	ADR r1,array
w	MOV r0,#3
// Determining transpose of array
z	LDR r7,[r1],#12
	STR r7,[r2],#4
	SUBS r0,r0,#1
	BNE z
	SUBS r4,r4,#1
	SUB r1,r1,#32
	BNE w
// Determining the determinant of array
	ADR r1,array
	LDR r4,[r1],#16
	LDR r3,[r1],#16
	LDR r5,[r1],#-4
	MUL r7,r3,r5
	LDR r3,[r1],#-8
	LDR r5,[r1],#-8
	MUL r8,r3,r5
	SUB r7,r7,r8
	MUL r6,r4,r7
	ADR r9,array
	ADD r9,r9,#4
	LDR r10,[r9],#4
	LDR r3,[r1],#20
	LDR r5,[r1],#-8
	MUL r7,r3,r5
	LDR r3,[r1],#-4
	LDR r5,[r1],#-8
	MUL r8,r3,r5
	SUB r7,r7,r8
	MUL r11,r7,r10
	SUB r6,r6,r11
	LDR r10,[r9],#0
	LDR r3,[r1],#16
	LDR r5,[r1],#-4
	MUL r7,r3,r5
	LDR r3,[r1],#-8
	LDR r5,[r1],#0
	MUL r8,r3,r5
	SUB r7,r7,r8
	MUL r11,r7,r10
	ADD r6,r6,r11
	STR r6,[r2],#0
S
array        DCD 1,2,3
	  DCD 4,5,6
	  DCD 7,8,9

result 	  SPACE 100	  	
       	  END
