DIM ANSWER AS LONG
DIM ANSWER2 AS FLOAT
DIM WIN AS LONG
DIM I AS BYTE
DIM B AS LONG
DIM T AS LONG
DIM D AS LONG
DIM A1 AS LONG
DIM A2 AS LONG
DIM A3 AS LONG
DIM RACEDIST AS LONG

DIM time(4) AS LONG @time
DIM distance(4) AS LONG @distance
DIM wins(4) AS LONG

FOR I = 0 TO 3
    wins(I) = 0
NEXT I

FOR I = 0 TO 3
    T = time(I)
    D = distance(I)
    WIN=0
    FOR B = 1 TO T
        RACEDIST = B * (T-B)
        IF RACEDIST > D THEN 
            'Yes, this will win
            'PRINT "you travel ";RACEDIST;"mm"
            WIN=WIN+1
        END IF
    NEXT B
    PRINT "race ";I+1;" has ";WIN;" wins." 
    wins(I) = WIN 
NEXT I 

' Get the solution

PRINT ""

ANSWER = wins(0)*wins(1)*wins(2)*wins(3)

PRINT "the answer for part 1 is ";ANSWER
PRINT ""


Time:        
DATA AS LONG 46, 82, 84, 79

Distance:   
DATA AS LONG 347, 1522, 1406, 1471

