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
intLabel0: .word 0
.align 2
intLabel1: .word 1
.align 2
intLabel2: .word 0
.align 2
stringLabel0: .asciiz "Write "
.align 2
stringLabel1: .asciiz "th edge:"
.align 2
intLabel3: .word 1
.align 2
intLabel4: .word 0
.align 2
intLabel5: .word 0
.align 2
intLabel6: .word 0
.align 2
intLabel7: .word 1000000
.align 2
intLabel8: .word 1
.align 2
intLabel9: .word 0
.align 2
intLabel10: .word 1
.align 2
intLabel11: .word 0
.align 2
stringLabel2: .asciiz "Distance of "
.align 2
stringLabel3: .asciiz "th node: "
.align 2
intLabel12: .word 1
.align 2
.text
main:
j InitialLabel
funcLabel_belman_ford: 
sw $ra,4($fp)
lw $t0,intLabel0
sw $t0,-8($fp)
addi $t0,$fp,-4
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,-8($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere0:
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,0($t0)
sw $t1,-20($fp)
addi $t0,$s7,-4
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,0($t0)
sw $t1,-28($fp)
lw $t0,-20($fp)
lw $t1,-28($fp)
slt $t2,$t0,$t1
sw $t2,-32($fp)
lw $t0,-32($fp)
beq $t0,$zero,NiceLabelYouHaveThere1
addi $t0,$fp,-4
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
sw $fp,-52($fp)
lw $t0,-40($fp)
sw $t0,-44($fp)
addi $fp,$fp,-52
jal funcLabel_relax
lw $fp,0($fp)
addi $t0,$fp,-4
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,0($t0)
sw $t1,-48($fp)
lw $t0,intLabel1
sw $t0,-52($fp)
lw $t0,-48($fp)
lw $t1,-52($fp)
add $t2,$t0,$t1
sw $t2,-56($fp)
addi $t0,$fp,-4
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,-56($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere0
NiceLabelYouHaveThere1:
lw $t0,4($fp)
jr $t0
funcLabel_relax: 
sw $ra,4($fp)
addi $t0,$s7,0
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
addi $t0,$s7,-12
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,0($t0)
sw $t1,-16($fp)
addi $t0,$fp,8
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,0($t0)
sw $t1,-24($fp)
lw $t0,-16($fp)
lw $t1,-24($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-28($fp)
lw $t0,-28($fp)
lw $t1,0($t0)
sw $t1,-32($fp)
lw $t0,-8($fp)
lw $t1,-32($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
addi $t0,$s7,-16
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,0($t0)
sw $t1,-48($fp)
addi $t0,$fp,8
sw $t0,-52($fp)
lw $t0,-52($fp)
lw $t1,0($t0)
sw $t1,-56($fp)
lw $t0,-48($fp)
lw $t1,-56($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
lw $t0,-40($fp)
lw $t1,-64($fp)
add $t2,$t0,$t1
sw $t2,-68($fp)
addi $t0,$s7,0
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,0($t0)
sw $t1,-76($fp)
addi $t0,$s7,-8
sw $t0,-80($fp)
lw $t0,-80($fp)
lw $t1,0($t0)
sw $t1,-84($fp)
addi $t0,$fp,8
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,0($t0)
sw $t1,-92($fp)
lw $t0,-84($fp)
lw $t1,-92($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-96($fp)
lw $t0,-96($fp)
lw $t1,0($t0)
sw $t1,-100($fp)
lw $t0,-76($fp)
lw $t1,-100($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-104($fp)
lw $t0,-104($fp)
lw $t1,0($t0)
sw $t1,-108($fp)
lw $t0,-68($fp)
lw $t1,-108($fp)
slt $t2,$t0,$t1
sw $t2,-112($fp)
lw $t0,-112($fp)
beq $t0,$zero,NiceLabelYouHaveThere2
addi $t0,$s7,0
sw $t0,-116($fp)
lw $t0,-116($fp)
lw $t1,0($t0)
sw $t1,-120($fp)
addi $t0,$s7,-12
sw $t0,-124($fp)
lw $t0,-124($fp)
lw $t1,0($t0)
sw $t1,-128($fp)
addi $t0,$fp,8
sw $t0,-132($fp)
lw $t0,-132($fp)
lw $t1,0($t0)
sw $t1,-136($fp)
lw $t0,-128($fp)
lw $t1,-136($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-140($fp)
lw $t0,-140($fp)
lw $t1,0($t0)
sw $t1,-144($fp)
lw $t0,-120($fp)
lw $t1,-144($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-148($fp)
lw $t0,-148($fp)
lw $t1,0($t0)
sw $t1,-152($fp)
addi $t0,$s7,-16
sw $t0,-156($fp)
lw $t0,-156($fp)
lw $t1,0($t0)
sw $t1,-160($fp)
addi $t0,$fp,8
sw $t0,-164($fp)
lw $t0,-164($fp)
lw $t1,0($t0)
sw $t1,-168($fp)
lw $t0,-160($fp)
lw $t1,-168($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-172($fp)
lw $t0,-172($fp)
lw $t1,0($t0)
sw $t1,-176($fp)
lw $t0,-152($fp)
lw $t1,-176($fp)
add $t2,$t0,$t1
sw $t2,-180($fp)
addi $t0,$s7,0
sw $t0,-184($fp)
lw $t0,-184($fp)
lw $t1,0($t0)
sw $t1,-188($fp)
addi $t0,$s7,-8
sw $t0,-192($fp)
lw $t0,-192($fp)
lw $t1,0($t0)
sw $t1,-196($fp)
addi $t0,$fp,8
sw $t0,-200($fp)
lw $t0,-200($fp)
lw $t1,0($t0)
sw $t1,-204($fp)
lw $t0,-196($fp)
lw $t1,-204($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-208($fp)
lw $t0,-208($fp)
lw $t1,0($t0)
sw $t1,-212($fp)
lw $t0,-188($fp)
lw $t1,-212($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-216($fp)
lw $t0,-216($fp)
lw $t1,-180($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere2:
lw $t0,4($fp)
jr $t0
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
addi $t0,$s7,-4
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,-20($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,0($t0)
sw $t1,-32($fp)
lw $t0,-32($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-36($fp)
addi $t0,$s7,0
sw $t0,-40($fp)
lw $t0,-40($fp)
lw $t1,-36($fp)
sw $t1,0($t0)
addi $t0,$s7,-4
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,0($t0)
sw $t1,-48($fp)
lw $t0,-48($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-52($fp)
addi $t0,$s7,-8
sw $t0,-56($fp)
lw $t0,-56($fp)
lw $t1,-52($fp)
sw $t1,0($t0)
addi $t0,$s7,-4
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
lw $t0,-64($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-68($fp)
addi $t0,$s7,-12
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,-68($fp)
sw $t1,0($t0)
addi $t0,$s7,-4
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
lw $t0,-80($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-84($fp)
addi $t0,$s7,-16
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,-84($fp)
sw $t1,0($t0)
lw $t0,intLabel2
sw $t0,-92($fp)
addi $t0,$fp,-8
sw $t0,-96($fp)
lw $t0,-96($fp)
lw $t1,-92($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere3:
addi $t0,$fp,-8
sw $t0,-100($fp)
lw $t0,-100($fp)
lw $t1,0($t0)
sw $t1,-104($fp)
addi $t0,$s7,-4
sw $t0,-108($fp)
lw $t0,-108($fp)
lw $t1,0($t0)
sw $t1,-112($fp)
lw $t0,-104($fp)
lw $t1,-112($fp)
slt $t2,$t0,$t1
sw $t2,-116($fp)
lw $t0,-116($fp)
beq $t0,$zero,NiceLabelYouHaveThere4
la $t0,stringLabel0
sw $t0,-120($fp)
lw $a0,-120($fp)
li $v0,4
syscall
addi $t0,$fp,-8
sw $t0,-124($fp)
lw $t0,-124($fp)
lw $t1,0($t0)
sw $t1,-128($fp)
lw $a0,-128($fp)
li $v0,1
syscall
la $t0,stringLabel1
sw $t0,-132($fp)
lw $a0,-132($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
li $v0,5
syscall
sw $v0,-136($fp)
addi $t0,$s7,-12
sw $t0,-140($fp)
lw $t0,-140($fp)
lw $t1,0($t0)
sw $t1,-144($fp)
addi $t0,$fp,-8
sw $t0,-148($fp)
lw $t0,-148($fp)
lw $t1,0($t0)
sw $t1,-152($fp)
lw $t0,-144($fp)
lw $t1,-152($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-156($fp)
lw $t0,-156($fp)
lw $t1,-136($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-160($fp)
addi $t0,$s7,-8
sw $t0,-164($fp)
lw $t0,-164($fp)
lw $t1,0($t0)
sw $t1,-168($fp)
addi $t0,$fp,-8
sw $t0,-172($fp)
lw $t0,-172($fp)
lw $t1,0($t0)
sw $t1,-176($fp)
lw $t0,-168($fp)
lw $t1,-176($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-180($fp)
lw $t0,-180($fp)
lw $t1,-160($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-184($fp)
addi $t0,$s7,-16
sw $t0,-188($fp)
lw $t0,-188($fp)
lw $t1,0($t0)
sw $t1,-192($fp)
addi $t0,$fp,-8
sw $t0,-196($fp)
lw $t0,-196($fp)
lw $t1,0($t0)
sw $t1,-200($fp)
lw $t0,-192($fp)
lw $t1,-200($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-204($fp)
lw $t0,-204($fp)
lw $t1,-184($fp)
sw $t1,0($t0)
addi $t0,$fp,-8
sw $t0,-208($fp)
lw $t0,-208($fp)
lw $t1,0($t0)
sw $t1,-212($fp)
lw $t0,intLabel3
sw $t0,-216($fp)
lw $t0,-212($fp)
lw $t1,-216($fp)
add $t2,$t0,$t1
sw $t2,-220($fp)
addi $t0,$fp,-8
sw $t0,-224($fp)
lw $t0,-224($fp)
lw $t1,-220($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere3
NiceLabelYouHaveThere4:
lw $t0,intLabel4
sw $t0,-228($fp)
addi $t0,$fp,-8
sw $t0,-232($fp)
lw $t0,-232($fp)
lw $t1,-228($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere5:
addi $t0,$fp,-8
sw $t0,-236($fp)
lw $t0,-236($fp)
lw $t1,0($t0)
sw $t1,-240($fp)
addi $t0,$fp,-4
sw $t0,-244($fp)
lw $t0,-244($fp)
lw $t1,0($t0)
sw $t1,-248($fp)
lw $t0,-240($fp)
lw $t1,-248($fp)
slt $t2,$t0,$t1
sw $t2,-252($fp)
lw $t0,-252($fp)
beq $t0,$zero,NiceLabelYouHaveThere6
addi $t0,$fp,-8
sw $t0,-256($fp)
lw $t0,-256($fp)
lw $t1,0($t0)
sw $t1,-260($fp)
lw $t0,intLabel5
sw $t0,-264($fp)
lw $t0,-260($fp)
lw $t1,-264($fp)
seq $t2,$t0,$t1
sw $t2,-268($fp)
lw $t0,-268($fp)
beq $t0,$zero,NiceLabelYouHaveThere7
lw $t0,intLabel6
sw $t0,-272($fp)
addi $t0,$s7,0
sw $t0,-276($fp)
lw $t0,-276($fp)
lw $t1,0($t0)
sw $t1,-280($fp)
addi $t0,$fp,-8
sw $t0,-284($fp)
lw $t0,-284($fp)
lw $t1,0($t0)
sw $t1,-288($fp)
lw $t0,-280($fp)
lw $t1,-288($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-292($fp)
lw $t0,-292($fp)
lw $t1,-272($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere8
NiceLabelYouHaveThere7:
lw $t0,intLabel7
sw $t0,-296($fp)
addi $t0,$s7,0
sw $t0,-300($fp)
lw $t0,-300($fp)
lw $t1,0($t0)
sw $t1,-304($fp)
addi $t0,$fp,-8
sw $t0,-308($fp)
lw $t0,-308($fp)
lw $t1,0($t0)
sw $t1,-312($fp)
lw $t0,-304($fp)
lw $t1,-312($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-316($fp)
lw $t0,-316($fp)
lw $t1,-296($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere8:
addi $t0,$fp,-8
sw $t0,-320($fp)
lw $t0,-320($fp)
lw $t1,0($t0)
sw $t1,-324($fp)
lw $t0,intLabel8
sw $t0,-328($fp)
lw $t0,-324($fp)
lw $t1,-328($fp)
add $t2,$t0,$t1
sw $t2,-332($fp)
addi $t0,$fp,-8
sw $t0,-336($fp)
lw $t0,-336($fp)
lw $t1,-332($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere5
NiceLabelYouHaveThere6:
lw $t0,intLabel9
sw $t0,-340($fp)
addi $t0,$fp,-8
sw $t0,-344($fp)
lw $t0,-344($fp)
lw $t1,-340($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere9:
addi $t0,$fp,-8
sw $t0,-348($fp)
lw $t0,-348($fp)
lw $t1,0($t0)
sw $t1,-352($fp)
addi $t0,$fp,-4
sw $t0,-356($fp)
lw $t0,-356($fp)
lw $t1,0($t0)
sw $t1,-360($fp)
lw $t0,-352($fp)
lw $t1,-360($fp)
slt $t2,$t0,$t1
sw $t2,-364($fp)
lw $t0,-364($fp)
beq $t0,$zero,NiceLabelYouHaveThere10
sw $fp,-372($fp)
addi $fp,$fp,-372
jal funcLabel_belman_ford
lw $fp,0($fp)
addi $t0,$fp,-8
sw $t0,-368($fp)
lw $t0,-368($fp)
lw $t1,0($t0)
sw $t1,-372($fp)
lw $t0,intLabel10
sw $t0,-376($fp)
lw $t0,-372($fp)
lw $t1,-376($fp)
add $t2,$t0,$t1
sw $t2,-380($fp)
addi $t0,$fp,-8
sw $t0,-384($fp)
lw $t0,-384($fp)
lw $t1,-380($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere9
NiceLabelYouHaveThere10:
lw $t0,intLabel11
sw $t0,-388($fp)
addi $t0,$fp,-8
sw $t0,-392($fp)
lw $t0,-392($fp)
lw $t1,-388($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere11:
addi $t0,$fp,-8
sw $t0,-396($fp)
lw $t0,-396($fp)
lw $t1,0($t0)
sw $t1,-400($fp)
addi $t0,$fp,-4
sw $t0,-404($fp)
lw $t0,-404($fp)
lw $t1,0($t0)
sw $t1,-408($fp)
lw $t0,-400($fp)
lw $t1,-408($fp)
slt $t2,$t0,$t1
sw $t2,-412($fp)
lw $t0,-412($fp)
beq $t0,$zero,NiceLabelYouHaveThere12
la $t0,stringLabel2
sw $t0,-416($fp)
lw $a0,-416($fp)
li $v0,4
syscall
addi $t0,$fp,-8
sw $t0,-420($fp)
lw $t0,-420($fp)
lw $t1,0($t0)
sw $t1,-424($fp)
lw $a0,-424($fp)
li $v0,1
syscall
la $t0,stringLabel3
sw $t0,-428($fp)
lw $a0,-428($fp)
li $v0,4
syscall
addi $t0,$s7,0
sw $t0,-432($fp)
lw $t0,-432($fp)
lw $t1,0($t0)
sw $t1,-436($fp)
addi $t0,$fp,-8
sw $t0,-440($fp)
lw $t0,-440($fp)
lw $t1,0($t0)
sw $t1,-444($fp)
lw $t0,-436($fp)
lw $t1,-444($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-448($fp)
lw $t0,-448($fp)
lw $t1,0($t0)
sw $t1,-452($fp)
lw $a0,-452($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-8
sw $t0,-456($fp)
lw $t0,-456($fp)
lw $t1,0($t0)
sw $t1,-460($fp)
lw $t0,intLabel12
sw $t0,-464($fp)
lw $t0,-460($fp)
lw $t1,-464($fp)
add $t2,$t0,$t1
sw $t2,-468($fp)
addi $t0,$fp,-8
sw $t0,-472($fp)
lw $t0,-472($fp)
lw $t1,-468($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere11
NiceLabelYouHaveThere12:
lw $t0,4($fp)
jr $t0
InitialLabel: 
la $t0,BooleanLabel
la $t1,FalseLabel
la $t2,TrueLabel
sw $t1,0($t0)
sw $t2,4($t0)
move $s7,$sp
addi $fp,$sp,-20
sw $fp,-480($fp)
addi $fp,$fp,-480
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-476($fp)
li $v0,10
syscall
