#
# 	MACHINE STRUCTURES
#	Tyler Dewalt
#	Assignment 2
# 	Basic Assembly
#
#

# i 

main:	
	li $s0 0 		#loading values from data
	li $s1 1		#loading values
	li $s2 2
	li $s3 3
	li $s4 5
math:				#various operations
	move $s0, $s4		#move
	add $s0,$s1,$s2		#addition
	sub $s3,$s1,$s2		#subtraction
	sub $s4,$s4,1		#subtraction
	 
	 li $v0, 10 		#terminate program
	syscall
	
	
