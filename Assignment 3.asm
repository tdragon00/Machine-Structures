

#Program assignment 3
#This program requests the user to input two ints.
#We return the larger of the two

#variables $t0 =a
#variables $t1=b
		
main: 
	la 	$a0, ask1						#assinging string
	li 	$v0, 4							#outputting string
	syscall


	li	$v0, 5 							#storing user input in $v0
	syscall
	move	$t0,$v0							#moving stored input in a
	



	la 	$a0, ask2						#assinging string
	li 	$v0, 4							#outputting string
	syscall
	
	
	li	$v0, 5 							#storing user input in $v0
	syscall
	move	$t1,$v0							#moving stored input somewhere else



	la 	$a0, out1						#assinging string
	li 	$v0, 4							#outputting string
	syscall

	#********************************************
	# if statement begins her
	#*************************************** 
	bgt $t0,$t1, bigger    						# branch to bigger if t0 > t1
	move $t2,$t1           						# t2 = t1
	b   endif              
	bigger:
	move $t2,$t0           						# t2 = t0
	endif:  
	# ************************************
	# if finish here
	#************************************
	move $a0,$t2           						# move the result in the argument a0 
	li $v0, 1              						# print it out
	syscall
	



	li $v0, 10 							#ending program

				
	     	.data
	ask1:  	.asciiz 	"Please enter the frist number:  "	#prompt string
	ask2:  	.asciiz 	"Please enter the second number: "	#promt string
	out1:	.ascii  	"the larger value of a,b is :"		#output string
