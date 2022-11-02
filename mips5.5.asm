.data
 myArray: .space 24		#declaring array 
 intarr: .word 0:5
 
 .text
 
 main:
 lw $13, myArray
li $s0, 6 			# t0 is a constant 6
li $s1, 0 			# t1 is our counter (i)
li $s5, 0			#this is our offset
la $t0, myArray			#this is our address holder
li $t2, 0			#i ont even know what this is


  			
loop:
beq $s1, $s0, end 		# if t1 == 6 we are done



	move $a0,$s1           						# move the result in the argument a0 
	li $v0, 1              						# print it out print int this is just for bug testing
	syscall
	
	
	sll $t2, $s1, 2							#multiplying the offset by I 4*i we just get the number lik e4,8,12 etc
       
	
	add $s5, $t0, $t2						#here we are creating the address offset off adress + offset
	sw $s1, 0($s5)									#putting memory from register into memory
	
	addi $s1, $s1, 1 		# add 1 to t1
	
				
	
	
	j loop 				# jump back to the top
end:
    
    li $v0 10
    syscall 
