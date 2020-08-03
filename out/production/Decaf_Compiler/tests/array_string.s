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
boolLabel0: .word 1
.align 2
intLabel1: .word 1
.align 2
boolLabel1: .word 0
.align 2
intLabel2: .word 4
.align 2
stringLabel0: .asciiz "Brian"
.align 2
intLabel3: .word 0
.align 2
stringLabel1: .asciiz "Cam"
.align 2
intLabel4: .word 1
.align 2
stringLabel2: .asciiz "Gavan"
.align 2
intLabel5: .word 2
.align 2
stringLabel3: .asciiz "Julie"
.align 2
intLabel6: .word 3
.align 2
boolLabel2: .word 1
.align 2
stringLabel4: .asciiz "\nWho is your favorite CS143 staff member? "
.align 2
stringLabel5: .asciiz "You just earned 1000 bonus points!\n"
.align 2
stringLabel6: .asciiz "That's not a good way to make points. Try again!\n"
.align 2
.text
main:
j InitialLabel
funcLabel_Wild: 
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
addi $t0,$fp,12
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,0($t0)
sw $t1,-28($fp)
lw $t0,-28($fp)
lw $t0,0($t0)
sw $t0,-32($fp)
lw $t0,-20($fp)
lw $t1,-32($fp)
slt $t2,$t0,$t1
sw $t2,-36($fp)
lw $t0,-36($fp)
beq $t0,$zero,NiceLabelYouHaveThere1
addi $t0,$fp,12
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
addi $t0,$fp,8
sw $t0,-64($fp)
lw $t0,-64($fp)
lw $t1,0($t0)
sw $t1,-68($fp)
lw $t0,-60($fp)
lw $t1,-68($fp)
li $t2,1
NiceLabelYouHaveThere2: 
lb $t3,0($t0)
lb $t4,0($t1)
beq $t3,$t4,NiceLabelYouHaveThere3
li $t2,0
j NiceLabelYouHaveThere4
NiceLabelYouHaveThere3: 
addi $t0,$t0,1
addi $t1,$t1,1
bne $t3,$zero,NiceLabelYouHaveThere2
NiceLabelYouHaveThere4: 
sw $t2,-72($fp)
lw $t0,-72($fp)
beq $t0,$zero,NiceLabelYouHaveThere5
lw $t0,boolLabel0
sw $t0,-76($fp)
lw $v0,-76($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere5:
addi $t0,$fp,-4
sw $t0,-80($fp)
lw $t0,-80($fp)
lw $t1,0($t0)
sw $t1,-84($fp)
lw $t0,intLabel1
sw $t0,-88($fp)
lw $t0,-84($fp)
lw $t1,-88($fp)
add $t2,$t0,$t1
sw $t2,-92($fp)
addi $t0,$fp,-4
sw $t0,-96($fp)
lw $t0,-96($fp)
lw $t1,-92($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere0
NiceLabelYouHaveThere1:
lw $t0,boolLabel1
sw $t0,-100($fp)
lw $v0,-100($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
funcLabel_main: 
sw $ra,4($fp)
lw $t0,intLabel2
sw $t0,-8($fp)
lw $t0,-8($fp)
addi $a0,$t0,1
sll $a0,$a0,2
li $v0,9
syscall
sw $t0,0($v0)
sw $v0,-12($fp)
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,-12($fp)
sw $t1,0($t0)
la $t0,stringLabel0
sw $t0,-20($fp)
addi $t0,$fp,-4
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,0($t0)
sw $t1,-28($fp)
lw $t0,intLabel3
sw $t0,-32($fp)
lw $t0,-28($fp)
lw $t1,-32($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-36($fp)
lw $t0,-36($fp)
lw $t1,-20($fp)
sw $t1,0($t0)
la $t0,stringLabel1
sw $t0,-40($fp)
addi $t0,$fp,-4
sw $t0,-44($fp)
lw $t0,-44($fp)
lw $t1,0($t0)
sw $t1,-48($fp)
lw $t0,intLabel4
sw $t0,-52($fp)
lw $t0,-48($fp)
lw $t1,-52($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-56($fp)
lw $t0,-56($fp)
lw $t1,-40($fp)
sw $t1,0($t0)
la $t0,stringLabel2
sw $t0,-60($fp)
addi $t0,$fp,-4
sw $t0,-64($fp)
lw $t0,-64($fp)
lw $t1,0($t0)
sw $t1,-68($fp)
lw $t0,intLabel5
sw $t0,-72($fp)
lw $t0,-68($fp)
lw $t1,-72($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-76($fp)
lw $t0,-76($fp)
lw $t1,-60($fp)
sw $t1,0($t0)
la $t0,stringLabel3
sw $t0,-80($fp)
addi $t0,$fp,-4
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,0($t0)
sw $t1,-88($fp)
lw $t0,intLabel6
sw $t0,-92($fp)
lw $t0,-88($fp)
lw $t1,-92($fp)
addi $t1,$t1,1
sll $t1,$t1,2
add $t2,$t0,$t1
sw $t2,-96($fp)
lw $t0,-96($fp)
lw $t1,-80($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere6:
lw $t0,boolLabel2
sw $t0,-100($fp)
lw $t0,-100($fp)
beq $t0,$zero,NiceLabelYouHaveThere7
la $t0,stringLabel4
sw $t0,-104($fp)
lw $a0,-104($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-4
sw $t0,-108($fp)
lw $t0,-108($fp)
lw $t1,0($t0)
sw $t1,-112($fp)
addi $sp,$fp,-120
NiceLabelYouHaveThere8:
li $v0,8
la $a0,ReadLineBuffer
li $a1,2
syscall
lb $t0,ReadLineBuffer
sb $t0,0($sp)
lb $t1,CarriageReturnLabel
sne $t2,$t0,$t1
sub $sp,$sp,$t2
lb $t1,NewLineLabel
bne $t1,$t0,NiceLabelYouHaveThere8
lb $t1,NewLineLabel
bne $t0,$t1,NiceLabelYouHaveThere8
addi $t2,$sp,120
sub $t2,$fp,$t2
move $a0,$t2
li $v0,9
syscall
sw $v0,-116($fp)
add $sp,$sp,$t2
NiceLabelYouHaveThere9: 
lb $t0,0($sp)
addi $sp,$sp,-1
addi $t2,$t2,-1
sb $t0,0($v0)
addi $v0,$v0,1
bne $t2,$zero,NiceLabelYouHaveThere9
sb $zero,-1($v0)
sw $fp,-132($fp)
lw $t0,-112($fp)
sw $t0,-120($fp)
lw $t0,-116($fp)
sw $t0,-124($fp)
addi $fp,$fp,-132
jal funcLabel_Wild
lw $fp,0($fp)
sw $v0,-120($fp)
lw $t0,-120($fp)
beq $t0,$zero,NiceLabelYouHaveThere10
la $t0,stringLabel5
sw $t0,-124($fp)
lw $a0,-124($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
j NiceLabelYouHaveThere7
NiceLabelYouHaveThere10:
la $t0,stringLabel6
sw $t0,-128($fp)
lw $a0,-128($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
j NiceLabelYouHaveThere6
NiceLabelYouHaveThere7:
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
sw $fp,-136($fp)
addi $fp,$fp,-136
jal funcLabel_main
lw $fp,0($fp)
li $v0,10
syscall
