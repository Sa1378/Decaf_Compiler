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
sw $v0,-24($fp)
addi $t0,$fp,-4
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,-24($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-32($fp)
addi $t0,$fp,-8
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,-32($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-40($fp)
addi $t0,$fp,-12
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,-40($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-48($fp)
addi $t0,$fp,-16
sw $t0,-52($fp)
lw $t0,-52($fp)
lw $t1,-48($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-56($fp)
lw $t0,-56($fp)
lw $t1,0($t0)
sw $t1,-60($fp)
addi $t0,$fp,-8
sw $t0,-64($fp)
lw $t0,-64($fp)
lw $t1,0($t0)
sw $t1,-68($fp)
addi $t0,$fp,-12
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,0($t0)
sw $t1,-76($fp)
lw $t0,-68($fp)
lw $t1,-76($fp)
mul $t2,$t0,$t1
sw $t2,-80($fp)
lw $t0,-60($fp)
lw $t1,-80($fp)
add $t2,$t0,$t1
sw $t2,-84($fp)
addi $t0,$fp,-16
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,0($t0)
sw $t1,-92($fp)
addi $t0,$fp,-4
sw $t0,-96($fp)
lw $t0,-96($fp)
lw $t1,0($t0)
sw $t1,-100($fp)
lw $t0,-92($fp)
lw $t1,-100($fp)
div $t0,$t1
mflo $t2
sw $t2,-104($fp)
lw $t0,-84($fp)
lw $t1,-104($fp)
sub $t2,$t0,$t1
sw $t2,-108($fp)
addi $t0,$fp,-20
sw $t0,-112($fp)
lw $t0,-112($fp)
lw $t1,-108($fp)
sw $t1,0($t0)
addi $t0,$fp,-20
sw $t0,-116($fp)
lw $t0,-116($fp)
lw $t1,0($t0)
sw $t1,-120($fp)
lw $a0,-120($fp)
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
sw $fp,-128($fp)
addi $fp,$fp,-128
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-124($fp)
li $v0,10
syscall
