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
doubleLabel0: .float 2.3
.align 2
doubleLabel1: .float 2.3
.align 2
intLabel0: .word 5
.align 2
intLabel1: .word 4
.align 2
ClassVtable_c:
.align 2
.space 8
.align 2
ClassVtable_d:
.align 2
.space 8
.align 2
.text
main:
j InitialLabel
funcLabel_d.f: 
sw $ra,4($fp)
addi $t0,$fp,16
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $a0,-8($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,doubleLabel0
sw $t0,-12($fp)
l.s $f0,DoubleRoundingLabel
l.s $f3,HalfDoubleLabel
lw $t1,-12($fp)
mtc1 $t1,$f1
mul.s $f1,$f0,$f1
mtc1 $zero,$f2
c.lt.s $f1,$f2
bc1f NiceLabelYouHaveThere0
neg.s $f3,$f3
NiceLabelYouHaveThere0:
add.s $f1,$f1,$f3
cvt.w.s $f1,$f1
cvt.s.w $f1,$f1
div.s $f12,$f1,$f0
li $v0,2
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,12
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,0($t0)
sw $t1,-20($fp)
lw $a0,-20($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,4($fp)
jr $t0
funcLabel_c.g: 
sw $ra,4($fp)
addi $t0,$fp,16
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $a0,-8($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,12
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,0($t0)
sw $t1,-16($fp)
lw $a0,-16($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,4($fp)
jr $t0
funcLabel_d.f: 
sw $ra,4($fp)
addi $t0,$fp,16
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $a0,-8($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,doubleLabel1
sw $t0,-12($fp)
l.s $f0,DoubleRoundingLabel
l.s $f3,HalfDoubleLabel
lw $t1,-12($fp)
mtc1 $t1,$f1
mul.s $f1,$f0,$f1
mtc1 $zero,$f2
c.lt.s $f1,$f2
bc1f NiceLabelYouHaveThere1
neg.s $f3,$f3
NiceLabelYouHaveThere1:
add.s $f1,$f1,$f3
cvt.w.s $f1,$f1
cvt.s.w $f1,$f1
div.s $f12,$f1,$f0
li $v0,2
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,12
sw $t0,-16($fp)
lw $t0,-16($fp)
lw $t1,0($t0)
sw $t1,-20($fp)
lw $a0,-20($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,4($fp)
jr $t0
funcLabel_c.g: 
sw $ra,4($fp)
addi $t0,$fp,16
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
lw $a0,-8($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
addi $t0,$fp,12
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,0($t0)
sw $t1,-16($fp)
lw $a0,-16($fp)
li $v0,1
syscall
la $a0,NewLineLabel
li $v0,4
syscall
lw $t0,4($fp)
jr $t0
funcLabel_main: 
sw $ra,4($fp)
li $a0,4
li $v0,9
syscall
la $t0,ClassVtable_d
sw $t0,0($v0)
sw $v0,-8($fp)
addi $t0,$fp,-4
sw $t0,-12($fp)
lw $t0,-12($fp)
lw $t1,-8($fp)
sw $t1,0($t0)
lw $t0,intLabel0
sw $t0,-16($fp)
lw $t0,intLabel1
sw $t0,-20($fp)
addi $t0,$fp,-4
sw $t0,-24($fp)
lw $t0,-24($fp)
lw $t1,0($t0)
sw $t1,-28($fp)
sw $fp,-48($fp)
lw $t0,-16($fp)
sw $t0,-32($fp)
lw $t0,-20($fp)
sw $t0,-36($fp)
lw $t0,-28($fp)
sw $t0,-40($fp)
lw $t0,-28($fp)
lw $t0,0($t0)
lw $t0,0($t0)
addi $fp,$fp,-48
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
la $t0,ClassVtable_c
la $t1,funcLabel_d.f
sw $t1,0($t0)
la $t1,funcLabel_c.g
sw $t1,4($t0)
la $t0,ClassVtable_d
la $t1,funcLabel_d.f
sw $t1,0($t0)
la $t1,funcLabel_c.g
sw $t1,4($t0)
sw $fp,-36($fp)
addi $fp,$fp,-36
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-32($fp)
li $v0,10
syscall
