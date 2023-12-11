' Advent of Code 2023 Day 8
' Haunted Wasteland
' By Jonny Pencils
' (c) 2023 ElliSoft
'            __     __       
'           /  \~~~/  \    
'     ,----(     ..    ) 
'    /      \__     __/   
'   /|         (\  |(
'  ^ \   /___\  /\ |   
'     |__|   |__|-"    
'
' (1)19637
' (2)8811050362409

DIM I AS INT
DIM PE AS INT
DIM PS AS INT
DIM HOPS AS LONG
DIM D AS INT
DIM FIN AS BYTE
DIM NEXTND AS STRING * 3
DIM DR AS STRING * 1 

DIM DEBUG AS STRING * 1 

DIM directions(2) AS STRING * 1 @lr
DIM nodedata(7) AS STRING * 9 @nodes

HOPS=0

FUNCTION nextnode AS STRING * 3 (dir AS STRING * 1, POS AS INT) STATIC
    IF dir ="l" THEN 
        RETURN MID$(nodedata(POS),3,3)
    ELSE 
        RETURN MID$(nodedata(POS),6,3)
    END IF
END FUNCTION

PRINT "advent of code 2023 day 8"
PRINT "getting start position...."


'Get start position
FOR I = 0 TO 6
    IF LEFT$(nodedata(I),3) = "aaa" THEN
        PS=I
    END IF
NEXT I   

'Get end position
FOR I = 0 TO 6
    IF LEFT$(nodedata(I),3) = "zzz" THEN
        PE=I
    END IF
NEXT I  

PRINT "start position is ";PS
PRINT "end position is ";PE '637
PRINT ""
PRINT "working...."

P=PS

'input "";DEBUG

'Main loops

DO WHILE NEXTND <> "zzz"
        FOR D = 0 to 1
            DR=directions(D)
            NEXTND=nextnode(DR,P)
            ' NEXTND now equals the next string to find
            PRINT "direction is ";DR
            PRINT "next node is ";NEXTND
            IF NEXTND="zzz" THEN
                HOPS=HOPS+1
                EXIT DO
            END IF
            FOR I = 0 TO 6
                IF LEFT$(nodedata(I),3) = NEXTND THEN
                P=I
                HOPS=HOPS+1
                EXIT FOR
                END IF    
            NEXT I       
        NEXT D
    PRINT ""
    PRINT "ok.....hops so far are :";HOPS
LOOP


PRINT ""
PRINT "the number of hops is : ";HOPS

lr:  
DATA AS STRING * 1 "r", "l"

nodes:
'example 2
'DATA AS STRING * 9 "aaabbbbbb"
'DATA AS STRING * 9 "bbbaaazzz"
'DATA AS STRING * 9 "zzzzzzzzz"
'example 1
DATA AS STRING * 9 "aaadddccc"
DATA AS STRING * 9 "bbbdddaaa"
DATA AS STRING * 9 "cccgggggg"
DATA AS STRING * 9 "ddddddzzz"
DATA AS STRING * 9 "eeebbbeee"
DATA AS STRING * 9 "ggggggeee"
DATA AS STRING * 9 "zzzzzzzzz"