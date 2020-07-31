.data
BooleanLabel: .space 8
TrueLabel: .asciiz "true"
FalseLabel: .asciiz "false"
NewLineLabel: .asciiz "\n"
SpaceCharLabel: .asciiz " "
DoubleRoundingLabel: .float 10000
HalfDoubleLabel: .float 0.5
intLabel0: .word 0
intLabel1: .word 1
boolLabel0: .word 1
stringLabel0: .asciiz "Please enter the #"
stringLabel1: .asciiz " number:"
intLabel2: .word 0
intLabel3: .word 1
stringLabel2: .asciiz "Sum of "
stringLabel3: .asciiz " items is: "
.text
j InitialLabel
funcLabel_main: 
sw $ra,4($fp)
lw $t0,intLabel0
sw $t0,-16($fp)
addi $t0,$fp,-8
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,-16($fp)
sw $t1,0($t0)
lw $t0,intLabel1
sw $t0,-24($fp)
addi $t0,$fp,-12
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,-24($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere0:
lw $t0,boolLabel0
sw $t0,-32($fp)
lw $t0,-32($fp)
beq $t0,$zero,NiceLabelYouHaveThere1
la $t0,stringLabel0
sw $t0,-36($fp)
lw $a0,-36($fp)
li $v0,4
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
addi $t0,$fp,-12
sw $t0,-40($fp)
lw $t0,-40($fp)
lw $t1,0($t0)
sw $t1,-44($fp)
lw $a0,-44($fp)
li $v0,1
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
la $t0,stringLabel1
sw $t0,-48($fp)
lw $a0,-48($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
li $v0,5
syscall
sw $v0,-52($fp)
addi $t0,$fp,-4
sw $t0,-56($fp)
lw $t0,-56($fp)
lw $t1,-52($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
lw $t0,intLabel2
sw $t0,-68($fp)
lw $t0,-64($fp)
lw $t1,-68($fp)
slt $t2,$t0,$t1
sw $t2,-72($fp)
lw $t0,-72($fp)
beq $t0,$zero,NiceLabelYouHaveThere2
j NiceLabelYouHaveThere1
NiceLabelYouHaveThere2:
addi $t0,$fp,-8
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
addi $t0,$fp,-8
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,-80($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,0($t0)
sw $t1,-92($fp)
lw $t0,-80($fp)
lw $t1,-92($fp)
add $t2,$t0,$t1
sw $t2,-96($fp)
addi $t0,$fp,-12
sw $t0,-100($fp)
lw $t0,-100($fp)
lw $t1,0($t0)
sw $t1,-104($fp)
addi $t0,$fp,-12
sw $t0,-108($fp)
lw $t0,-108($fp)
lw $t1,-104($fp)
sw $t1,0($t0)
lw $t0,intLabel3
sw $t0,-112($fp)
lw $t0,-104($fp)
lw $t1,-112($fp)
add $t2,$t0,$t1
sw $t2,-116($fp)
j NiceLabelYouHaveThere0
NiceLabelYouHaveThere1:
la $t0,stringLabel2
sw $t0,-120($fp)
lw $a0,-120($fp)
li $v0,4
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
addi $t0,$fp,-12
sw $t0,-124($fp)
lw $t0,-124($fp)
lw $t1,0($t0)
sw $t1,-128($fp)
lw $a0,-128($fp)
li $v0,1
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
la $t0,stringLabel3
sw $t0,-132($fp)
lw $a0,-132($fp)
li $v0,4
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
addi $t0,$fp,-8
sw $t0,-136($fp)
lw $t0,-136($fp)
lw $t1,0($t0)
sw $t1,-140($fp)
lw $a0,-140($fp)
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
sw $fp,-148($fp)
addi $fp,$fp,-148
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-144($fp)
li $v0,10
syscall
