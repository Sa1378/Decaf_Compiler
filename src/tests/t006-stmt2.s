.data
BooleanLabel: .space 8
TrueLabel: .asciiz "true"
FalseLabel: .asciiz "false"
NewLineLabel: .asciiz "\n"
SpaceCharLabel: .asciiz " "
DoubleRoundingLabel: .float 10000
HalfDoubleLabel: .float 0.5
.text
j InitialLabel
funcLabel_main: 
sw $ra,4($fp)
li $v0,5
syscall
sw $v0,-12($fp)
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,-12($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-20($fp)
addi $t0,$fp,-8
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,-20($fp)
sw $t1,0($t0)
sw $fp,-40($fp)
addi $t0,$fp,-4
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,0($t0)
sw $t1,-32($fp)
lw $t0,-32($fp)
sw $t0,-40($fp)
addi $t0,$fp,-8
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
lw $t0,-40($fp)
sw $t0,-40($fp)
addi $fp,$fp,-40
jal funcLabel_abs_mult
lw $fp,0($fp)
sw $v0,-44($fp)
lw $a0,-44($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,4($fp)
jr $t0
funcLabel_abs_mult: 
sw $ra,4($fp)
addi $t0,$fp,12
sw $t0,-8($fp)
lw $t0,-8($fp)
lw $t1,0($t0)
sw $t1,-12($fp)
addi $t0,$fp,8
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,0($t0)
sw $t1,-20($fp)
lw $t0,-12($fp)
lw $t1,-20($fp)
sgt $t2,$t0,$t1
sw $t2,-24($fp)
lw $t0,-24($fp)
beq $t0,$zero,NiceLabelYouHaveThere0
addi $t0,$fp,12
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,0($t0)
sw $t1,-32($fp)
addi $t0,$fp,8
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
lw $t0,-32($fp)
lw $t1,-40($fp)
sub $t2,$t0,$t1
sw $t2,-44($fp)
addi $t0,$fp,-4
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,-44($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere1
NiceLabelYouHaveThere0:
addi $t0,$fp,8
sw $t0,-52($fp)
lw $t0,-52($fp)
lw $t1,0($t0)
sw $t1,-56($fp)
addi $t0,$fp,12
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
lw $t0,-56($fp)
lw $t1,-64($fp)
sub $t2,$t0,$t1
sw $t2,-68($fp)
addi $t0,$fp,-4
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,-68($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere1:
addi $t0,$fp,-4
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
addi $t0,$fp,12
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,0($t0)
sw $t1,-88($fp)
lw $t0,-80($fp)
lw $t1,-88($fp)
mul $t2,$t0,$t1
sw $t2,-92($fp)
addi $t0,$fp,8
sw $t0,-96($fp)
lw $t0,-96($fp)
lw $t1,0($t0)
sw $t1,-100($fp)
lw $t0,-92($fp)
lw $t1,-100($fp)
mul $t2,$t0,$t1
sw $t2,-104($fp)
lw $v0,-104($fp)
lw $t0,4($fp)
jr $t0
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
sw $fp,-112($fp)
addi $fp,$fp,-112
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-108($fp)
li $v0,10
syscall
