'Variables

DIM C AS STRING * 1
DIM I AS BYTE
DIM L AS BYTE
DIM SETNUM AS BYTE
DIM P AS BYTE
DIM TOTALGAMES AS INT
DIM TOTALPW AS FLOAT
DIM PW AS FLOAT
DIM MINB AS FLOAT
DIM MINR AS FLOAT
DIM MING AS FLOAT

MINB=0
MINR=0
MING=0
PW=0
TOTALPW=0

'Arrays
DIM gamedata(100) AS STRING * 96 @gamedat

'SUB

SUB possible (B AS FLOAT, G AS FLOAT, R AS FLOAT) STATIC
  IF B < 15 AND G < 14 AND R < 13 AND P=1 THEN
   P=1
  ELSE
   P=0
  END IF
END SUB



TOTALGAMES=0

FOR I = 0 TO 99
    SETNUM=0
    MINB=0
    MINR=0
    MING=0
    P=1 ' A possible game unless we find differently
    LNG=LEN(gamedata(I)) ' get length of string
    FOR L = 0 TO LNG-1
        ' Check for 1 digit number
        IF MID$(gamedata(I),L,1) = ","  AND MID$(gamedata(I),L+2,1) = "b" THEN
            BLUE=VAL(MID$(gamedata(I),L+1,1))
        END IF
        IF MID$(gamedata(I),L,1) = ","  AND MID$(gamedata(I),L+2,1) = "r" THEN
            RED=VAL(MID$(gamedata(I),L+1,1))
        END IF
        IF MID$(gamedata(I),L,1) = ","  AND MID$(gamedata(I),L+2,1) = "g" THEN
            GREEN=VAL(MID$(gamedata(I),L+1,1))
        END IF
        ' Check for 2 digit number
        IF MID$(gamedata(I),L,1) = ","  AND MID$(gamedata(I),L+3,1) = "b" THEN
            BLUE=VAL(MID$(gamedata(I),L+1,2))
        END IF
        IF MID$(gamedata(I),L,1) = ","  AND MID$(gamedata(I),L+3,1) = "r" THEN
            RED=VAL(MID$(gamedata(I),L+1,2))
        END IF
        IF MID$(gamedata(I),L,1) = ","  AND MID$(gamedata(I),L+3,1) = "g" THEN
            GREEN=VAL(MID$(gamedata(I),L+1,2))
        END IF
        IF MID$(gamedata(I),L,1) = ";" THEN

            ' Check the current set for possible game
            CALL possible (BLUE,GREEN,RED)

            BLUE=0
            GREEN=0
            RED=0

            ' Now we have a mid string ; in the buffer we need to reassign colours
                     ' Check for 1 digit number
                IF MID$(gamedata(I),L+2,1) = "b" THEN
                    BLUE=VAL(MID$(gamedata(I),L+1,1))
                END IF
                IF MID$(gamedata(I),L+2,1) = "r" THEN
                    RED=VAL(MID$(gamedata(I),L+1,1))
                END IF
                IF MID$(gamedata(I),L+2,1) = "g" THEN
                    GREEN=VAL(MID$(gamedata(I),L+1,1))
                END IF
                ' Check for 2 digit number
                IF MID$(gamedata(I),L+3,1) = "b" THEN
                    BLUE=VAL(MID$(gamedata(I),L+1,2))
                END IF
                IF MID$(gamedata(I),L+3,1) = "r" THEN
                    RED=VAL(MID$(gamedata(I),L+1,2))
                END IF
                IF MID$(gamedata(I),L+3,1) = "g" THEN
                    GREEN=VAL(MID$(gamedata(I),L+1,2))
                END IF
        END IF
    NEXT L ' end of string length loop - print final set of game
    SETNUM=SETNUM+1
            PRINT ""
            PRINT "game ";I+1;" set ";SETNUM
            PRINT "blue ";BLUE
            PRINT "red ";RED
            PRINT "green ";GREEN
            PRINT ""


            ' Check the current set for possible game
            CALL possible (BLUE,GREEN,RED)


            'Final set so is this game possible?

            IF P=1 THEN
               TOTALGAMES=TOTALGAMES+I+1
               PRINT "game ";I+1; " is possible :)  " ;TOTALGAMES
            ELSE
                PRINT "game ";I+1; " not possible:("
            END IF
            BLUE=0
            GREEN=0
            RED=0
 NEXT I   

PRINT "Total is :";TOTALGAMES

