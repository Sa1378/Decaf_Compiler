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
intLabel0: .word 2
.align 2
intLabel1: .word 85
.align 2
intLabel2: .word 2
.align 2
intLabel3: .word 3
.align 2
.text
main:
j InitialLabel
funcLabel_main: 
sw $ra,4($fp)
lw $t0,intLabel0
sw $t0,-24($fp)
addi $t0,$fp,-20
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,-24($fp)
sw $t1,0($t0)
lw $t0,intLabel1
sw $t0,-32($fp)
lw $t0,intLabel2
sw $t0,-36($fp)
lw $t0,intLabel3
sw $t0,-40($fp)
lw $t0,-36($fp)
lw $t1,-40($fp)
mul $t2,$t0,$t1
sw $t2,-44($fp)
addi $t0,$fp,-12
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,-44($fp)
sw $t1,0($t0)
lw $t0,-32($fp)
lw $t1,-44($fp)
mul $t2,$t0,$t1
sw $t2,-52($fp)
addi $t0,$fp,-20
sw $t0,-56($fp)
lw $t0,-56($fp)
lw $t1,0($t0)
sw $t1,-60($fp)
addi $t0,$fp,-16
sw $t0,-64($fp)
lw $t0,-64($fp)
lw $t1,-60($fp)
sw $t1,0($t0)
lw $t0,-52($fp)
lw $t1,-60($fp)
mul $t2,$t0,$t1
sw $t2,-68($fp)
addi $t0,$fp,-8
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,-68($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,-68($fp)
sw $t1,0($t0)
addi $t0,$fp,-20
sw $t0,-80($fp)
lw $t0,-80($fp)
lw $t1,0($t0)
sw $t1,-84($fp)
lw $a0,-84($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-16
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,0($t0)
sw $t1,-92($fp)
lw $a0,-92($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-12
sw $t0,-96($fp)
lw $t0,-96($fp)
lw $t1,0($t0)
sw $t1,-100($fp)
lw $a0,-100($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-8
sw $t0,-104($fp)
lw $t0,-104($fp)
lw $t1,0($t0)
sw $t1,-108($fp)
lw $a0,-108($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-4
sw $t0,-112($fp)
lw $t0,-112($fp)
lw $t1,0($t0)
sw $t1,-116($fp)
lw $a0,-116($fp)
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
sw $fp,-124($fp)
addi $fp,$fp,-124
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-120($fp)
li $v0,10
syscall
