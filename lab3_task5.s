.data
string:  .byte 's', 'h', 'a', 'h', 'a', 'd', 0

    .text
    .globl _start
_start:
    la   x10, string         
    li   x11, 6              
    add  x12, x10, x11       

reverse:
    lb   x13, 0(x10)         
    lb   x14, 0(x12)         
    sb   x13, 0(x12)         
    sb   x14, 0(x10)         
    
    addi x10, x10, 1         
    addi x12, x12, -1        
    
    bge  x10, x12, end       

    j reverse                

end:
    li   a7, 10              
    ecall