gamedat:
DATA AS STRING * 96 "1,7b,4r,11g;2r,2b,7g;2r,13b,8g;18b,18b,7g,5r"
DATA AS STRING * 96 "2,3g,4r,4b;6r,4g,4b;2b,2b,4g,3r"
DATA AS STRING * 96 "3,1r,2g,3b;1r,2g;2g,3r;1b,1b,2r"
DATA AS STRING * 96 "4,1r,15g;1g,2b;12g,1r,2b;14g;2g,1b,2r"
DATA AS STRING * 96 "5,8r;7r;11r,4g;1b,1b,8r;6r,2g,1b;8g,13r,1b"
DATA AS STRING * 96 "6,3b,2r,6g;2r,8g,1b;1r,3b"
DATA AS STRING * 96 "7,5g,1r,1b;6b,6b,12r;6r,7g;3g,1b"
DATA AS STRING * 96 "8,10r,6g;4b,4b,6g,5r;8g,5r,5b;2r,4b"
DATA AS STRING * 96 "9,11b,13r,3g;13r,1g,6b;8b,8b,4g,5r;16r,7g,10b;16r,5g,6b;17r,6b"
DATA AS STRING * 96 "10,16b,8g;2r,4g,1b;15b,15b;4r,5g,4b"
DATA AS STRING * 96 "11,3b,8r,10g;10r,6g;1r,1g;13r,1g,1b;3g,7r;2b,2b,6g,2r"
DATA AS STRING * 96 "12,1r,10g;4r,6g,1b;9g,1b,7r;1b,1b,13g,2r;2b,2b,5r,11g"
DATA AS STRING * 96 "13,1r,5b;1r,6g;2b,2b,1r;2b,2b,1r,2g;5g,2b"
DATA AS STRING * 96 "14,4g;8b,1r,2g;7r,2g,4b;4b,4b,7g;7b,7b,2g,1r;7b,7b,5r"
DATA AS STRING * 96 "15,10g,3r;8b,14g,3r;4r,1g,12b"
DATA AS STRING * 96 "16,8r,4b,6g;14b,14b,9r,10g;1r,5b,8g;14b,14b,11g,3r"
DATA AS STRING * 96 "17,20b,5r,4g;3r,14b;4r,4b,4g;12b,12b,5r,3g"
DATA AS STRING * 96 "18,8r,7b,1g;1b,1b,2r,1g;1g,2b;1r,1g,1b"
DATA AS STRING * 96 "19,14g,4b;6g;12g,5b;12g,1r,1b;4b,4b,10g"
DATA AS STRING * 96 "20,3g,4b,4r;13b,13b,1r,2g;13b,13b,9g,9r"
DATA AS STRING * 96 "21,4g,2b,2r;3g,2b;1b,1b,5g;1b,1b,2r,3g;1g,1b,2r;6b,6b,1g"
DATA AS STRING * 96 "22,4r,17g;15g,3b,2r;4b,4b,7r,11g;16g,4r;3b,3b,2r"
DATA AS STRING * 96 "23,19g,2b,3r;1r,2b,2g;2b,2b,10g,11r"
DATA AS STRING * 96 "24,1r,3b;2b,2b;1g,1r,3b;1r,1g"
DATA AS STRING * 96 "25,12g,2r,10b;6g,3r;3g,18b,3r;17g,3r,18b"
DATA AS STRING * 96 "26,4r,12b,5g;3g,5r,1b;6b,6b,4g,1r;6b,6b,7g;3g,5r,2b;1g,2b,9r"
DATA AS STRING * 96 "27,1r,9g;3g;9g,2b,1r;10g,1b;1r,5g,3b"
DATA AS STRING * 96 "28,10r,8g;2b,2b,4g,7r;2g,9r,1b"
DATA AS STRING * 96 "29,5b,5g,3r;1g,2b,3r;2g,3b,5r;3r,11b"
DATA AS STRING * 96 "30,11r,5g;4b,4b,3g,5r;6b,6b,3g,5r"
DATA AS STRING * 96 "31,2b,8g,14r;9g;1r,1b,4g;2g,10r;1r,10g,2b;8g,14r"
DATA AS STRING * 96 "32,14g,6r,6b;1r,2b,15g;2r,18g,1b"
DATA AS STRING * 96 "33,16g,4r;18g,3r;5r,10g;5r,19g;11g,4r;11r,1b,2g"
DATA AS STRING * 96 "34,1b,11r;5r,4g;4g,1b,12r;2b,2b,1g,7r;3g,1b,12r"
DATA AS STRING * 96 "35,5r,1b;1b,1b,1r;2b,2b,2g,15r;7r,2g;3b,3b,1g,1r;16r,3b,1g"
DATA AS STRING * 96 "36,10g,16r;2b,2b,14g,6r;1b,1b,8g,12r"
DATA AS STRING * 96 "37,17g,14b;10g,12b;10b,10b,1r,8g"
DATA AS STRING * 96 "38,9b,2g;5b,5b,1g,5r;6b,6b,2g,7r;17r,1g,7b;1g,9b,16r"
DATA AS STRING * 96 "39,2r,13b,10g;5b,5b,15g,1r;13b,13b,5g;3r,6b,2g;17g,1b,4r;4r,1b,11g"
DATA AS STRING * 96 "40,4g,12b;5r,13b,1g;4g,7r;7b,7b,2g"
DATA AS STRING * 96 "41,3r,1g;10g,4b,5r;8b,5r,1g"
DATA AS STRING * 96 "42,8b,12r,5g;8r,5g,4b;3g,13r;8b,16r;12r,3g,1b;2b,2b,2g,6r"
DATA AS STRING * 96 "43,5b,4r;10r,6b;12r,2b,1g;7b,7b,12r,1g"
DATA AS STRING * 96 "44,11b,5r;2r,13g,5b;7r,7b,11g"
DATA AS STRING * 96 "45,7r,6b;5b,5b,6g;5g,5b,7r;4r,9g,12b;9b,9b,12g,1r"
DATA AS STRING * 96 "46,2g,7b,20r;18g,2b;8b,1r,3g;6g,1b;2r,6b,4g"
DATA AS STRING * 96 "47,6r,6b,1g;14b,14b,7g,2r;8b,3r,1g"
DATA AS STRING * 96 "48,1r,5b;3b,3b,15g,2r;6b,6b,1r,13g;6g,4b,3r;11g,3b"
DATA AS STRING * 96 "49,1g,15b,3r;15g,6b;12g,2r,8b;3g,16b"
DATA AS STRING * 96 "50,8b,7r,1g;6b,6b,1g,2r;3r,7b;4b,4b,6r,1g"
DATA AS STRING * 96 "51,2r,5b;2r,10g;11g,1b;9g,1b,2r;5b,5b,11g;1r,8g,1b"
DATA AS STRING * 96 "52,1g,1r,15b;17b,17b,1r;5r,1g;19b,19b,6r,3g;5b,5b,1g"
DATA AS STRING * 96 "53,1b,12r,6g;3r,7g,3b;2b,2b,7r,5g;4r,3b,19g;10r,12g,2b;5b,5b,7r,14g"
DATA AS STRING * 96 "54,12g,1r,4b;3b,3b,5r,8g;9g,6b;3g,2r,11b;3g,10b,7r;2r,3g,4b"
DATA AS STRING * 96 "55,5r,3b;4b,4b,6g;10b,10b,1g;7g,4r,14b;2r,9b,10g;5r,10b,10g"
DATA AS STRING * 96 "56,3g,11b;4b,4b,10g,8r;2b,2b,5g,2r;1b,1b,1g,8r;5g,7r,3b"
DATA AS STRING * 96 "57,2g,2b,3r;8r,5g,2b;16r,12b,7g;13b,13b,6r,2g;12r,1g"
DATA AS STRING * 96 "58,2g,3b,8r;3g,4b,7r;2b,2b,11r,4g;4g,1b,2r;3g,3r,2b"
DATA AS STRING * 96 "59,10r,6b,2g;2g,6b,14r;3g,11r,7b;1b,1b,1g"
DATA AS STRING * 96 "60,5b,10r;4b,4b,12r;2g,3r,4b"
DATA AS STRING * 96 "61,4b,1g;10b,10b,2r;6b,6b,1r;1g,7r;5b,5b,5r"
DATA AS STRING * 96 "62,6b,7r,1g;7b,7b,7g,15r;14g,16r,2b;2b,2b,17r;4r,11g,6b;13g,16r,5b"
DATA AS STRING * 96 "63,4r,13g,1b;2g,5b,10r;3g,8r;1b,1b,3r,11g;1r,7b"
DATA AS STRING * 96 "64,12g,1b;8r,1b,10g;11g,1b,3r;10g,2r,1b;1b,1b,9g,8r"
DATA AS STRING * 96 "65,5g,2r;7b,7b,5r,10g;9g,8b;3b,3b,4r,8g;11g,6r,16b"
DATA AS STRING * 96 "66,8g,1r,4b;10g,5b,7r;5b,5b,3r,6g;4b,4b,12g,6r;16g,3r;16g,7r,4b"
DATA AS STRING * 96 "67,6g;7r,1g,5b;10r,13g,3b;8g,11r,6b;14r,5g,7b"
DATA AS STRING * 96 "68,1r,8g,3b;1g,1r,1b;1g,11b,1r"
DATA AS STRING * 96 "69,2r,4g,1b;4b,4b,10g;4g,1b,2r;12g,5b;6b,6b,3g"
DATA AS STRING * 96 "70,1b,3g,2r;1g,2b;5g,1r;2b,2b,4g;1r,5g"
DATA AS STRING * 96 "71,6b,3r,12g;2r,8g,3b;8g,8b;7b,7b,1r,9g;2g,4b,1r;3r,7b,8g"
DATA AS STRING * 96 "72,8r,7b,6g;2r,8b,7g;2r,5b,1g;4g,6b,1r;11g,13r,3b;8g,11r,2b"
DATA AS STRING * 96 "73,7b,17r,4g;1r,4g,2b;3r,4b,4g;5b,5b,5r;6r,2b;11r,1g,4b"
DATA AS STRING * 96 "74,3r,2g;4r,12b,4g;7r,6b,10g"
DATA AS STRING * 96 "75,6b,7g;8g,9b,1r;6r,4b,9g;10r,9b,4g;6r,2b,1g;7g"
DATA AS STRING * 96 "76,10r,8g;2r,2b,5g;1r,1b,1g;9r,11g,2b;2b,2b,9g,3r;6g,14r"
DATA AS STRING * 96 "77,9b,1r,3g;8b,17g,4r;5g,1b,2r;6g,1r,9b;4g,10r;9r,3b"
DATA AS STRING * 96 "78,5g,10b;2g,5b,11r;1r,1g,6b;1r,8b,4g"
DATA AS STRING * 96 "79,3g,1b,2r;8g,1b,2r;2b,2b,1r,11g"
DATA AS STRING * 96 "80,12b,3g;6r,4g,13b;4b,4b,8r;3g,4b"
DATA AS STRING * 96 "81,1g,5b;1g,3b,1r;1b,1b,1r,3g;6b,6b,5g"
DATA AS STRING * 96 "82,2g,1b;10b,10b,1r,6g;4g,20b,1r;20b,20b,2g,1r"
DATA AS STRING * 96 "83,2g,9b,10r;12r,11b,4g;11b,11b,8r,3g;17g,4b;12g,4r,6b;1r,11g,8b"
DATA AS STRING * 96 "84,7g,15r,15b;4b,4b,3g,18r;2b,2b,1r,2g;8b,19r,5g;11b,11b,3r;9r,2b"
DATA AS STRING * 96 "85,14g,3r,16b;3b,3b,6g;12g,6b,2r"
DATA AS STRING * 96 "86,5r,6g;9r,4g;7g,1b,2r"
DATA AS STRING * 96 "87,10b,7r,1g;12b,12b,14r,1g;7r,7b,1g"
DATA AS STRING * 96 "88,5r,10g,5b;10g,2r,8b;2r,14g,4b"
DATA AS STRING * 96 "89,1b,6r,12g;9r,13g,3b;11g,6r,3b"
DATA AS STRING * 96 "90,1g,8b,10r;10b,10b,7g;6b,6b,15r,1g;1b,1b,16r,4g"
DATA AS STRING * 96 "91,8r,9g,2b;2r,15b,2g;15b,15b,1r,5g;1g,6r,10b"
DATA AS STRING * 96 "92,10b,4r;9b,3r,7g;8b,16g,3r;16g,16b"
DATA AS STRING * 96 "93,1b,2g,1r;4r,7g,12b;6g,3b,4r;8b,4r,12g;5r,8g;1r,18b,10g"
DATA AS STRING * 96 "94,1b,5r,6g;7r,6g,1b;8r,11g;12g,7r,1b;7r,8g"
DATA AS STRING * 96 "95,10r,7g;2g,1b,10r;6g,5r,1b"
DATA AS STRING * 96 "96,3b,12r,3g;13r,9b;2g,5r,13b;2r,18b,4g;6r,6b,7g;3g,15r,18b"
DATA AS STRING * 96 "97,4r,3g;2b,2b,4r,5g;3r,3g"
DATA AS STRING * 96 "98,2r,19b;2b,2b;11b,11b,2r;3g,5b,1r;2r,1b;17b,17b"
DATA AS STRING * 96 "99,2r,16b,1g;2g,12b,6r;1r,3g,3b;8r,1g;2r,9b;1g,7r,9b"
DATA AS STRING * 96 "100,8g,3r;7g,4r;1r,7g,2b;1g,2r"