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
intLabel0: .word 1
.align 2
intLabel1: .word 1
.align 2
intLabel2: .word 1
.align 2
intLabel3: .word 1
.align 2
intLabel4: .word 15
.align 2
stringLabel0: .asciiz "Factorial("
.align 2
stringLabel1: .asciiz ") = "
.align 2
stringLabel2: .asciiz "\n"
.align 2
intLabel5: .word 1
.align 2
.text
main:
j InitialLabel
funcLabel_factorial: 
sw $ra,4($fp)
addi $t0,$fp,8
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $t0,intLabel0
sw $t0,-12($fp)
lw $t0,-8($fp)
lw $t1,-12($fp)
sle $t2,$t0,$t1
sw $t2,-16($fp)
lw $t0,-16($fp)
beq $t0,$zero,NiceLabelYouHaveThere0
lw $t0,intLabel1
sw $t0,-20($fp)
lw $v0,-20($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere0:
addi $t0,$fp,8
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,0($t0)
sw $t1,-28($fp)
addi $t0,$fp,8
sw $t0,-32($fp)
lw $t0,-32($fp)
lw $t1,0($t0)
sw $t1,-36($fp)
lw $t0,intLabel2
sw $t0,-40($fp)
lw $t0,-36($fp)
lw $t1,-40($fp)
sub $t2,$t0,$t1
sw $t2,-44($fp)
sw $fp,-56($fp)
lw $t0,-44($fp)
sw $t0,-48($fp)
addi $fp,$fp,-56
jal funcLabel_factorial
lw $fp,0($fp)
sw $v0,-48($fp)
lw $t0,-28($fp)
lw $t1,-48($fp)
mul $t2,$t0,$t1
sw $t2,-52($fp)
lw $v0,-52($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
funcLabel_main: 
sw $ra,4($fp)
lw $t0,intLabel3
sw $t0,-8($fp)
addi $t0,$fp,-4
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,-8($fp)
sw $t1,0($t0)
NiceLabelYouHaveThere1:
addi $t0,$fp,-4
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,0($t0)
sw $t1,-20($fp)
lw $t0,intLabel4
sw $t0,-24($fp)
lw $t0,-20($fp)
lw $t1,-24($fp)
sle $t2,$t0,$t1
sw $t2,-28($fp)
lw $t0,-28($fp)
beq $t0,$zero,NiceLabelYouHaveThere2
la $t0,stringLabel0
sw $t0,-32($fp)
lw $a0,-32($fp)
li $v0,4
syscall
addi $t0,$fp,-4
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
lw $a0,-40($fp)
li $v0,1
syscall
la $t0,stringLabel1
sw $t0,-44($fp)
lw $a0,-44($fp)
li $v0,4
syscall
addi $t0,$fp,-4
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,0($t0)
sw $t1,-52($fp)
sw $fp,-64($fp)
lw $t0,-52($fp)
sw $t0,-56($fp)
addi $fp,$fp,-64
jal funcLabel_factorial
lw $fp,0($fp)
sw $v0,-56($fp)
lw $a0,-56($fp)
li $v0,1
syscall
la $t0,stringLabel2
sw $t0,-60($fp)
lw $a0,-60($fp)
li $v0,4
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,-4
sw $t0,-64($fp)
lw $t0,-64($fp)
lw $t1,0($t0)
sw $t1,-68($fp)
lw $t0,intLabel5
sw $t0,-72($fp)
lw $t0,-68($fp)
lw $t1,-72($fp)
add $t2,$t0,$t1
sw $t2,-76($fp)
addi $t0,$fp,-4
sw $t0,-80($fp)
lw $t0,-80($fp)
lw $t1,-76($fp)
sw $t1,0($t0)
j NiceLabelYouHaveThere1
NiceLabelYouHaveThere2:
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
sw $fp,-88($fp)
addi $fp,$fp,-88
jal funcLabel_main
lw $fp,0($fp)
li $v0,10
syscall
