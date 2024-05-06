.ORIG x3000
TRAP 0x31
ADD R1, R1, #-1
TRAP 0x33
AND R4, R3, #1
TRAP 0x36
BRz EVEN_CONDITION
LD R6, MINUS_TEN   
ADD R3, R3, R6
TRAP 0x36

BRzp ABOVE_OR_GREATER
    LEA R0, ODD_BELOW 
    TRAP 0x30
    BR SKIP

EVEN_CONDITION
    LEA R0, EVEN
    TRAP 0x30
    BR SKIP 

ABOVE_OR_GREATER
    LEA R0, ODD_ABOVE
    TRAP 0x30

SKIP
HALT

MINUS_TEN .FILL #-10
EVEN .STRINGZ "The block beneath the player tile is even-numbered"
ODD_BELOW .STRINGZ "The block beneath the player tile is odd-numbered and less than 10"
ODD_ABOVE .STRINGZ "The block beneath the player tile is odd-numbered and greater than 10"
.END