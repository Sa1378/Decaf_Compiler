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
boolLabel0: .word 1
.align 2
boolLabel1: .word 0
.align 2
ClassVtable_A:
.align 2
.space 12
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
funcLabel_A.comp: 
sw $ra,4($fp)
lw $t0,8($fp)
addi $t0,$t0,4
sw $t0,-4($fp)
lw $t0,-4($fp)
lw $t1,0($t0)
sw $t1,-8($fp)
sw $fp,-20($fp)
lw $t0,8($fp)
sw $t0,-12($fp)
lw $t0,8($fp)
lw $t0,0($t0)
lw $t0,4($t0)
addi $fp,$fp,-20
jalr $t0
lw $fp,0($fp)
sw $v0,-12($fp)
lw $t0,-8($fp)
lw $t1,-12($fp)
li $t2,1
NiceLabelYouHaveThere0: 
lb $t3,0($t0)
lb $t4,0($t1)
beq $t3,$t4,NiceLabelYouHaveThere1
li $t2,0
j NiceLabelYouHaveThere2
NiceLabelYouHaveThere1: 
addi $t0,$t0,1
addi $t1,$t1,1
bne $t3,$zero,NiceLabelYouHaveThere0
NiceLabelYouHaveThere2: 
sw $t2,-16($fp)
lw $t0,-16($fp)
beq $t0,$zero,NiceLabelYouHaveThere3
lw $t0,boolLabel0
sw $t0,-20($fp)
lw $v0,-20($fp)
lw $t0,4($fp)
jr $t0
NiceLabelYouHaveThere3:
lw $t0,boolLabel1
sw $t0,-24($fp)
lw $v0,-24($fp)
lw $t0,4($fp)
jr $t0
lw $t0,4($fp)
jr $t0
funcLabel_main: 
sw $ra,4($fp)
li $v0,5
syscall
sw $v0,-16($fp)
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
addi $t0,$fp,-8
sw $t0,-36($fp)
lw $t0,-36($fp)
lw $t1,0($t0)
sw $t1,-40($fp)
l.s $f0,-40($fp)
cvt.s.w $f0,$f0
s.s $f0,-32($fp)
addi $t0,$fp,-12
sw $t0,-48($fp)
lw $t0,-48($fp)
lw $t1,0($t0)
sw $t1,-52($fp)
l.s $f0,-52($fp)
cvt.s.w $f0,$f0
s.s $f0,-44($fp)
lw $t0,-32($fp)
lw $t1,-44($fp)
mtc1 $t0,$f0
mtc1 $t1,$f1
div.s $f2,$f0,$f1
mfc1 $t2,$f2
sw $t2,-56($fp)
addi $t0,$fp,-4
sw $t0,-60($fp)
lw $t0,-60($fp)
lw $t1,-56($fp)
sw $t1,0($t0)
addi $t0,$fp,-4
sw $t0,-68($fp)
lw $t0,-68($fp)
lw $t1,0($t0)
sw $t1,-72($fp)
l.s $f0,-72($fp)
cvt.w.s $f0,$f0
s.s $f0,-64($fp)
addi $t0,$fp,-8
sw $t0,-76($fp)
lw $t0,-76($fp)
lw $t1,0($t0)
sw $t1,-80($fp)
addi $t0,$fp,-12
sw $t0,-84($fp)
lw $t0,-84($fp)
lw $t1,0($t0)
sw $t1,-88($fp)
lw $t0,-80($fp)
lw $t1,-88($fp)
div $t0,$t1
mflo $t2
sw $t2,-92($fp)
lw $t0,-64($fp)
lw $t1,-92($fp)
seq $t2,$t0,$t1
sw $t2,-96($fp)
la $a0,BooleanLabel
lw $t0,-96($fp)
sll $t0,$t0,2
add $a0,$a0,$t0
lw $a0,0($a0)
li $v0,4
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
la $t0,ClassVtable_A
la $t1,funcLabel_A.set_a
sw $t1,0($t0)
la $t1,funcLabel_A.get_a
sw $t1,4($t0)
la $t1,funcLabel_A.comp
sw $t1,8($t0)
sw $fp,-104($fp)
addi $fp,$fp,-104
jal funcLabel_main
lw $fp,0($fp)
sw $v0,-100($fp)
li $v0,10
syscall
