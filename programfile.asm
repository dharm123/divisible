#GROUP ID 69
#DHARMVEER DHAR DWIVEDI [15114025]
#SATYENDRA KUMAR BANJARE [15114064]
#Assembly code:-Checking the number divisible by 31



.data

message0: .asciiz "Enter the number \n"
message1: .asciiz "Number is divisible by 31 \n"
message2: .asciiz "Number is not divisible by 31 \n"

.text
main:
#print Enter the number

 li $v0,4
 la $a0,message0
 syscall

#taking input from user
li $v0,5
syscall


#store the no in t1
 move $t1,$v0

#assign t5=41
 addi $t5,$zero,41

#assign t6=10
addi $t6,$zero,10
addi $t7,$zero,3


 while:
     blt $t1,1,exit
     div $t1,$t6


  mfhi $t4          #store the remainder in t4

  div $t1,$t1,$t6   #t1=t1/10
  mul $t3,$t4,$t7   #t3=3*t4
  sub $t1,$t1,$t3   #t1=t1-t3

 j while

 exit:
   beq $t1,0,divisible
   bne $t1,0,notdivisible

  notdivisible:
      li $v0,4
      la $a0,message2
      syscall

      li $v0,10
      syscall


  divisible:
      li $v0,4
      la $a0,message1
      syscall

      li $v0,10
      syscall
