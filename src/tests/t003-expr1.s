.data
BooleanLabel: .space 8
TrueLabel: .asciiz "true"
FalseLabel: .asciiz "false"
NewLineLabel: .asciiz "\n"
SpaceCharLabel: .asciiz " "
DoubleRoundingLabel: .float 10000
HalfDoubleLabel: .float 0.5
intLabel0: .word 5
intLabel1: .word 2
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
lw $t0,intLabel0
sw $t0,-72($fp)
lw $t0,-68($fp)
lw $t1,-72($fp)
mul $t2,$t0,$t1
sw $t2,-76($fp)
lw $t0,-60($fp)
lw $t1,-76($fp)
add $t2,$t0,$t1
sw $t2,-80($fp)
addi $t0,$fp,-20
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,-80($fp)
sw $t1,0($t0)
addi $t0,$fp,-20
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,0($t0)
sw $t1,-92($fp)
addi $t0,$fp,-16
sw $t0,-96($fp)
lw $t0,-96($fp)
lw $t1,0($t0)
sw $t1,-100($fp)
lw $t0,-92($fp)
lw $t1,-100($fp)
mul $t2,$t0,$t1
sw $t2,-104($fp)
addi $t0,$fp,-4
sw $t0,-108($fp)
lw $t0,-108($fp)
lw $t1,-104($fp)
sw $t1,0($t0)
lw $t0,intLabel1
sw $t0,-112($fp)
addi $t0,$fp,-4
sw $t0,-116($fp)
lw $t0,-116($fp)
lw $t1,0($t0)
sw $t1,-120($fp)
lw $t0,-112($fp)
lw $t1,-120($fp)
mul $t2,$t0,$t1
sw $t2,-124($fp)
addi $t0,$fp,-4
sw $t0,-128($fp)
lw $t0,-128($fp)
lw $t1,0($t0)
sw $t1,-132($fp)
addi $t0,$fp,-8
sw $t0,-136($fp)
lw $t0,-136($fp)
lw $t1,0($t0)
sw $t1,-140($fp)
lw $t0,-132($fp)
lw $t1,-140($fp)
add $t2,$t0,$t1
sw $t2,-144($fp)
addi $t0,$fp,-12
sw $t0,-148($fp)
lw $t0,-148($fp)
lw $t1,0($t0)
sw $t1,-152($fp)
addi $t0,$fp,-16
sw $t0,-156($fp)
lw $t0,-156($fp)
lw $t1,0($t0)
sw $t1,-160($fp)
lw $t0,-152($fp)
lw $t1,-160($fp)
add $t2,$t0,$t1
sw $t2,-164($fp)
lw $t0,-144($fp)
lw $t1,-164($fp)
div $t0,$t1
mflo $t2
sw $t2,-168($fp)
lw $t0,-124($fp)
lw $t1,-168($fp)
add $t2,$t0,$t1
sw $t2,-172($fp)
addi $t0,$fp,-20
sw $t0,-176($fp)
lw $t0,-176($fp)
lw $t1,-172($fp)
sw $t1,0($t0)
addi $t0,$fp,-20
sw $t0,-180($fp)
lw $t0,-180($fp)
lw $t1,0($t0)
sw $t1,-184($fp)
addi $t0,$fp,-4
sw $t0,-188($fp)
lw $t0,-188($fp)
lw $t1,0($t0)
sw $t1,-192($fp)
lw $t0,-184($fp)
lw $t1,-192($fp)
div $t0,$t1
mflo $t2
sw $t2,-196($fp)
addi $t0,$fp,-8
sw $t0,-200($fp)
lw $t0,-200($fp)
lw $t1,-196($fp)
sw $t1,0($t0)
addi $t0,$fp,-8
sw $t0,-204($fp)
lw $t0,-204($fp)
lw $t1,0($t0)
sw $t1,-208($fp)
addi $t0,$fp,-4
sw $t0,-212($fp)
lw $t0,-212($fp)
lw $t1,0($t0)
sw $t1,-216($fp)
lw $t0,-208($fp)
lw $t1,-216($fp)
mul $t2,$t0,$t1
sw $t2,-220($fp)
addi $t0,$fp,-20
sw $t0,-224($fp)
lw $t0,-224($fp)
lw $t1,0($t0)
sw $t1,-228($fp)
lw $t0,-220($fp)
lw $t1,-228($fp)
add $t2,$t0,$t1
sw $t2,-232($fp)
addi $t0,$fp,-12
sw $t0,-236($fp)
lw $t0,-236($fp)
lw $t1,-232($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-240($fp)
lw $t0,-240($fp)
lw $t1,0($t0)
sw $t1,-244($fp)
addi $t0,$fp,-8
sw $t0,-248($fp)
lw $t0,-248($fp)
lw $t1,0($t0)
sw $t1,-252($fp)
lw $t0,-244($fp)
lw $t1,-252($fp)
sub $t2,$t0,$t1
sw $t2,-256($fp)
addi $t0,$fp,-12
sw $t0,-260($fp)
lw $t0,-260($fp)
lw $t1,0($t0)
sw $t1,-264($fp)
lw $t0,-256($fp)
lw $t1,-264($fp)
sub $t2,$t0,$t1
sw $t2,-268($fp)
addi $t0,$fp,-16
sw $t0,-272($fp)
lw $t0,-272($fp)
lw $t1,0($t0)
sw $t1,-276($fp)
lw $t0,-268($fp)
lw $t1,-276($fp)
sub $t2,$t0,$t1
sw $t2,-280($fp)
addi $t0,$fp,-20
sw $t0,-284($fp)
lw $t0,-284($fp)
lw $t1,0($t0)
sw $t1,-288($fp)
lw $t0,-280($fp)
lw $t1,-288($fp)
sub $t2,$t0,$t1
sw $t2,-292($fp)
addi $t0,$fp,-16
sw $t0,-296($fp)
lw $t0,-296($fp)
lw $t1,-292($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-300($fp)
lw $t0,-300($fp)
lw $t1,0($t0)
sw $t1,-304($fp)
lw $a0,-304($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-8
sw $t0,-308($fp)
lw $t0,-308($fp)
lw $t1,0($t0)
sw $t1,-312($fp)
lw $a0,-312($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-12
sw $t0,-316($fp)
lw $t0,-316($fp)
lw $t1,0($t0)
sw $t1,-320($fp)
lw $a0,-320($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-16
sw $t0,-324($fp)
lw $t0,-324($fp)
lw $t1,0($t0)
sw $t1,-328($fp)
lw $a0,-328($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-20
sw $t0,-332($fp)
lw $t0,-332($fp)
lw $t1,0($t0)
sw $t1,-336($fp)
lw $a0,-336($fp)
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
sw $fp,-344($fp)
addi $fp,$fp,-344
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-340($fp)
li $v0,10
syscall
