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
intLabel1: .word 0
.align 2
intLabel2: .word 10
.align 2
intLabel3: .word 1
.align 2
intLabel4: .word 0
.align 2
intLabel5: .word 10
.align 2
intLabel6: .word 1
.align 2
ClassVtable_A:
.align 2
.space 8
.align 2
.text
main:
j InitialLabel
funcLabel_A.set_a: 
sw $ra,4($fp)
addi $t0,$fp,12
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,-8($fp)
sw $t1,0($t0)
lw $t0,4($fp)
jr $t0
funcLabel_A.get_a: 
sw $ra,4($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $v0,-8($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
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
addi $t0,$fp,-8
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
li $a0,8
li $v0,9
syscall
la $t0,ClassVtable_A
sw $t0,0($v0)
sw $v0,-48($fp)
addi $t0,$fp,-8
sw $t0,-52($fp)
lw $t0,-52($fp)
lw $t1,0($t0)
sw $t1,-56($fp)
addi $t0,$fp,-4
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,0($t0)
sw $t1,-64($fp)
lw $t0,-56($fp)
lw $t1,-64($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-68($fp)
lw $t0,-68($fp)
lw $t1,-48($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,0($t0)
sw $t1,-76($fp)
addi $t0,$fp,-8
sw $t0,-80($fp)
lw $t0,-80($fp)
lw $t1,0($t0)
sw $t1,-84($fp)
addi $t0,$fp,-4
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
sw $fp,-116($fp)
lw $t0,-76($fp)
sw $t0,-104($fp)
lw $t0,-100($fp)
sw $t0,-108($fp)
lw $t0,-100($fp)
lw $t0,0($t0)
lw $t0,0($t0)
addi $fp,$fp,-116
jalr $t0
lw $fp,0($fp)
addi $t0,$fp,-4
sw $t0,-104($fp)
lw $t0,-104($fp)
lw $t1,0($t0)
sw $t1,-108($fp)
lw $t0,intLabel3
sw $t0,-112($fp)
lw $t0,-108($fp)
lw $t1,-112($fp)
add $t2,$t0,$t1
sw $t2,-116($fp)
addi $t0,$fp,-4
sw $t0,-120($fp)
lw $t0,-120($fp)
lw $t1,-116($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere0
NiceLabelYouHaveThere1:
lw $t0,intLabel4
sw $t0,-124($fp)
addi $t0,$fp,-4
sw $t0,-128($fp)
lw $t0,-128($fp)
lw $t1,-124($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere2:
addi $t0,$fp,-4
sw $t0,-132($fp)
lw $t0,-132($fp)
lw $t1,0($t0)
sw $t1,-136($fp)
lw $t0,intLabel5
sw $t0,-140($fp)
lw $t0,-136($fp)
lw $t1,-140($fp)
slt $t2,$t0,$t1
sw $t2,-144($fp)
lw $t0,-144($fp)
beq $t0,$zero,NiceLabelYouHaveThere3
addi $t0,$fp,-8
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
sw $fp,-180($fp)
lw $t0,-168($fp)
sw $t0,-172($fp)
lw $t0,-168($fp)
lw $t0,0($t0)
lw $t0,4($t0)
addi $fp,$fp,-180
jalr $t0
lw $fp,0($fp)
sw $v0,-172($fp)
lw $a0,-172($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-4
sw $t0,-176($fp)
lw $t0,-176($fp)
lw $t1,0($t0)
sw $t1,-180($fp)
lw $t0,intLabel6
sw $t0,-184($fp)
lw $t0,-180($fp)
lw $t1,-184($fp)
add $t2,$t0,$t1
sw $t2,-188($fp)
addi $t0,$fp,-4
sw $t0,-192($fp)
lw $t0,-192($fp)
lw $t1,-188($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere2
NiceLabelYouHaveThere3:
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
la $t1,funcLabel_A.set_a
sw $t1,0($t0)
la $t1,funcLabel_A.get_a
sw $t1,4($t0)
sw $fp,-200($fp)
addi $fp,$fp,-200
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-196($fp)
li $v0,10
syscall
