.ORIG x3000
TRAP 0x31

ADD R0, R0 #1
LD R5, minus_one
ADD R1, R1, R5

TRAP 0x33
ADD R6, R3 #0

ADD R0, R0 #1
TRAP 0x33
ADD R7, R3 #0

NOT R4, R7
AND R3, R6, R4

NOT R4, R6
AND R4, R4, R7

NOT R3, R3
NOT R4, R4
AND R3, R3, R4  
NOT R3, R3

ADD R0, R0, #1
TRAP 0x34
TRAP 0x36


HALT
minus_one .fill #-1
.END

