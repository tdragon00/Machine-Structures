.data
.btye 0:6 # at label str, allocate 6 initialize to 0
.text
li $i, 0
la $base,
#$i = i
str #$base = 0x1001000
str:
loop: add $temp, $base, $i #&str[i] = $base+i
sb $t1, ($temp) #str[i] = 0xA
addi $i, $i, 1
blt $i, 6, loop