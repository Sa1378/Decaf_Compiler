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
intLabel0: .word 10
.align 2
intLabel1: .word 10
.align 2
intLabel2: .word 4
.align 2
intLabel3: .word 4
.align 2
.text
main:
j InitialLabel
funcLabel_main: 
sw $ra,4($fp)
lw $t0,intLabel0
sw $t0,-12($fp)
lw $t0,-12($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-16($fp)
addi $t0,$fp,-4
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,-16($fp)
sw $t1,0($t0)
lw $t0,intLabel1
sw $t0,-24($fp)
addi $t0,$fp,-4
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,0($t0)
sw $t1,-32($fp)
lw $t0,intLabel2
sw $t0,-36($fp)
lw $t0,-32($fp)
lw $t1,-36($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-40($fp)
lw $t0,-40($fp)
lw $t1,-24($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,0($t0)
sw $t1,-48($fp)
addi $t0,$fp,-8
sw $t0,-52($fp)
lw $t0,-52($fp)
lw $t1,-48($fp)
sw $t1,0($t0)
lw $t0,intLabel3
sw $t0,-56($fp)
lw $t0,-48($fp)
lw $t1,-56($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
lw $a0,-64($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
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
sw $fp,-72($fp)
addi $fp,$fp,-72
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-68($fp)
li $v0,10
syscall
