DIM WIN AS FLOAT
DIM B AS FLOAT
DIM T AS FLOAT
DIM D AS FLOAT

DIM RACEDIST AS LONG

B=1

    T = 46828479
    D = 347152214061471
    WIN=0
    DO WHILE B < T
        RACEDIST = B * (T-B)
        IF RACEDIST > D THEN 
            'Yes, this will win
            PRINT "you travel ";RACEDIST;" mm"
            WIN=WIN+1
        END IF
    B=B+1
    LOOP
    PRINT ""
    PRINT "the race has ";WIN;" possible wins." 



