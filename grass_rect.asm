.ORIG x3000

ADD R1, R1, #-1

ADD R3, R3, #2

TRAP 0x31

LD R4, X_DIST
LD R5, Z_DIST

ADD R0, R0, R4
ADD R2, R2, R5

ADD R5, R5, R5
ADD R5, R5, #1

ADD R4, R4, R4
ADD R4, R4, #1

AND R6, R6, #0
ADD R6, R5, #0
BR XLength
BeforeXLength
ADD R0, R0, R7
ADD R6, R5, #0
ADD R2, R2, R6

XLength
ADD R4, R4, R7
BRn DONE
ZLength
TRAP 0x34
ADD R2, R2, R7
ADD R6, R6, R7
BRz BeforeXLength
BR ZLength

DONE
HALT
; Note: Please do not change the names of the constants below
X_DIST .FILL #0
Z_DIST .FILL #2

.END