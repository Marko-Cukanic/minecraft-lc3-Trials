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

TRAP 0x36

NOT R6 , R6 
NOT R7 , R7 
AND R3 , R6 , R7 
NOT R3 , R3 

ADD R0, R0, #1
TRAP 0x34
TRAP 0x36


HALT
minus_one .fill #-1
.END

;.ORIG x3000         ; Start address of the program

; Load the playerPos.x, playerPos.y, and playerPos.z values into registers
;LD R1, playerPosX  ; Load playerPos.x into R1
;LD R2, playerPosY  ; Load playerPos.y into R2
;LD R3, playerPosZ  ; Load playerPos.z into R3

; Calculate the memory locations of the input blocks
;ADD R4, R1, #1    ; Calculate (playerPos.x + 1)
;ADD R5, R2, #-1   ; Calculate (playerPos.y - 1)
;ADD R6, R1, #2    ; Calculate (playerPos.x + 2)

; Load the contents of the input blocks into registers
;LDR R7, R4, #0    ; Load the content of block 1 into R7
;LDR R8, R5, #0    ; Load the content of block 2 into R8

; Perform bitwise OR operation between the contents of R7 and R8
;OR R7, R7, R8     ; Store the result in R7

; Calculate the memory location of the output block
;ADD R9, R1, #3    ; Calculate (playerPos.x + 3)

; Store the result (R7) into the output block
;STR R7, R9, #0    ; Store the result in the output block

; Halt the program
;HALT

; Data section
;playerPosX .FILL x3000  ; Replace with the memory location of playerPos.x
;playerPosY .FILL x3001  ; Replace with the memory location of playerPos.y
;playerPosZ .FILL x3002  ; Replace with the memory location of playerPos.z

;.END
