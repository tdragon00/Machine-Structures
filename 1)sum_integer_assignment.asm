# input an integer and output the sum from 1 to integer
#  for(int i = 1; i <= input; i++)
#        {
#            sum = sum + i; 
#        }
#input: $s0
#i    : $t0
#sum  : $t1
.data
out_1: .asciiz "Please input the integer: "
out_2: .asciiz "the sum of the integer is:" 
.text:
	 li   $v0,4
	 la   $a0,out_1
	 syscall
	 li   $v0,5
	 syscall
	 move $s0,$v0
	 
	   
for:    
        
        
        
out_for:li   $v0,4
        la   $a0,out_2
        syscall
        li   $v0,1
        move $a0,$t1
        syscall