.ORIG x3000
TRAP 0x31   

ADD R6, R0, #0
ADD R0, R2, #0
ADD R2, R6, #0

ADD R0, R0, #0
BRzp ZERO_OR_POSITIVE
NOT R0, R0
ADD R0, R0 #1
ZERO_OR_POSITIVE

NOT R2, R2
ADD R2, R2, #1

ADD R1, R1, R1
ADD R1, R1, R1

TRAP 0x32

HALT
.END