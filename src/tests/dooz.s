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
intLabel0: .word 3
.align 2
intLabel1: .word 0
.align 2
intLabel2: .word 3
.align 2
intLabel3: .word 3
.align 2
intLabel4: .word 1
.align 2
intLabel5: .word 0
.align 2
intLabel6: .word 3
.align 2
intLabel7: .word 0
.align 2
intLabel8: .word 3
.align 2
intLabel9: .word 0
.align 2
intLabel10: .word 1
.align 2
intLabel11: .word 1
.align 2
intLabel12: .word 3
.align 2
stringLabel0: .asciiz "E"
.align 2
intLabel13: .word 0
.align 2
stringLabel1: .asciiz "X"
.align 2
intLabel14: .word 1
.align 2
stringLabel2: .asciiz "O"
.align 2
intLabel15: .word 2
.align 2
intLabel16: .word 0
.align 2
stringLabel3: .asciiz "Illegal point!"
.align 2
boolLabel0: .word 0
.align 2
boolLabel1: .word 1
.align 2
intLabel17: .word 0
.align 2
intLabel18: .word 3
.align 2
intLabel19: .word 0
.align 2
intLabel20: .word 0
.align 2
intLabel21: .word 1
.align 2
intLabel22: .word 1
.align 2
intLabel23: .word 2
.align 2
intLabel24: .word 0
.align 2
intLabel25: .word 0
.align 2
intLabel26: .word 0
.align 2
intLabel27: .word 1
.align 2
intLabel28: .word 1
.align 2
intLabel29: .word 2
.align 2
intLabel30: .word 0
.align 2
intLabel31: .word 1
.align 2
intLabel32: .word 0
.align 2
intLabel33: .word 0
.align 2
intLabel34: .word 1
.align 2
intLabel35: .word 1
.align 2
intLabel36: .word 1
.align 2
intLabel37: .word 1
.align 2
intLabel38: .word 2
.align 2
intLabel39: .word 2
.align 2
intLabel40: .word 0
.align 2
intLabel41: .word 0
.align 2
intLabel42: .word 0
.align 2
intLabel43: .word 0
.align 2
intLabel44: .word 0
.align 2
intLabel45: .word 0
.align 2
intLabel46: .word 2
.align 2
intLabel47: .word 1
.align 2
intLabel48: .word 1
.align 2
intLabel49: .word 1
.align 2
intLabel50: .word 1
.align 2
intLabel51: .word 2
.align 2
intLabel52: .word 0
.align 2
intLabel53: .word 2
.align 2
intLabel54: .word 0
.align 2
intLabel55: .word 0
.align 2
intLabel56: .word 0
.align 2
intLabel57: .word 2
.align 2
intLabel58: .word 0
.align 2
intLabel59: .word 0
.align 2
intLabel60: .word 3
.align 2
intLabel61: .word 0
.align 2
intLabel62: .word 3
.align 2
intLabel63: .word 0
.align 2
boolLabel2: .word 0
.align 2
intLabel64: .word 1
.align 2
intLabel65: .word 1
.align 2
boolLabel3: .word 1
.align 2
intLabel66: .word 0
.align 2
intLabel67: .word 3
.align 2
intLabel68: .word 0
.align 2
stringLabel4: .asciiz "|"
.align 2
intLabel69: .word 1
.align 2
stringLabel5: .asciiz "|"
.align 2
intLabel70: .word 2
.align 2
intLabel71: .word 1
.align 2
intLabel72: .word 1
.align 2
stringLabel6: .asciiz "Try another point!"
.align 2
boolLabel4: .word 0
.align 2
intLabel73: .word 0
.align 2
stringLabel7: .asciiz "Player "
.align 2
stringLabel8: .asciiz " winnes!"
.align 2
boolLabel5: .word 1
.align 2
stringLabel9: .asciiz "Draw!"
.align 2
boolLabel6: .word 1
.align 2
intLabel74: .word 3
.align 2
stringLabel10: .asciiz "player"
.align 2
stringLabel11: .asciiz " choose your point:"
.align 2
boolLabel7: .word 0
.align 2
stringLabel12: .asciiz "Player1 choose your point:"
.align 2
intLabel75: .word 1
.align 2
intLabel76: .word 1
.align 2
ClassVtable_table:
.align 2
.space 20
.align 2
ClassVtable_dooz:
.align 2
.space 8
.align 2
.text
main:
j InitialLabel
funcLabel_table.init: 
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
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,-16($fp)
sw $t1,0($t0)
lw $t0,intLabel1
sw $t0,-24($fp)
addi $t0,$fp,-4
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,-24($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere0:
addi $t0,$fp,-4
sw $t0,-32($fp)
lw $t0,-32($fp)
lw $t1,0($t0)
sw $t1,-36($fp)
lw $t0,intLabel2
sw $t0,-40($fp)
lw $t0,-36($fp)
lw $t1,-40($fp)
slt $t2,$t0,$t1
sw $t2,-44($fp)
lw $t0,-44($fp)
beq $t0,$zero,NiceLabelYouHaveThere1
lw $t0,intLabel3
sw $t0,-48($fp)
lw $t0,-48($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-52($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-56($fp)
lw $t0,-56($fp)
lw $t1,0($t0)
sw $t1,-60($fp)
addi $t0,$fp,-4
sw $t0,-64($fp)
lw $t0,-64($fp)
lw $t1,0($t0)
sw $t1,-68($fp)
lw $t0,-60($fp)
lw $t1,-68($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-72($fp)
lw $t0,-72($fp)
lw $t1,-52($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
lw $t0,intLabel4
sw $t0,-84($fp)
lw $t0,-80($fp)
lw $t1,-84($fp)
add $t2,$t0,$t1
sw $t2,-88($fp)
addi $t0,$fp,-4
sw $t0,-92($fp)
lw $t0,-92($fp)
lw $t1,-88($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere0
NiceLabelYouHaveThere1:
lw $t0,intLabel5
sw $t0,-96($fp)
addi $t0,$fp,-4
sw $t0,-100($fp)
lw $t0,-100($fp)
lw $t1,-96($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere2:
addi $t0,$fp,-4
sw $t0,-104($fp)
lw $t0,-104($fp)
lw $t1,0($t0)
sw $t1,-108($fp)
lw $t0,intLabel6
sw $t0,-112($fp)
lw $t0,-108($fp)
lw $t1,-112($fp)
slt $t2,$t0,$t1
sw $t2,-116($fp)
lw $t0,-116($fp)
beq $t0,$zero,NiceLabelYouHaveThere3
lw $t0,intLabel7
sw $t0,-120($fp)
addi $t0,$fp,-8
sw $t0,-124($fp)
lw $t0,-124($fp)
lw $t1,-120($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere4:
addi $t0,$fp,-8
sw $t0,-128($fp)
lw $t0,-128($fp)
lw $t1,0($t0)
sw $t1,-132($fp)
lw $t0,intLabel8
sw $t0,-136($fp)
lw $t0,-132($fp)
lw $t1,-136($fp)
slt $t2,$t0,$t1
sw $t2,-140($fp)
lw $t0,-140($fp)
beq $t0,$zero,NiceLabelYouHaveThere5
lw $t0,intLabel9
sw $t0,-144($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-148($fp)
lw $t0,-148($fp)
lw $t1,0($t0)
sw $t1,-152($fp)
addi $t0,$fp,-4
sw $t0,-156($fp)
lw $t0,-156($fp)
lw $t1,0($t0)
sw $t1,-160($fp)
lw $t0,-152($fp)
lw $t1,-160($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-164($fp)
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
lw $t1,-144($fp)
sw $t1,0($t0)
addi $t0,$fp,-8
sw $t0,-184($fp)
lw $t0,-184($fp)
lw $t1,0($t0)
sw $t1,-188($fp)
lw $t0,intLabel10
sw $t0,-192($fp)
lw $t0,-188($fp)
lw $t1,-192($fp)
add $t2,$t0,$t1
sw $t2,-196($fp)
addi $t0,$fp,-8
sw $t0,-200($fp)
lw $t0,-200($fp)
lw $t1,-196($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere4
NiceLabelYouHaveThere5:
addi $t0,$fp,-4
sw $t0,-204($fp)
lw $t0,-204($fp)
lw $t1,0($t0)
sw $t1,-208($fp)
lw $t0,intLabel11
sw $t0,-212($fp)
lw $t0,-208($fp)
lw $t1,-212($fp)
add $t2,$t0,$t1
sw $t2,-216($fp)
addi $t0,$fp,-4
sw $t0,-220($fp)
lw $t0,-220($fp)
lw $t1,-216($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere2
NiceLabelYouHaveThere3:
lw $t0,intLabel12
sw $t0,-224($fp)
lw $t0,-224($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-228($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-232($fp)
lw $t0,-232($fp)
lw $t1,-228($fp)
sw $t1,0($t0)
la $t0,stringLabel0
sw $t0,-236($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-240($fp)
lw $t0,-240($fp)
lw $t1,0($t0)
sw $t1,-244($fp)
lw $t0,intLabel13
sw $t0,-248($fp)
lw $t0,-244($fp)
lw $t1,-248($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-252($fp)
lw $t0,-252($fp)
lw $t1,-236($fp)
sw $t1,0($t0)
la $t0,stringLabel1
sw $t0,-256($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-260($fp)
lw $t0,-260($fp)
lw $t1,0($t0)
sw $t1,-264($fp)
lw $t0,intLabel14
sw $t0,-268($fp)
lw $t0,-264($fp)
lw $t1,-268($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-272($fp)
lw $t0,-272($fp)
lw $t1,-256($fp)
sw $t1,0($t0)
la $t0,stringLabel2
sw $t0,-276($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-280($fp)
lw $t0,-280($fp)
lw $t1,0($t0)
sw $t1,-284($fp)
lw $t0,intLabel15
sw $t0,-288($fp)
lw $t0,-284($fp)
lw $t1,-288($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-292($fp)
lw $t0,-292($fp)
lw $t1,-276($fp)
sw $t1,0($t0)
lw $t0,4($fp)
jr $t0
funcLabel_table.set: 
sw $ra,4($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
addi $t0,$fp,20
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,0($t0)
sw $t1,-16($fp)
lw $t0,-8($fp)
lw $t1,-16($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-20($fp)
lw $t0,-20($fp)
lw $t1,0($t0)
sw $t1,-24($fp)
addi $t0,$fp,16
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,0($t0)
sw $t1,-32($fp)
lw $t0,-24($fp)
lw $t1,-32($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
lw $t0,intLabel16
sw $t0,-44($fp)
lw $t0,-40($fp)
lw $t1,-44($fp)
seq $t2,$t0,$t1
xori $t2,$t2,1
sw $t2,-48($fp)
lw $t0,-48($fp)
beq $t0,$zero,NiceLabelYouHaveThere6
la $t0,stringLabel3
sw $t0,-52($fp)
lw $a0,-52($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,boolLabel0
sw $t0,-56($fp)
lw $v0,-56($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere6:
addi $t0,$fp,12
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-68($fp)
lw $t0,-68($fp)
lw $t1,0($t0)
sw $t1,-72($fp)
addi $t0,$fp,20
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
lw $t0,-72($fp)
lw $t1,-80($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-84($fp)
lw $t0,-84($fp)
lw $t1,0($t0)
sw $t1,-88($fp)
addi $t0,$fp,16
sw $t0,-92($fp)
lw $t0,-92($fp)
lw $t1,0($t0)
sw $t1,-96($fp)
lw $t0,-88($fp)
lw $t1,-96($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-100($fp)
lw $t0,-100($fp)
lw $t1,-64($fp)
sw $t1,0($t0)
lw $t0,boolLabel1
sw $t0,-104($fp)
lw $v0,-104($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
funcLabel_table.winner: 
sw $ra,4($fp)
lw $t0,intLabel17
sw $t0,-12($fp)
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,-12($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere7:
addi $t0,$fp,-4
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,0($t0)
sw $t1,-24($fp)
lw $t0,intLabel18
sw $t0,-28($fp)
lw $t0,-24($fp)
lw $t1,-28($fp)
slt $t2,$t0,$t1
sw $t2,-32($fp)
lw $t0,-32($fp)
beq $t0,$zero,NiceLabelYouHaveThere8
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
addi $t0,$fp,-4
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,0($t0)
sw $t1,-48($fp)
lw $t0,-40($fp)
lw $t1,-48($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-52($fp)
lw $t0,-52($fp)
lw $t1,0($t0)
sw $t1,-56($fp)
lw $t0,intLabel19
sw $t0,-60($fp)
lw $t0,-56($fp)
lw $t1,-60($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-64($fp)
lw $t0,-64($fp)
lw $t1,0($t0)
sw $t1,-68($fp)
addi $t0,$fp,-8
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,-68($fp)
sw $t1,0($t0)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
addi $t0,$fp,-4
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,0($t0)
sw $t1,-88($fp)
lw $t0,-80($fp)
lw $t1,-88($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-92($fp)
lw $t0,-92($fp)
lw $t1,0($t0)
sw $t1,-96($fp)
lw $t0,intLabel20
sw $t0,-100($fp)
lw $t0,-96($fp)
lw $t1,-100($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-104($fp)
lw $t0,-104($fp)
lw $t1,0($t0)
sw $t1,-108($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-112($fp)
lw $t0,-112($fp)
lw $t1,0($t0)
sw $t1,-116($fp)
addi $t0,$fp,-4
sw $t0,-120($fp)
lw $t0,-120($fp)
lw $t1,0($t0)
sw $t1,-124($fp)
lw $t0,-116($fp)
lw $t1,-124($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-128($fp)
lw $t0,-128($fp)
lw $t1,0($t0)
sw $t1,-132($fp)
lw $t0,intLabel21
sw $t0,-136($fp)
lw $t0,-132($fp)
lw $t1,-136($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-140($fp)
lw $t0,-140($fp)
lw $t1,0($t0)
sw $t1,-144($fp)
lw $t0,-108($fp)
lw $t1,-144($fp)
seq $t2,$t0,$t1
sw $t2,-148($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-152($fp)
lw $t0,-152($fp)
lw $t1,0($t0)
sw $t1,-156($fp)
addi $t0,$fp,-4
sw $t0,-160($fp)
lw $t0,-160($fp)
lw $t1,0($t0)
sw $t1,-164($fp)
lw $t0,-156($fp)
lw $t1,-164($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-168($fp)
lw $t0,-168($fp)
lw $t1,0($t0)
sw $t1,-172($fp)
lw $t0,intLabel22
sw $t0,-176($fp)
lw $t0,-172($fp)
lw $t1,-176($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-180($fp)
lw $t0,-180($fp)
lw $t1,0($t0)
sw $t1,-184($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-188($fp)
lw $t0,-188($fp)
lw $t1,0($t0)
sw $t1,-192($fp)
addi $t0,$fp,-4
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
lw $t1,0($t0)
sw $t1,-208($fp)
lw $t0,intLabel23
sw $t0,-212($fp)
lw $t0,-208($fp)
lw $t1,-212($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-216($fp)
lw $t0,-216($fp)
lw $t1,0($t0)
sw $t1,-220($fp)
lw $t0,-184($fp)
lw $t1,-220($fp)
seq $t2,$t0,$t1
sw $t2,-224($fp)
lw $t0,-148($fp)
lw $t1,-224($fp)
and $t2,$t0,$t1
sw $t2,-228($fp)
addi $t0,$fp,-8
sw $t0,-232($fp)
lw $t0,-232($fp)
lw $t1,0($t0)
sw $t1,-236($fp)
lw $t0,intLabel24
sw $t0,-240($fp)
lw $t0,-236($fp)
lw $t1,-240($fp)
seq $t2,$t0,$t1
xori $t2,$t2,1
sw $t2,-244($fp)
lw $t0,-228($fp)
lw $t1,-244($fp)
and $t2,$t0,$t1
sw $t2,-248($fp)
lw $t0,-248($fp)
beq $t0,$zero,NiceLabelYouHaveThere9
addi $t0,$fp,-8
sw $t0,-252($fp)
lw $t0,-252($fp)
lw $t1,0($t0)
sw $t1,-256($fp)
lw $v0,-256($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere9:
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-260($fp)
lw $t0,-260($fp)
lw $t1,0($t0)
sw $t1,-264($fp)
lw $t0,intLabel25
sw $t0,-268($fp)
lw $t0,-264($fp)
lw $t1,-268($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-272($fp)
lw $t0,-272($fp)
lw $t1,0($t0)
sw $t1,-276($fp)
addi $t0,$fp,-4
sw $t0,-280($fp)
lw $t0,-280($fp)
lw $t1,0($t0)
sw $t1,-284($fp)
lw $t0,-276($fp)
lw $t1,-284($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-288($fp)
lw $t0,-288($fp)
lw $t1,0($t0)
sw $t1,-292($fp)
addi $t0,$fp,-8
sw $t0,-296($fp)
lw $t0,-296($fp)
lw $t1,-292($fp)
sw $t1,0($t0)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-300($fp)
lw $t0,-300($fp)
lw $t1,0($t0)
sw $t1,-304($fp)
lw $t0,intLabel26
sw $t0,-308($fp)
lw $t0,-304($fp)
lw $t1,-308($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-312($fp)
lw $t0,-312($fp)
lw $t1,0($t0)
sw $t1,-316($fp)
addi $t0,$fp,-4
sw $t0,-320($fp)
lw $t0,-320($fp)
lw $t1,0($t0)
sw $t1,-324($fp)
lw $t0,-316($fp)
lw $t1,-324($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-328($fp)
lw $t0,-328($fp)
lw $t1,0($t0)
sw $t1,-332($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-336($fp)
lw $t0,-336($fp)
lw $t1,0($t0)
sw $t1,-340($fp)
lw $t0,intLabel27
sw $t0,-344($fp)
lw $t0,-340($fp)
lw $t1,-344($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-348($fp)
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
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-364($fp)
lw $t0,-364($fp)
lw $t1,0($t0)
sw $t1,-368($fp)
lw $t0,-332($fp)
lw $t1,-368($fp)
seq $t2,$t0,$t1
sw $t2,-372($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-376($fp)
lw $t0,-376($fp)
lw $t1,0($t0)
sw $t1,-380($fp)
lw $t0,intLabel28
sw $t0,-384($fp)
lw $t0,-380($fp)
lw $t1,-384($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-388($fp)
lw $t0,-388($fp)
lw $t1,0($t0)
sw $t1,-392($fp)
addi $t0,$fp,-4
sw $t0,-396($fp)
lw $t0,-396($fp)
lw $t1,0($t0)
sw $t1,-400($fp)
lw $t0,-392($fp)
lw $t1,-400($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-404($fp)
lw $t0,-404($fp)
lw $t1,0($t0)
sw $t1,-408($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-412($fp)
lw $t0,-412($fp)
lw $t1,0($t0)
sw $t1,-416($fp)
lw $t0,intLabel29
sw $t0,-420($fp)
lw $t0,-416($fp)
lw $t1,-420($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-424($fp)
lw $t0,-424($fp)
lw $t1,0($t0)
sw $t1,-428($fp)
addi $t0,$fp,-4
sw $t0,-432($fp)
lw $t0,-432($fp)
lw $t1,0($t0)
sw $t1,-436($fp)
lw $t0,-428($fp)
lw $t1,-436($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-440($fp)
lw $t0,-440($fp)
lw $t1,0($t0)
sw $t1,-444($fp)
lw $t0,-408($fp)
lw $t1,-444($fp)
seq $t2,$t0,$t1
sw $t2,-448($fp)
lw $t0,-372($fp)
lw $t1,-448($fp)
and $t2,$t0,$t1
sw $t2,-452($fp)
addi $t0,$fp,-8
sw $t0,-456($fp)
lw $t0,-456($fp)
lw $t1,0($t0)
sw $t1,-460($fp)
lw $t0,intLabel30
sw $t0,-464($fp)
lw $t0,-460($fp)
lw $t1,-464($fp)
seq $t2,$t0,$t1
xori $t2,$t2,1
sw $t2,-468($fp)
lw $t0,-452($fp)
lw $t1,-468($fp)
and $t2,$t0,$t1
sw $t2,-472($fp)
lw $t0,-472($fp)
beq $t0,$zero,NiceLabelYouHaveThere10
addi $t0,$fp,-8
sw $t0,-476($fp)
lw $t0,-476($fp)
lw $t1,0($t0)
sw $t1,-480($fp)
lw $v0,-480($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere10:
addi $t0,$fp,-4
sw $t0,-484($fp)
lw $t0,-484($fp)
lw $t1,0($t0)
sw $t1,-488($fp)
lw $t0,intLabel31
sw $t0,-492($fp)
lw $t0,-488($fp)
lw $t1,-492($fp)
add $t2,$t0,$t1
sw $t2,-496($fp)
addi $t0,$fp,-4
sw $t0,-500($fp)
lw $t0,-500($fp)
lw $t1,-496($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere7
NiceLabelYouHaveThere8:
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-504($fp)
lw $t0,-504($fp)
lw $t1,0($t0)
sw $t1,-508($fp)
lw $t0,intLabel32
sw $t0,-512($fp)
lw $t0,-508($fp)
lw $t1,-512($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-516($fp)
lw $t0,-516($fp)
lw $t1,0($t0)
sw $t1,-520($fp)
lw $t0,intLabel33
sw $t0,-524($fp)
lw $t0,-520($fp)
lw $t1,-524($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-528($fp)
lw $t0,-528($fp)
lw $t1,0($t0)
sw $t1,-532($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-536($fp)
lw $t0,-536($fp)
lw $t1,0($t0)
sw $t1,-540($fp)
lw $t0,intLabel34
sw $t0,-544($fp)
lw $t0,-540($fp)
lw $t1,-544($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-548($fp)
lw $t0,-548($fp)
lw $t1,0($t0)
sw $t1,-552($fp)
lw $t0,intLabel35
sw $t0,-556($fp)
lw $t0,-552($fp)
lw $t1,-556($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-560($fp)
lw $t0,-560($fp)
lw $t1,0($t0)
sw $t1,-564($fp)
lw $t0,-532($fp)
lw $t1,-564($fp)
seq $t2,$t0,$t1
sw $t2,-568($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-572($fp)
lw $t0,-572($fp)
lw $t1,0($t0)
sw $t1,-576($fp)
lw $t0,intLabel36
sw $t0,-580($fp)
lw $t0,-576($fp)
lw $t1,-580($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-584($fp)
lw $t0,-584($fp)
lw $t1,0($t0)
sw $t1,-588($fp)
lw $t0,intLabel37
sw $t0,-592($fp)
lw $t0,-588($fp)
lw $t1,-592($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-596($fp)
lw $t0,-596($fp)
lw $t1,0($t0)
sw $t1,-600($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-604($fp)
lw $t0,-604($fp)
lw $t1,0($t0)
sw $t1,-608($fp)
lw $t0,intLabel38
sw $t0,-612($fp)
lw $t0,-608($fp)
lw $t1,-612($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-616($fp)
lw $t0,-616($fp)
lw $t1,0($t0)
sw $t1,-620($fp)
lw $t0,intLabel39
sw $t0,-624($fp)
lw $t0,-620($fp)
lw $t1,-624($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-628($fp)
lw $t0,-628($fp)
lw $t1,0($t0)
sw $t1,-632($fp)
lw $t0,-600($fp)
lw $t1,-632($fp)
seq $t2,$t0,$t1
sw $t2,-636($fp)
lw $t0,-568($fp)
lw $t1,-636($fp)
and $t2,$t0,$t1
sw $t2,-640($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-644($fp)
lw $t0,-644($fp)
lw $t1,0($t0)
sw $t1,-648($fp)
lw $t0,intLabel40
sw $t0,-652($fp)
lw $t0,-648($fp)
lw $t1,-652($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-656($fp)
lw $t0,-656($fp)
lw $t1,0($t0)
sw $t1,-660($fp)
lw $t0,intLabel41
sw $t0,-664($fp)
lw $t0,-660($fp)
lw $t1,-664($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-668($fp)
lw $t0,-668($fp)
lw $t1,0($t0)
sw $t1,-672($fp)
lw $t0,intLabel42
sw $t0,-676($fp)
lw $t0,-672($fp)
lw $t1,-676($fp)
seq $t2,$t0,$t1
xori $t2,$t2,1
sw $t2,-680($fp)
lw $t0,-640($fp)
lw $t1,-680($fp)
and $t2,$t0,$t1
sw $t2,-684($fp)
lw $t0,-684($fp)
beq $t0,$zero,NiceLabelYouHaveThere11
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-688($fp)
lw $t0,-688($fp)
lw $t1,0($t0)
sw $t1,-692($fp)
lw $t0,intLabel43
sw $t0,-696($fp)
lw $t0,-692($fp)
lw $t1,-696($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-700($fp)
lw $t0,-700($fp)
lw $t1,0($t0)
sw $t1,-704($fp)
lw $t0,intLabel44
sw $t0,-708($fp)
lw $t0,-704($fp)
lw $t1,-708($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-712($fp)
lw $t0,-712($fp)
lw $t1,0($t0)
sw $t1,-716($fp)
lw $v0,-716($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere11:
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-720($fp)
lw $t0,-720($fp)
lw $t1,0($t0)
sw $t1,-724($fp)
lw $t0,intLabel45
sw $t0,-728($fp)
lw $t0,-724($fp)
lw $t1,-728($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-732($fp)
lw $t0,-732($fp)
lw $t1,0($t0)
sw $t1,-736($fp)
lw $t0,intLabel46
sw $t0,-740($fp)
lw $t0,-736($fp)
lw $t1,-740($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-744($fp)
lw $t0,-744($fp)
lw $t1,0($t0)
sw $t1,-748($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-752($fp)
lw $t0,-752($fp)
lw $t1,0($t0)
sw $t1,-756($fp)
lw $t0,intLabel47
sw $t0,-760($fp)
lw $t0,-756($fp)
lw $t1,-760($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-764($fp)
lw $t0,-764($fp)
lw $t1,0($t0)
sw $t1,-768($fp)
lw $t0,intLabel48
sw $t0,-772($fp)
lw $t0,-768($fp)
lw $t1,-772($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-776($fp)
lw $t0,-776($fp)
lw $t1,0($t0)
sw $t1,-780($fp)
lw $t0,-748($fp)
lw $t1,-780($fp)
seq $t2,$t0,$t1
sw $t2,-784($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-788($fp)
lw $t0,-788($fp)
lw $t1,0($t0)
sw $t1,-792($fp)
lw $t0,intLabel49
sw $t0,-796($fp)
lw $t0,-792($fp)
lw $t1,-796($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-800($fp)
lw $t0,-800($fp)
lw $t1,0($t0)
sw $t1,-804($fp)
lw $t0,intLabel50
sw $t0,-808($fp)
lw $t0,-804($fp)
lw $t1,-808($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-812($fp)
lw $t0,-812($fp)
lw $t1,0($t0)
sw $t1,-816($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-820($fp)
lw $t0,-820($fp)
lw $t1,0($t0)
sw $t1,-824($fp)
lw $t0,intLabel51
sw $t0,-828($fp)
lw $t0,-824($fp)
lw $t1,-828($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-832($fp)
lw $t0,-832($fp)
lw $t1,0($t0)
sw $t1,-836($fp)
lw $t0,intLabel52
sw $t0,-840($fp)
lw $t0,-836($fp)
lw $t1,-840($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-844($fp)
lw $t0,-844($fp)
lw $t1,0($t0)
sw $t1,-848($fp)
lw $t0,-816($fp)
lw $t1,-848($fp)
seq $t2,$t0,$t1
sw $t2,-852($fp)
lw $t0,-784($fp)
lw $t1,-852($fp)
and $t2,$t0,$t1
sw $t2,-856($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-860($fp)
lw $t0,-860($fp)
lw $t1,0($t0)
sw $t1,-864($fp)
lw $t0,intLabel53
sw $t0,-868($fp)
lw $t0,-864($fp)
lw $t1,-868($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-872($fp)
lw $t0,-872($fp)
lw $t1,0($t0)
sw $t1,-876($fp)
lw $t0,intLabel54
sw $t0,-880($fp)
lw $t0,-876($fp)
lw $t1,-880($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-884($fp)
lw $t0,-884($fp)
lw $t1,0($t0)
sw $t1,-888($fp)
lw $t0,intLabel55
sw $t0,-892($fp)
lw $t0,-888($fp)
lw $t1,-892($fp)
seq $t2,$t0,$t1
xori $t2,$t2,1
sw $t2,-896($fp)
lw $t0,-856($fp)
lw $t1,-896($fp)
and $t2,$t0,$t1
sw $t2,-900($fp)
lw $t0,-900($fp)
beq $t0,$zero,NiceLabelYouHaveThere12
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-904($fp)
lw $t0,-904($fp)
lw $t1,0($t0)
sw $t1,-908($fp)
lw $t0,intLabel56
sw $t0,-912($fp)
lw $t0,-908($fp)
lw $t1,-912($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-916($fp)
lw $t0,-916($fp)
lw $t1,0($t0)
sw $t1,-920($fp)
lw $t0,intLabel57
sw $t0,-924($fp)
lw $t0,-920($fp)
lw $t1,-924($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-928($fp)
lw $t0,-928($fp)
lw $t1,0($t0)
sw $t1,-932($fp)
lw $v0,-932($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere12:
lw $t0,intLabel58
sw $t0,-936($fp)
lw $v0,-936($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
funcLabel_table.is_full: 
sw $ra,4($fp)
lw $t0,intLabel59
sw $t0,-12($fp)
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,-12($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere13:
addi $t0,$fp,-4
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,0($t0)
sw $t1,-24($fp)
lw $t0,intLabel60
sw $t0,-28($fp)
lw $t0,-24($fp)
lw $t1,-28($fp)
slt $t2,$t0,$t1
sw $t2,-32($fp)
lw $t0,-32($fp)
beq $t0,$zero,NiceLabelYouHaveThere14
lw $t0,intLabel61
sw $t0,-36($fp)
addi $t0,$fp,-8
sw $t0,-40($fp)
lw $t0,-40($fp)
lw $t1,-36($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere15:
addi $t0,$fp,-8
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,0($t0)
sw $t1,-48($fp)
lw $t0,intLabel62
sw $t0,-52($fp)
lw $t0,-48($fp)
lw $t1,-52($fp)
slt $t2,$t0,$t1
sw $t2,-56($fp)
lw $t0,-56($fp)
beq $t0,$zero,NiceLabelYouHaveThere16
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
addi $t0,$fp,-4
sw $t0,-68($fp)
lw $t0,-68($fp)
lw $t1,0($t0)
sw $t1,-72($fp)
lw $t0,-64($fp)
lw $t1,-72($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
addi $t0,$fp,-8
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,0($t0)
sw $t1,-88($fp)
lw $t0,-80($fp)
lw $t1,-88($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-92($fp)
lw $t0,-92($fp)
lw $t1,0($t0)
sw $t1,-96($fp)
lw $t0,intLabel63
sw $t0,-100($fp)
lw $t0,-96($fp)
lw $t1,-100($fp)
seq $t2,$t0,$t1
sw $t2,-104($fp)
lw $t0,-104($fp)
beq $t0,$zero,NiceLabelYouHaveThere17
lw $t0,boolLabel2
sw $t0,-108($fp)
lw $v0,-108($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere17:
addi $t0,$fp,-8
sw $t0,-112($fp)
lw $t0,-112($fp)
lw $t1,0($t0)
sw $t1,-116($fp)
lw $t0,intLabel64
sw $t0,-120($fp)
lw $t0,-116($fp)
lw $t1,-120($fp)
add $t2,$t0,$t1
sw $t2,-124($fp)
addi $t0,$fp,-8
sw $t0,-128($fp)
lw $t0,-128($fp)
lw $t1,-124($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere15
NiceLabelYouHaveThere16:
addi $t0,$fp,-4
sw $t0,-132($fp)
lw $t0,-132($fp)
lw $t1,0($t0)
sw $t1,-136($fp)
lw $t0,intLabel65
sw $t0,-140($fp)
lw $t0,-136($fp)
lw $t1,-140($fp)
add $t2,$t0,$t1
sw $t2,-144($fp)
addi $t0,$fp,-4
sw $t0,-148($fp)
lw $t0,-148($fp)
lw $t1,-144($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere13
NiceLabelYouHaveThere14:
lw $t0,boolLabel3
sw $t0,-152($fp)
lw $v0,-152($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
funcLabel_table.print: 
sw $ra,4($fp)
lw $t0,intLabel66
sw $t0,-8($fp)
addi $t0,$fp,-4
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,-8($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere18:
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,0($t0)
sw $t1,-20($fp)
lw $t0,intLabel67
sw $t0,-24($fp)
lw $t0,-20($fp)
lw $t1,-24($fp)
slt $t2,$t0,$t1
sw $t2,-28($fp)
lw $t0,-28($fp)
beq $t0,$zero,NiceLabelYouHaveThere19
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-32($fp)
lw $t0,-32($fp)
lw $t1,0($t0)
sw $t1,-36($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-40($fp)
lw $t0,-40($fp)
lw $t1,0($t0)
sw $t1,-44($fp)
addi $t0,$fp,-4
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,0($t0)
sw $t1,-52($fp)
lw $t0,-44($fp)
lw $t1,-52($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-56($fp)
lw $t0,-56($fp)
lw $t1,0($t0)
sw $t1,-60($fp)
lw $t0,intLabel68
sw $t0,-64($fp)
lw $t0,-60($fp)
lw $t1,-64($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-68($fp)
lw $t0,-68($fp)
lw $t1,0($t0)
sw $t1,-72($fp)
lw $t0,-36($fp)
lw $t1,-72($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
lw $a0,-80($fp)
li $v0,4
syscall
la $t0,stringLabel4
sw $t0,-84($fp)
lw $a0,-84($fp)
li $v0,4
syscall
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,0($t0)
sw $t1,-92($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-96($fp)
lw $t0,-96($fp)
lw $t1,0($t0)
sw $t1,-100($fp)
addi $t0,$fp,-4
sw $t0,-104($fp)
lw $t0,-104($fp)
lw $t1,0($t0)
sw $t1,-108($fp)
lw $t0,-100($fp)
lw $t1,-108($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-112($fp)
lw $t0,-112($fp)
lw $t1,0($t0)
sw $t1,-116($fp)
lw $t0,intLabel69
sw $t0,-120($fp)
lw $t0,-116($fp)
lw $t1,-120($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-124($fp)
lw $t0,-124($fp)
lw $t1,0($t0)
sw $t1,-128($fp)
lw $t0,-92($fp)
lw $t1,-128($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-132($fp)
lw $t0,-132($fp)
lw $t1,0($t0)
sw $t1,-136($fp)
lw $a0,-136($fp)
li $v0,4
syscall
la $t0,stringLabel5
sw $t0,-140($fp)
lw $a0,-140($fp)
li $v0,4
syscall
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-144($fp)
lw $t0,-144($fp)
lw $t1,0($t0)
sw $t1,-148($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-152($fp)
lw $t0,-152($fp)
lw $t1,0($t0)
sw $t1,-156($fp)
addi $t0,$fp,-4
sw $t0,-160($fp)
lw $t0,-160($fp)
lw $t1,0($t0)
sw $t1,-164($fp)
lw $t0,-156($fp)
lw $t1,-164($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-168($fp)
lw $t0,-168($fp)
lw $t1,0($t0)
sw $t1,-172($fp)
lw $t0,intLabel70
sw $t0,-176($fp)
lw $t0,-172($fp)
lw $t1,-176($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-180($fp)
lw $t0,-180($fp)
lw $t1,0($t0)
sw $t1,-184($fp)
lw $t0,-148($fp)
lw $t1,-184($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-188($fp)
lw $t0,-188($fp)
lw $t1,0($t0)
sw $t1,-192($fp)
lw $a0,-192($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-4
sw $t0,-196($fp)
lw $t0,-196($fp)
lw $t1,0($t0)
sw $t1,-200($fp)
lw $t0,intLabel71
sw $t0,-204($fp)
lw $t0,-200($fp)
lw $t1,-204($fp)
add $t2,$t0,$t1
sw $t2,-208($fp)
addi $t0,$fp,-4
sw $t0,-212($fp)
lw $t0,-212($fp)
lw $t1,-208($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere18
NiceLabelYouHaveThere19:
lw $t0,4($fp)
jr $t0
funcLabel_dooz.init: 
sw $ra,4($fp)
li $a0,12
li $v0,9
syscall
la $t0,ClassVtable_table
sw $t0,0($v0)
sw $v0,-4($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-8($fp)
lw $t0,-8($fp)
lw $t1,-4($fp)
sw $t1,0($t0)
sw $fp,-20($fp)
lw $t0,8($fp)
sw $t0,-12($fp)
lw $t0,8($fp)
lw $t0,0($t0)
lw $t0,0($t0)
addi $fp,$fp,-20
jalr $t0
lw $fp,0($fp)
lw $t0,intLabel72
sw $t0,-12($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,-12($fp)
sw $t1,0($t0)
lw $t0,4($fp)
jr $t0
funcLabel_dooz.round: 
sw $ra,4($fp)
addi $t0,$fp,16
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,0($t0)
sw $t1,-16($fp)
addi $t0,$fp,12
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,0($t0)
sw $t1,-24($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,0($t0)
sw $t1,-32($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
sw $fp,-64($fp)
lw $t0,-16($fp)
sw $t0,-44($fp)
lw $t0,-24($fp)
sw $t0,-48($fp)
lw $t0,-32($fp)
sw $t0,-52($fp)
lw $t0,-40($fp)
sw $t0,-56($fp)
lw $t0,-40($fp)
lw $t0,0($t0)
lw $t0,4($t0)
addi $fp,$fp,-64
jalr $t0
lw $fp,0($fp)
sw $v0,-44($fp)
addi $t0,$fp,-4
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,-44($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-52($fp)
lw $t0,-52($fp)
lw $t1,0($t0)
sw $t1,-56($fp)
lw $t0,-56($fp)
xori $t2,$t0,1
sw $t2,-60($fp)
lw $t0,-60($fp)
beq $t0,$zero,NiceLabelYouHaveThere20
la $t0,stringLabel6
sw $t0,-64($fp)
lw $a0,-64($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,boolLabel4
sw $t0,-68($fp)
lw $v0,-68($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere20:
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,0($t0)
sw $t1,-76($fp)
sw $fp,-88($fp)
lw $t0,-76($fp)
sw $t0,-80($fp)
lw $t0,-76($fp)
lw $t0,0($t0)
lw $t0,8($t0)
addi $fp,$fp,-88
jalr $t0
lw $fp,0($fp)
sw $v0,-80($fp)
addi $t0,$fp,-8
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,-80($fp)
sw $t1,0($t0)
addi $t0,$fp,-8
sw $t0,-88($fp)
lw $t0,-88($fp)
lw $t1,0($t0)
sw $t1,-92($fp)
lw $t0,intLabel73
sw $t0,-96($fp)
lw $t0,-92($fp)
lw $t1,-96($fp)
seq $t2,$t0,$t1
xori $t2,$t2,1
sw $t2,-100($fp)
lw $t0,-100($fp)
beq $t0,$zero,NiceLabelYouHaveThere21
la $t0,stringLabel7
sw $t0,-104($fp)
lw $a0,-104($fp)
li $v0,4
syscall
addi $t0,$fp,-8
sw $t0,-108($fp)
lw $t0,-108($fp)
lw $t1,0($t0)
sw $t1,-112($fp)
lw $a0,-112($fp)
li $v0,1
syscall
la $t0,stringLabel8
sw $t0,-116($fp)
lw $a0,-116($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,boolLabel5
sw $t0,-120($fp)
lw $v0,-120($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere21:
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-124($fp)
lw $t0,-124($fp)
lw $t1,0($t0)
sw $t1,-128($fp)
sw $fp,-140($fp)
lw $t0,-128($fp)
sw $t0,-132($fp)
lw $t0,-128($fp)
lw $t0,0($t0)
lw $t0,12($t0)
addi $fp,$fp,-140
jalr $t0
lw $fp,0($fp)
sw $v0,-132($fp)
lw $t0,-132($fp)
beq $t0,$zero,NiceLabelYouHaveThere22
la $t0,stringLabel9
sw $t0,-136($fp)
lw $a0,-136($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,boolLabel6
sw $t0,-140($fp)
lw $v0,-140($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere22:
lw $t0,intLabel74
sw $t0,-144($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-148($fp)
lw $t0,-148($fp)
lw $t1,0($t0)
sw $t1,-152($fp)
lw $t0,-144($fp)
lw $t1,-152($fp)
sub $t2,$t0,$t1
sw $t2,-156($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-160($fp)
lw $t0,-160($fp)
lw $t1,-156($fp)
sw $t1,0($t0)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-164($fp)
lw $t0,-164($fp)
lw $t1,0($t0)
sw $t1,-168($fp)
sw $fp,-180($fp)
lw $t0,-168($fp)
sw $t0,-172($fp)
lw $t0,-168($fp)
lw $t0,0($t0)
lw $t0,16($t0)
addi $fp,$fp,-180
jalr $t0
lw $fp,0($fp)
la $t0,stringLabel10
sw $t0,-172($fp)
lw $a0,-172($fp)
li $v0,4
syscall
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-176($fp)
lw $t0,-176($fp)
lw $t1,0($t0)
sw $t1,-180($fp)
lw $a0,-180($fp)
li $v0,1
syscall
la $t0,stringLabel11
sw $t0,-184($fp)
lw $a0,-184($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,boolLabel7
sw $t0,-188($fp)
lw $v0,-188($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
funcLabel_main: 
sw $ra,4($fp)
li $a0,12
li $v0,9
syscall
la $t0,ClassVtable_dooz
sw $t0,0($v0)
sw $v0,-16($fp)
addi $t0,$fp,-4
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,-16($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,0($t0)
sw $t1,-28($fp)
sw $fp,-40($fp)
lw $t0,-28($fp)
sw $t0,-32($fp)
lw $t0,-28($fp)
lw $t0,0($t0)
lw $t0,0($t0)
addi $fp,$fp,-40
jalr $t0
lw $fp,0($fp)
la $t0,stringLabel12
sw $t0,-32($fp)
lw $a0,-32($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
li $v0,5
syscall
sw $v0,-36($fp)
addi $t0,$fp,-8
sw $t0,-40($fp)
lw $t0,-40($fp)
lw $t1,-36($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-44($fp)
addi $t0,$fp,-12
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,-44($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere23:
addi $t0,$fp,-8
sw $t0,-52($fp)
lw $t0,-52($fp)
lw $t1,0($t0)
sw $t1,-56($fp)
lw $t0,intLabel75
sw $t0,-60($fp)
lw $t0,-56($fp)
lw $t1,-60($fp)
sub $t2,$t0,$t1
sw $t2,-64($fp)
addi $t0,$fp,-12
sw $t0,-68($fp)
lw $t0,-68($fp)
lw $t1,0($t0)
sw $t1,-72($fp)
lw $t0,intLabel76
sw $t0,-76($fp)
lw $t0,-72($fp)
lw $t1,-76($fp)
sub $t2,$t0,$t1
sw $t2,-80($fp)
addi $t0,$fp,-4
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,0($t0)
sw $t1,-88($fp)
sw $fp,-108($fp)
lw $t0,-64($fp)
sw $t0,-92($fp)
lw $t0,-80($fp)
sw $t0,-96($fp)
lw $t0,-88($fp)
sw $t0,-100($fp)
lw $t0,-88($fp)
lw $t0,0($t0)
lw $t0,4($t0)
addi $fp,$fp,-108
jalr $t0
lw $fp,0($fp)
sw $v0,-92($fp)
lw $t0,-92($fp)
xori $t2,$t0,1
sw $t2,-96($fp)
lw $t0,-96($fp)
beq $t0,$zero,NiceLabelYouHaveThere24
li $v0,5
syscall
sw $v0,-100($fp)
addi $t0,$fp,-8
sw $t0,-104($fp)
lw $t0,-104($fp)
lw $t1,-100($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-108($fp)
addi $t0,$fp,-12
sw $t0,-112($fp)
lw $t0,-112($fp)
lw $t1,-108($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere23
NiceLabelYouHaveThere24:
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
la $t0,ClassVtable_table
la $t1,funcLabel_table.init
sw $t1,0($t0)
la $t1,funcLabel_table.set
sw $t1,4($t0)
la $t1,funcLabel_table.winner
sw $t1,8($t0)
la $t1,funcLabel_table.is_full
sw $t1,12($t0)
la $t1,funcLabel_table.print
sw $t1,16($t0)
la $t0,ClassVtable_dooz
la $t1,funcLabel_dooz.init
sw $t1,0($t0)
la $t1,funcLabel_dooz.round
sw $t1,4($t0)
sw $fp,-120($fp)
addi $fp,$fp,-120
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-116($fp)
li $v0,10
syscall
