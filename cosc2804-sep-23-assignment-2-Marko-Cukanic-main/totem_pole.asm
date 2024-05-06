.ORIG x3000
TRAP 0x31

ADD R2, R2, #2
ADD R3, R3, #1
LD R4, HEIGHT
ADD R4, R4, #0
BACKTOSTART
BRz Finish
TRAP 0x34
ADD R1, R1, #1 
ADD R3, R3, #1
ADD R4, R4, #-1
TRAP 0x36
BR BACKTOSTART

Finish
TRAP 0x36
HALT
HEIGHT .FILL #20 ; Note: Please do not change the name of this constant
.END