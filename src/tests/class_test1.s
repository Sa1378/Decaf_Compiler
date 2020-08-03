.data
.align 2
BooleanLabel: .space 8
.align 2
TrueLabel: .asciiz "true"
.align 2
FalseLabel: .asciiz "false"
.align 2
NewLineLabel: .asciiz "\n"
.align 2
SpaceCharLabel: .asciiz " "
.align 2
DoubleRoundingLabel: .float 10000.0
.align 2
HalfDoubleLabel: .float 0.5
.align 2
ReadLineBuffer: .space 4
.align 2
CarriageReturnLabel: .asciiz "\r"
.align 2
stringLabel0: .asciiz "salam"
.align 2
ClassVtable_A:
.align 2
.space 4
.align 2
.text
main:
j InitialLabel
funcLabel_A.f: 
sw $ra,4($fp)
la $t0,stringLabel0
sw $t0,-4($fp)
lw $a0,-4($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,4($fp)
jr $t0
funcLabel_main: 
sw $ra,4($fp)
li $a0,8
li $v0,9
syscall
la $t0,ClassVtable_A
sw $t0,0($v0)
sw $v0,-8($fp)
addi $t0,$fp,-4
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,-8($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,0($t0)
sw $t1,-20($fp)
sw $fp,-32($fp)
lw $t0,-20($fp)
sw $t0,-24($fp)
lw $t0,-20($fp)
lw $t0,0($t0)
lw $t0,0($t0)
addi $fp,$fp,-32
jalr $t0
lw $fp,0($fp)
lw $t0,4($fp)
jr $t0
InitialLabel: 
la $t0,BooleanLabel
la $t1,FalseLabel
la $t2,TrueLabel
sw $t1,0($t0)
sw $t2,4($t0)
move $s7,$sp
addi $fp,$sp,0
la $t0,ClassVtable_A
la $t1,funcLabel_A.f
sw $t1,0($t0)
sw $fp,-28($fp)
addi $fp,$fp,-28
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-24($fp)
li $v0,10
syscall
