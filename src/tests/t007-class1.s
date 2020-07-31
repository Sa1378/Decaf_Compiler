.data
BooleanLabel: .space 8
TrueLabel: .asciiz "true"
FalseLabel: .asciiz "false"
NewLineLabel: .asciiz "\n"
SpaceCharLabel: .asciiz " "
DoubleRoundingLabel: .float 10000
HalfDoubleLabel: .float 0.5
stringLabel0: .asciiz "Name: "
stringLabel1: .asciiz " Age: "
ClassVtable_Person:
.space 12
.text
j InitialLabel
funcLabel_Person.setName: 
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
funcLabel_Person.setAge: 
sw $ra,4($fp)
addi $t0,$fp,12
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,-8($fp)
sw $t1,0($t0)
lw $t0,4($fp)
jr $t0
funcLabel_Person.print: 
sw $ra,4($fp)
la $t0,stringLabel0
sw $t0,-4($fp)
lw $a0,-4($fp)
li $v0,4
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-8($fp)
lw $t0,-8($fp)
lw $t1,0($t0)
sw $t1,-12($fp)
lw $a0,-12($fp)
li $v0,4
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
la $t0,stringLabel1
sw $t0,-16($fp)
lw $a0,-16($fp)
li $v0,4
syscall
la $a0,SpaceCharLabel
li $v0,4
syscall
lw $t0,8($fp)
addi $t0,$t0,8
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,0($t0)
sw $t1,-24($fp)
lw $a0,-24($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,4($fp)
jr $t0
funcLabel_main: 
sw $ra,4($fp)
addi $sp,$fp,-16
NiceLabelYouHaveThere0:
li $v0,8
move $a0,$sp
addi $sp,$sp,-1
li $a1,1
syscall
lb $t0,1($sp)
lb $t1,NewLineLabel
bne $t0,$t1,label1
addi $t2,$sp,16
sub $t2,$fp,$t2
move $a0,$t2
li $v0,9
syscall
sw $v0,-16($fp)
add $sp,$sp,$t2
NiceLabelYouHaveThere1: 
lb $t0,0($sp)
addi $sp,$sp,-1
addi $t2,$t2,-1
sb $t0,0($v0)
addi $v0,$v0,1
bne $t2,$zero,NiceLabelYouHaveThere1
sb $zero,-1($v0)
addi $t0,$fp,-8
sw $t0,-20($fp)
lw $t0,-20($fp)
lw $t1,-16($fp)
sw $t1,0($t0)
li $v0,5
syscall
sw $v0,-24($fp)
addi $t0,$fp,-12
sw $t0,-28($fp)
lw $t0,-28($fp)
lw $t1,-24($fp)
sw $t1,0($t0)
li $a0,12
li $v0,9
syscall
la $t0,ClassVtable_Person
sw $t0,0($a0)
sw $a0,-32($fp)
addi $t0,$fp,-4
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,-32($fp)
sw $t1,0($t0)
addi $t0,$fp,-8
sw $t0,-40($fp)
lw $t0,-40($fp)
lw $t1,0($t0)
sw $t1,-44($fp)
addi $t0,$fp,-4
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,0($t0)
sw $t1,-52($fp)
sw $fp,-68($fp)
lw $t0,-44($fp)
lw $t0,-44($fp)
lw $t0,-52($fp)
lw $t0,-52($fp)
lw $t0,-52($fp)
lw $t0,0($t0)
lw $t0,0($t0)
addi $fp,$fp,-68
jalr $t0
lw $fp,0($fp)
addi $t0,$fp,-12
sw $t0,-56($fp)
lw $t0,-56($fp)
lw $t1,0($t0)
sw $t1,-60($fp)
addi $t0,$fp,-4
sw $t0,-64($fp)
lw $t0,-64($fp)
lw $t1,0($t0)
sw $t1,-68($fp)
sw $fp,-84($fp)
lw $t0,-60($fp)
lw $t0,-60($fp)
lw $t0,-68($fp)
lw $t0,-68($fp)
lw $t0,-68($fp)
lw $t0,0($t0)
lw $t0,4($t0)
addi $fp,$fp,-84
jalr $t0
lw $fp,0($fp)
addi $t0,$fp,-4
sw $t0,-72($fp)
lw $t0,-72($fp)
lw $t1,0($t0)
sw $t1,-76($fp)
sw $fp,-88($fp)
lw $t0,-76($fp)
lw $t0,-76($fp)
lw $t0,-76($fp)
lw $t0,0($t0)
lw $t0,8($t0)
addi $fp,$fp,-88
jalr $t0
lw $fp,0($fp)
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
sw $fp,-84($fp)
addi $fp,$fp,-84
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-80($fp)
la $t0,ClassVtable_Person
la $t1,funcLabel_Person.setName
sw $t1,0($t0)
la $t1,funcLabel_Person.setAge
sw $t1,4($t0)
la $t1,funcLabel_Person.print
sw $t1,8($t0)
li $v0,10
syscall
