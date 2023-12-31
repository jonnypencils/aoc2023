DIM hands(1000) AS STRING * 9 @cardhands
DIM ranking(1000) AS STRING * 5
DIM cardcount(13) AS BYTE

DIM C AS STRING * 1
DIM HAND AS STRING * 9
DIM DECK AS STRING * 13
DIM CARD1 AS STRING * 1
DIM CARD2 AS STRING * 1
DIM CARD3 AS STRING * 1
DIM CARD4 AS STRING * 1
DIM CARD5 AS STRING * 1
DIM L AS BYTE
DIM BET AS INT
DIM CARDS AS BYTE
DIM ROUNDS AS BYTE
DIM HTOTAL AS INT

DIM I AS INT
DIM J AS BYTE
DIM M AS BYTE


CARDS=5
ROUNDS=1000

DECK="a23456789tjqk"

FOR I = 0 TO ROUNDS-1
    ranking(I)="Z"
NEXT I

' Array to hold number of cards of each type in hand
' based on a23456789tjqk
FOR I = 0 TO 12
    cardcount(I)=0
NEXT I

' Get all rounds and assign ranking
FOR I = 0 TO ROUNDS-1
    L=LEN(hands(I))
    HH=1
    'initialise card counts
    HAND=LEFT$(hands(I),CARDS)
    BET=VAL(RIGHT$(hands(I),L-CARDS))
'Set card values in order
    CARD1=LEFT$(HAND,1)
    CARD2=MID$(HAND,1,1)
    CARD3=MID$(HAND,2,1)
    CARD4=MID$(HAND,3,1)
    CARD5=MID$(HAND,4,1)
    FOR J=0 TO 13
        IF CARD1=MID$(DECK,J,1) THEN
        cardcount(J)=cardcount(J)+1
        END IF
        IF CARD2=MID$(DECK,J,1) THEN
        cardcount(J)=cardcount(J)+1
        END IF
        IF CARD3=MID$(DECK,J,1) THEN
        cardcount(J)=cardcount(J)+1
        END IF
        IF CARD4=MID$(DECK,J,1) THEN
        cardcount(J)=cardcount(J)+1
        END IF
        IF CARD5=MID$(DECK,J,1) THEN
        cardcount(J)=cardcount(J)+1
        END IF
    NEXT J
    ' Now set what type of hand in rankings
    
    HTOTAL=0
    FH=0
    FOR J=0 TO 12
    IF cardcount(J) = 0 THEN
        cardcount(J) = 1
    END IF
    IF cardcount(J) = 3 THEN
        FH=1
    END IF
    HTOTAL=HTOTAL+cardcount(J)
    ' Check for (H)igh card hand
        IF HTOTAL = 13 THEN
            ranking(I)="h" 
        END IF
    ' Check for single (P)air
        IF HTOTAL = 14 THEN
            ranking(I)="p" 
        END IF
    ' Check for (D)ouble pair
        IF HTOTAL = 15 THEN
            ranking(I)="d" 
        END IF
    ' Check for (F)ull house
        IF HTOTAL = 16 AND FH=1 THEN
            ranking(I)="f" 
        END IF
    ' Check for f(O)ur of a kind
        IF HTOTAL = 16 AND FH=0 THEN
            ranking(I)="o" 
        END IF
    ' Check for f(I)ve of a kind
        IF HTOTAL = 17 THEN
            ranking(I)="i" 
        END IF
    NEXT J
' reset the cardcountarray
FOR J = 0 TO 12
    cardcount(J)=0
NEXT J

NEXT I

' All the hands have been worked out now. 
' Now we have to rank them according to the same hand type

FOR I= 0 TO ROUNDS-1    
    PRINT LEFT$(hands(I),CARDS);" is a   ";ranking(I);" hand"

'FOR I=0 TO ROUNDS-1
'    IF ranking(I) = "H" THEN 'Do only high card hands
'        HAND=LEFT$(hands(I),CARDS)
'        CARD1=LEFT$(HAND,1)
'        CARD2=MID$(HAND,1,1)
'        CARD3=MID$(HAND,2,1)
'        CARD4=MID$(HAND,3,1)
'        CARD5=MID$(HAND,4,1)
'        FOR J=0 TO ROUNDS-1
'            
'    END IF
'NEXT I
NEXT I



cardhands:        
DATA AS STRING * 9 "467k395"
DATA AS STRING * 9 "jk5qk838"
DATA AS STRING * 9 "44664725"
DATA AS STRING * 9 "8qak3134"
DATA AS STRING * 9 "53a3a945"
DATA AS STRING * 9 "7qqj7164"
DATA AS STRING * 9 "j8j89236"
DATA AS STRING * 9 "38qat166"
DATA AS STRING * 9 "q7944755"
DATA AS STRING * 9 "35333526"
DATA AS STRING * 9 "5j787482"
DATA AS STRING * 9 "4k769829"
DATA AS STRING * 9 "37773960"
DATA AS STRING * 9 "qj78k282"
DATA AS STRING * 9 "3j39q326"
DATA AS STRING * 9 "tj2qq255"
DATA AS STRING * 9 "j4338337"
DATA AS STRING * 9 "qk3kk187"
DATA AS STRING * 9 "5k8kq380"
DATA AS STRING * 9 "93785500"
DATA AS STRING * 9 "795jt382"
DATA AS STRING * 9 "q399q391"
DATA AS STRING * 9 "99j99206"
DATA AS STRING * 9 "t5555716"
DATA AS STRING * 9 "q7q8q990"
DATA AS STRING * 9 "qqjjq346"
DATA AS STRING * 9 "34344332"
DATA AS STRING * 9 "k4j44763"
DATA AS STRING * 9 "2a36t974"
DATA AS STRING * 9 "77757461"
DATA AS STRING * 9 "55446907"
DATA AS STRING * 9 "99jj9962"
DATA AS STRING * 9 "k29kq177"
DATA AS STRING * 9 "99666961"
DATA AS STRING * 9 "688kk249"
DATA AS STRING * 9 "5a558767"
DATA AS STRING * 9 "tt6k2630"
DATA AS STRING * 9 "5q4a4872"
DATA AS STRING * 9 "jtkq4969"
DATA AS STRING * 9 "a5aaa421"
DATA AS STRING * 9 "jaa4q680"
DATA AS STRING * 9 "55k6929"
DATA AS STRING * 9 "96atj144"
DATA AS STRING * 9 "3q462523"
DATA AS STRING * 9 "73646203"
DATA AS STRING * 9 "5a96a550"
DATA AS STRING * 9 "k84tq4"
DATA AS STRING * 9 "7278t406"
DATA AS STRING * 9 "kqqt5395"
DATA AS STRING * 9 "54567197"
DATA AS STRING * 9 "t53ta355"
DATA AS STRING * 9 "aqa99601"
DATA AS STRING * 9 "88kqq968"
DATA AS STRING * 9 "55j5j727"
DATA AS STRING * 9 "73tj9466"
DATA AS STRING * 9 "99799843"
DATA AS STRING * 9 "324qq36"
DATA AS STRING * 9 "84aaa190"
DATA AS STRING * 9 "7j366511"
DATA AS STRING * 9 "jk938667"
DATA AS STRING * 9 "kkqjq762"
DATA AS STRING * 9 "722j4110"
DATA AS STRING * 9 "9tkt984"
DATA AS STRING * 9 "33jj3458"
DATA AS STRING * 9 "6k444498"
DATA AS STRING * 9 "4279t23"
DATA AS STRING * 9 "k5t28467"
DATA AS STRING * 9 "3kkkk871"
DATA AS STRING * 9 "kqaqk492"
DATA AS STRING * 9 "44akk865"
DATA AS STRING * 9 "5638t932"
DATA AS STRING * 9 "a89ak24"
DATA AS STRING * 9 "29k92403"
DATA AS STRING * 9 "a69k6596"
DATA AS STRING * 9 "kkk84400"
DATA AS STRING * 9 "qa748616"
DATA AS STRING * 9 "55aaa504"
DATA AS STRING * 9 "9255q684"
DATA AS STRING * 9 "56646330"
DATA AS STRING * 9 "6j6j7222"
DATA AS STRING * 9 "a59j5370"
DATA AS STRING * 9 "3aa4j940"
DATA AS STRING * 9 "k9k38302"
DATA AS STRING * 9 "2ak58735"
DATA AS STRING * 9 "68k4k422"
DATA AS STRING * 9 "95599324"
DATA AS STRING * 9 "8k88j987"
DATA AS STRING * 9 "845q5478"
DATA AS STRING * 9 "72kq7263"
DATA AS STRING * 9 "8tj83751"
DATA AS STRING * 9 "96ttq935"
DATA AS STRING * 9 "aq6aq445"
DATA AS STRING * 9 "qkqqa321"
DATA AS STRING * 9 "a5644769"
DATA AS STRING * 9 "qq5qj801"
DATA AS STRING * 9 "aa574436"
DATA AS STRING * 9 "333qq605"
DATA AS STRING * 9 "j598271"
DATA AS STRING * 9 "qt8a5956"
DATA AS STRING * 9 "2q46a982"
DATA AS STRING * 9 "j3773317"
DATA AS STRING * 9 "3kk93485"
DATA AS STRING * 9 "3a76a926"
DATA AS STRING * 9 "338jj502"
DATA AS STRING * 9 "8kaq6737"
DATA AS STRING * 9 "kkk28520"
DATA AS STRING * 9 "644q5850"
DATA AS STRING * 9 "2t6tt397"
DATA AS STRING * 9 "34ja7549"
DATA AS STRING * 9 "743j7747"
DATA AS STRING * 9 "34843103"
DATA AS STRING * 9 "6kkkk204"
DATA AS STRING * 9 "q2j22548"
DATA AS STRING * 9 "jkkkk995"
DATA AS STRING * 9 "42446704"
DATA AS STRING * 9 "8732a238"
DATA AS STRING * 9 "tt9j2109"
DATA AS STRING * 9 "4758t33"
DATA AS STRING * 9 "tttt7914"
DATA AS STRING * 9 "787j7647"
DATA AS STRING * 9 "59t5962"
DATA AS STRING * 9 "9q989985"
DATA AS STRING * 9 "t886j554"
DATA AS STRING * 9 "543qj75"
DATA AS STRING * 9 "77637857"
DATA AS STRING * 9 "8888t83"
DATA AS STRING * 9 "92t52939"
DATA AS STRING * 9 "9832a620"
DATA AS STRING * 9 "3tt3981"
DATA AS STRING * 9 "8435318"
DATA AS STRING * 9 "a8q8a824"
DATA AS STRING * 9 "t4597425"
DATA AS STRING * 9 "k3635949"
DATA AS STRING * 9 "kaaa2320"
DATA AS STRING * 9 "42224243"
DATA AS STRING * 9 "aa8a3565"
DATA AS STRING * 9 "kk63k114"
DATA AS STRING * 9 "tt3tt133"
DATA AS STRING * 9 "33t77141"
DATA AS STRING * 9 "j868j774"
DATA AS STRING * 9 "422qt369"
DATA AS STRING * 9 "24t2k344"
DATA AS STRING * 9 "kk3q38"
DATA AS STRING * 9 "424j2967"
DATA AS STRING * 9 "8j6j6666"
DATA AS STRING * 9 "k6927887"
DATA AS STRING * 9 "36666366"
DATA AS STRING * 9 "78kt8867"
DATA AS STRING * 9 "at66t761"
DATA AS STRING * 9 "72at6155"
DATA AS STRING * 9 "2q6qq440"
DATA AS STRING * 9 "64j64594"
DATA AS STRING * 9 "a2jt8578"
DATA AS STRING * 9 "qqajq383"
DATA AS STRING * 9 "8q333963"
DATA AS STRING * 9 "9a22a503"
DATA AS STRING * 9 "k86k655"
DATA AS STRING * 9 "66899899"
DATA AS STRING * 9 "4744j210"
DATA AS STRING * 9 "72k54860"
DATA AS STRING * 9 "kqkk4723"
DATA AS STRING * 9 "6tk62607"
DATA AS STRING * 9 "9j955652"
DATA AS STRING * 9 "a45a5766"
DATA AS STRING * 9 "4j333744"
DATA AS STRING * 9 "5k555277"
DATA AS STRING * 9 "7777j657"
DATA AS STRING * 9 "7853a147"
DATA AS STRING * 9 "75qqq356"
DATA AS STRING * 9 "t6t93818"
DATA AS STRING * 9 "8t342643"
DATA AS STRING * 9 "498a7232"
DATA AS STRING * 9 "96a2a471"
DATA AS STRING * 9 "j55kk583"
DATA AS STRING * 9 "kj7q6849"
DATA AS STRING * 9 "36a36707"
DATA AS STRING * 9 "23655290"
DATA AS STRING * 9 "k444k371"
DATA AS STRING * 9 "5858k688"
DATA AS STRING * 9 "kjk8j258"
DATA AS STRING * 9 "q3699910"
DATA AS STRING * 9 "79t64864"
DATA AS STRING * 9 "kaq44536"
DATA AS STRING * 9 "t4tj5239"
DATA AS STRING * 9 "8kk88589"
DATA AS STRING * 9 "42aa4127"
DATA AS STRING * 9 "qq4q4746"
DATA AS STRING * 9 "j9868472"
DATA AS STRING * 9 "95493170"
DATA AS STRING * 9 "jk6t5428"
DATA AS STRING * 9 "kaata775"
DATA AS STRING * 9 "tk3kt886"
DATA AS STRING * 9 "36633858"
DATA AS STRING * 9 "67767590"
DATA AS STRING * 9 "86a2q175"
DATA AS STRING * 9 "j7j7j659"
DATA AS STRING * 9 "7j457796"
DATA AS STRING * 9 "5533565"
DATA AS STRING * 9 "9288a664"
DATA AS STRING * 9 "88899499"
DATA AS STRING * 9 "7tkta327"
DATA AS STRING * 9 "6qj36701"
DATA AS STRING * 9 "k7kqk943"
DATA AS STRING * 9 "qqaq2681"
DATA AS STRING * 9 "q9948444"
DATA AS STRING * 9 "85923335"
DATA AS STRING * 9 "82832283"
DATA AS STRING * 9 "tq5qt92"
DATA AS STRING * 9 "tk8a3191"
DATA AS STRING * 9 "a957k614"
DATA AS STRING * 9 "8877t623"
DATA AS STRING * 9 "5jtt9253"
DATA AS STRING * 9 "2k626248"
DATA AS STRING * 9 "757q7817"
DATA AS STRING * 9 "jj6t5827"
DATA AS STRING * 9 "kj796367"
DATA AS STRING * 9 "895aq608"
DATA AS STRING * 9 "aa666950"
DATA AS STRING * 9 "tt4t2135"
DATA AS STRING * 9 "qqqkk600"
DATA AS STRING * 9 "a9kk9925"
DATA AS STRING * 9 "49aa7972"
DATA AS STRING * 9 "73tat60"
DATA AS STRING * 9 "5k49q74"
DATA AS STRING * 9 "aaj6a753"
DATA AS STRING * 9 "42222470"
DATA AS STRING * 9 "j99kk722"
DATA AS STRING * 9 "a9aa9514"
DATA AS STRING * 9 "36636581"
DATA AS STRING * 9 "7t5q9690"
DATA AS STRING * 9 "ttk7k496"
DATA AS STRING * 9 "277j4665"
DATA AS STRING * 9 "782tq662"
DATA AS STRING * 9 "3ak57734"
DATA AS STRING * 9 "29kj7343"
DATA AS STRING * 9 "72726378"
DATA AS STRING * 9 "67656541"
DATA AS STRING * 9 "22a29229"
DATA AS STRING * 9 "jj5aa336"
DATA AS STRING * 9 "qttjq979"
DATA AS STRING * 9 "j73k6473"
DATA AS STRING * 9 "55ak919"
DATA AS STRING * 9 "46466610"
DATA AS STRING * 9 "8aak4408"
DATA AS STRING * 9 "27227181"
DATA AS STRING * 9 "55525214"
DATA AS STRING * 9 "444q4505"
DATA AS STRING * 9 "65k55506"
DATA AS STRING * 9 "kj84t529"
DATA AS STRING * 9 "82225250"
DATA AS STRING * 9 "59tka32"
DATA AS STRING * 9 "83j53178"
DATA AS STRING * 9 "599k4988"
DATA AS STRING * 9 "55ttt759"
DATA AS STRING * 9 "59999431"
DATA AS STRING * 9 "t44a4828"
DATA AS STRING * 9 "a888t874"
DATA AS STRING * 9 "j3533619"
DATA AS STRING * 9 "9979k981"
DATA AS STRING * 9 "kk998101"
DATA AS STRING * 9 "64965799"
DATA AS STRING * 9 "9a999934"
DATA AS STRING * 9 "9a299942"
DATA AS STRING * 9 "5kkka862"
DATA AS STRING * 9 "4a865802"
DATA AS STRING * 9 "64qq4837"
DATA AS STRING * 9 "atata98"
DATA AS STRING * 9 "6tjq7807"
DATA AS STRING * 9 "k6997585"
DATA AS STRING * 9 "57t5t457"
DATA AS STRING * 9 "jt66t938"
DATA AS STRING * 9 "jjqk9105"
DATA AS STRING * 9 "jj278804"
DATA AS STRING * 9 "jj5aq661"
DATA AS STRING * 9 "q2597930"
DATA AS STRING * 9 "aaqaq31"
DATA AS STRING * 9 "5a974427"
DATA AS STRING * 9 "ttqqk868"
DATA AS STRING * 9 "7kt7t730"
DATA AS STRING * 9 "k4999112"
DATA AS STRING * 9 "a8kaq672"
DATA AS STRING * 9 "6aqq6447"
DATA AS STRING * 9 "32j32297"
DATA AS STRING * 9 "4qa2j915"
DATA AS STRING * 9 "t2q3q712"
DATA AS STRING * 9 "34kqt121"
DATA AS STRING * 9 "98379617"
DATA AS STRING * 9 "487qk44"
DATA AS STRING * 9 "55taj909"
DATA AS STRING * 9 "6686t28"
DATA AS STRING * 9 "22922805"
DATA AS STRING * 9 "t846a556"
DATA AS STRING * 9 "j5a6a399"
DATA AS STRING * 9 "55q55347"
DATA AS STRING * 9 "8488j593"
DATA AS STRING * 9 "jkktt708"
DATA AS STRING * 9 "8288j768"
DATA AS STRING * 9 "jkk661"
DATA AS STRING * 9 "22999586"
DATA AS STRING * 9 "85398334"
DATA AS STRING * 9 "77kk6782"
DATA AS STRING * 9 "k34jj674"
DATA AS STRING * 9 "39k4k653"
DATA AS STRING * 9 "qa6k3720"
DATA AS STRING * 9 "78878715"
DATA AS STRING * 9 "qa9q4745"
DATA AS STRING * 9 "3333j226"
DATA AS STRING * 9 "3tt32686"
DATA AS STRING * 9 "44999401"
DATA AS STRING * 9 "a2j32531"
DATA AS STRING * 9 "q65a9905"
DATA AS STRING * 9 "j6aa7194"
DATA AS STRING * 9 "8j888163"
DATA AS STRING * 9 "7jt74624"
DATA AS STRING * 9 "jkkak568"
DATA AS STRING * 9 "239j2919"
DATA AS STRING * 9 "aa4aa52"
DATA AS STRING * 9 "222jj184"
DATA AS STRING * 9 "546aq894"
DATA AS STRING * 9 "k2kk9631"
DATA AS STRING * 9 "45tq2375"
DATA AS STRING * 9 "tttt2146"
DATA AS STRING * 9 "26q77989"
DATA AS STRING * 9 "9866k851"
DATA AS STRING * 9 "t3332292"
DATA AS STRING * 9 "66469758"
DATA AS STRING * 9 "48j48889"
DATA AS STRING * 9 "4a4qa185"
DATA AS STRING * 9 "j662668"
DATA AS STRING * 9 "46t4a660"
DATA AS STRING * 9 "83t52151"
DATA AS STRING * 9 "7t7t7407"
DATA AS STRING * 9 "73758479"
DATA AS STRING * 9 "63a44291"
DATA AS STRING * 9 "66qt6875"
DATA AS STRING * 9 "6645j738"
DATA AS STRING * 9 "94q97638"
DATA AS STRING * 9 "t5kt5411"
DATA AS STRING * 9 "tj3j3866"
DATA AS STRING * 9 "qt6tq842"
DATA AS STRING * 9 "a448a433"
DATA AS STRING * 9 "556jj533"
DATA AS STRING * 9 "t3tkt161"
DATA AS STRING * 9 "6jt43265"
DATA AS STRING * 9 "t5ttt393"
DATA AS STRING * 9 "k7kk4386"
DATA AS STRING * 9 "53j6a845"
DATA AS STRING * 9 "k7777756"
DATA AS STRING * 9 "63399685"
DATA AS STRING * 9 "j85aq87"
DATA AS STRING * 9 "88585906"
DATA AS STRING * 9 "qjtqq270"
DATA AS STRING * 9 "tkktk131"
DATA AS STRING * 9 "3j3jq797"
DATA AS STRING * 9 "k7q34836"
DATA AS STRING * 9 "k4499362"
DATA AS STRING * 9 "53555651"
DATA AS STRING * 9 "9888t435"
DATA AS STRING * 9 "2j299557"
DATA AS STRING * 9 "8j999964"
DATA AS STRING * 9 "96tq2293"
DATA AS STRING * 9 "8ktj8137"
DATA AS STRING * 9 "ka6q7442"
DATA AS STRING * 9 "2j6kq900"
DATA AS STRING * 9 "446a4294"
DATA AS STRING * 9 "ajaa3671"
DATA AS STRING * 9 "q427t116"
DATA AS STRING * 9 "9jq99398"
DATA AS STRING * 9 "59929392"
DATA AS STRING * 9 "822j8192"
DATA AS STRING * 9 "q92q7420"
DATA AS STRING * 9 "kkjk6171"
DATA AS STRING * 9 "taj37487"
DATA AS STRING * 9 "8a2j510"
DATA AS STRING * 9 "22ttt220"
DATA AS STRING * 9 "33623111"
DATA AS STRING * 9 "7q7aj491"
DATA AS STRING * 9 "a3jj2650"
DATA AS STRING * 9 "j4j23299"
DATA AS STRING * 9 "396ka896"
DATA AS STRING * 9 "k3k3j486"
DATA AS STRING * 9 "qkkkk20"
DATA AS STRING * 9 "9a2aj713"
DATA AS STRING * 9 "746k456"
DATA AS STRING * 9 "96996885"
DATA AS STRING * 9 "jtk77312"
DATA AS STRING * 9 "q8888826"
DATA AS STRING * 9 "3t4aj771"
DATA AS STRING * 9 "97977219"
DATA AS STRING * 9 "9354k788"
DATA AS STRING * 9 "5q5kk455"
DATA AS STRING * 9 "t3734325"
DATA AS STRING * 9 "tk26a156"
DATA AS STRING * 9 "7aaaa924"
DATA AS STRING * 9 "kj622183"
DATA AS STRING * 9 "5qtaq642"
DATA AS STRING * 9 "aaaaq488"
DATA AS STRING * 9 "tttjt953"
DATA AS STRING * 9 "q2222145"
DATA AS STRING * 9 "4a9tj245"
DATA AS STRING * 9 "tt3jk588"
DATA AS STRING * 9 "j5555284"
DATA AS STRING * 9 "94aqt193"
DATA AS STRING * 9 "97325196"
DATA AS STRING * 9 "74a8j37"
DATA AS STRING * 9 "24aaa847"
DATA AS STRING * 9 "22a32381"
DATA AS STRING * 9 "4kj59542"
DATA AS STRING * 9 "t6qk4673"
DATA AS STRING * 9 "77877922"
DATA AS STRING * 9 "q2q6649"
DATA AS STRING * 9 "66688792"
DATA AS STRING * 9 "9t9t9918"
DATA AS STRING * 9 "j8878552"
DATA AS STRING * 9 "6a63a221"
DATA AS STRING * 9 "aa559780"
DATA AS STRING * 9 "9t47q300"
DATA AS STRING * 9 "akka4501"
DATA AS STRING * 9 "33qq464"
DATA AS STRING * 9 "6k375965"
DATA AS STRING * 9 "t7q4382"
DATA AS STRING * 9 "3689q569"
DATA AS STRING * 9 "a6a3a462"
DATA AS STRING * 9 "t5q3j689"
DATA AS STRING * 9 "49q99895"
DATA AS STRING * 9 "ka262490"
DATA AS STRING * 9 "8749713"
DATA AS STRING * 9 "4449a973"
DATA AS STRING * 9 "92453430"
DATA AS STRING * 9 "5qa5a149"
DATA AS STRING * 9 "69666247"
DATA AS STRING * 9 "k6aja992"
DATA AS STRING * 9 "a4444729"
DATA AS STRING * 9 "44494298"
DATA AS STRING * 9 "j5993927"
DATA AS STRING * 9 "26662555"
DATA AS STRING * 9 "4j6a5613"
DATA AS STRING * 9 "kk77k855"
DATA AS STRING * 9 "73222315"
DATA AS STRING * 9 "2a2j2719"
DATA AS STRING * 9 "k7kt743"
DATA AS STRING * 9 "98t64998"
DATA AS STRING * 9 "23282528"
DATA AS STRING * 9 "449t7130"
DATA AS STRING * 9 "6qk24424"
DATA AS STRING * 9 "aaaa3179"
DATA AS STRING * 9 "ja42k53"
DATA AS STRING * 9 "6a6kk211"
DATA AS STRING * 9 "j55jj742"
DATA AS STRING * 9 "j5t93304"
DATA AS STRING * 9 "tqa23358"
DATA AS STRING * 9 "8j257240"
DATA AS STRING * 9 "39393522"
DATA AS STRING * 9 "68a38450"
DATA AS STRING * 9 "qqak8970"
DATA AS STRING * 9 "j77qt341"
DATA AS STRING * 9 "t68aa242"
DATA AS STRING * 9 "99933310"
DATA AS STRING * 9 "425ka69"
DATA AS STRING * 9 "99a9j535"
DATA AS STRING * 9 "j35jk113"
DATA AS STRING * 9 "4a37t360"
DATA AS STRING * 9 "63333791"
DATA AS STRING * 9 "78j5t34"
DATA AS STRING * 9 "46t46883"
DATA AS STRING * 9 "t8jq350"
DATA AS STRING * 9 "kkkk5519"
DATA AS STRING * 9 "t29j8640"
DATA AS STRING * 9 "kkk88646"
DATA AS STRING * 9 "3a32a228"
DATA AS STRING * 9 "7a77t57"
DATA AS STRING * 9 "2qq2j971"
DATA AS STRING * 9 "7q777438"
DATA AS STRING * 9 "5j54521"
DATA AS STRING * 9 "t4aaj432"
DATA AS STRING * 9 "qqjaa570"
DATA AS STRING * 9 "kj79j853"
DATA AS STRING * 9 "t3jka359"
DATA AS STRING * 9 "676k6724"
DATA AS STRING * 9 "4tatt931"
DATA AS STRING * 9 "jkkt2629"
DATA AS STRING * 9 "j338t469"
DATA AS STRING * 9 "9939j743"
DATA AS STRING * 9 "85a93241"
DATA AS STRING * 9 "945ta363"
DATA AS STRING * 9 "5jk5a493"
DATA AS STRING * 9 "q5jt5815"
DATA AS STRING * 9 "7637812"
DATA AS STRING * 9 "t3t53157"
DATA AS STRING * 9 "jaa24732"
DATA AS STRING * 9 "55757200"
DATA AS STRING * 9 "k727j115"
DATA AS STRING * 9 "259kk510"
DATA AS STRING * 9 "2j739786"
DATA AS STRING * 9 "288aa598"
DATA AS STRING * 9 "qj233100"
DATA AS STRING * 9 "qq56q25"
DATA AS STRING * 9 "6333j702"
DATA AS STRING * 9 "86797839"
DATA AS STRING * 9 "47t77361"
DATA AS STRING * 9 "k48233"
DATA AS STRING * 9 "6k44654"
DATA AS STRING * 9 "94j75543"
DATA AS STRING * 9 "qqqqa980"
DATA AS STRING * 9 "55j66923"
DATA AS STRING * 9 "aqt55645"
DATA AS STRING * 9 "55593314"
DATA AS STRING * 9 "j6776379"
DATA AS STRING * 9 "j23t6102"
DATA AS STRING * 9 "7k7k7911"
DATA AS STRING * 9 "jq5a3227"
DATA AS STRING * 9 "kk66k279"
DATA AS STRING * 9 "ajjaq396"
DATA AS STRING * 9 "ja25239"
DATA AS STRING * 9 "555kk714"
DATA AS STRING * 9 "kj56k637"
DATA AS STRING * 9 "kj64k928"
DATA AS STRING * 9 "6q66q85"
DATA AS STRING * 9 "tjtt2273"
DATA AS STRING * 9 "k634j854"
DATA AS STRING * 9 "66662576"
DATA AS STRING * 9 "6q6j6212"
DATA AS STRING * 9 "kaat2696"
DATA AS STRING * 9 "76663793"
DATA AS STRING * 9 "t3aq3632"
DATA AS STRING * 9 "2j994966"
DATA AS STRING * 9 "tttja63"
DATA AS STRING * 9 "4qjq4165"
DATA AS STRING * 9 "aaaj8331"
DATA AS STRING * 9 "tt666158"
DATA AS STRING * 9 "2kka2453"
DATA AS STRING * 9 "54444563"
DATA AS STRING * 9 "7kk88675"
DATA AS STRING * 9 "47777832"
DATA AS STRING * 9 "6jjq9475"
DATA AS STRING * 9 "55275876"
DATA AS STRING * 9 "63489794"
DATA AS STRING * 9 "7k7q3208"
DATA AS STRING * 9 "6j585820"
DATA AS STRING * 9 "3q89t524"
DATA AS STRING * 9 "92ak26"
DATA AS STRING * 9 "66jk9655"
DATA AS STRING * 9 "7j4kq139"
DATA AS STRING * 9 "666a5711"
DATA AS STRING * 9 "4jtk9117"
DATA AS STRING * 9 "88aja368"
DATA AS STRING * 9 "34t5t602"
DATA AS STRING * 9 "9933j278"
DATA AS STRING * 9 "97q63448"
DATA AS STRING * 9 "a5555892"
DATA AS STRING * 9 "qj7a2726"
DATA AS STRING * 9 "5kkj2917"
DATA AS STRING * 9 "a5238108"
DATA AS STRING * 9 "33343663"
DATA AS STRING * 9 "k33t3285"
DATA AS STRING * 9 "6q655937"
DATA AS STRING * 9 "38383880"
DATA AS STRING * 9 "47834252"
DATA AS STRING * 9 "qja49692"
DATA AS STRING * 9 "a6926547"
DATA AS STRING * 9 "48q8q288"
DATA AS STRING * 9 "72j86107"
DATA AS STRING * 9 "5t5t9449"
DATA AS STRING * 9 "2jk25305"
DATA AS STRING * 9 "667t6136"
DATA AS STRING * 9 "7jj88429"
DATA AS STRING * 9 "q5kqk394"
DATA AS STRING * 9 "ataaa952"
DATA AS STRING * 9 "66949296"
DATA AS STRING * 9 "tt222933"
DATA AS STRING * 9 "aq4ak948"
DATA AS STRING * 9 "kqjj7209"
DATA AS STRING * 9 "3465k709"
DATA AS STRING * 9 "74775126"
DATA AS STRING * 9 "8tj6t402"
DATA AS STRING * 9 "82q3j816"
DATA AS STRING * 9 "q7855354"
DATA AS STRING * 9 "jj3kk9"
DATA AS STRING * 9 "22223351"
DATA AS STRING * 9 "2k7ta831"
DATA AS STRING * 9 "555aa984"
DATA AS STRING * 9 "83539168"
DATA AS STRING * 9 "444t4140"
DATA AS STRING * 9 "4a8q4693"
DATA AS STRING * 9 "ja8ak890"
DATA AS STRING * 9 "29qtq308"
DATA AS STRING * 9 "kjkkj389"
DATA AS STRING * 9 "a86ak649"
DATA AS STRING * 9 "j898t14"
DATA AS STRING * 9 "a6aaa352"
DATA AS STRING * 9 "2j222176"
DATA AS STRING * 9 "a4669958"
DATA AS STRING * 9 "333k8635"
DATA AS STRING * 9 "t4269844"
DATA AS STRING * 9 "j4q54603"
DATA AS STRING * 9 "44aaa349"
DATA AS STRING * 9 "qt575413"
DATA AS STRING * 9 "aa2j2859"
DATA AS STRING * 9 "7t395648"
DATA AS STRING * 9 "k3q68251"
DATA AS STRING * 9 "7t2t2790"
DATA AS STRING * 9 "qqq33446"
DATA AS STRING * 9 "428a4879"
DATA AS STRING * 9 "36j2q434"
DATA AS STRING * 9 "69955991"
DATA AS STRING * 9 "7j5a4812"
DATA AS STRING * 9 "qq445789"
DATA AS STRING * 9 "7a69a93"
DATA AS STRING * 9 "4k979537"
DATA AS STRING * 9 "k6k73518"
DATA AS STRING * 9 "4555579"
DATA AS STRING * 9 "45a6a833"
DATA AS STRING * 9 "kaaa5307"
DATA AS STRING * 9 "4888780"
DATA AS STRING * 9 "kk2kk38"
DATA AS STRING * 9 "atjj511"
DATA AS STRING * 9 "5k325388"
DATA AS STRING * 9 "42tja353"
DATA AS STRING * 9 "66j3t611"
DATA AS STRING * 9 "a758a728"
DATA AS STRING * 9 "tjt77644"
DATA AS STRING * 9 "5jqq2898"
DATA AS STRING * 9 "9kqt2404"
DATA AS STRING * 9 "k42a2303"
DATA AS STRING * 9 "q6qta124"
DATA AS STRING * 9 "58q5j670"
DATA AS STRING * 9 "k6jtj409"
DATA AS STRING * 9 "t3333731"
DATA AS STRING * 9 "j73jk463"
DATA AS STRING * 9 "4a288452"
DATA AS STRING * 9 "79aaj41"
DATA AS STRING * 9 "2k7t715"
DATA AS STRING * 9 "7aaa7888"
DATA AS STRING * 9 "44j94286"
DATA AS STRING * 9 "8938k328"
DATA AS STRING * 9 "tkkka633"
DATA AS STRING * 9 "22jt7577"
DATA AS STRING * 9 "qqqq7683"
DATA AS STRING * 9 "6666589"
DATA AS STRING * 9 "t72j4955"
DATA AS STRING * 9 "j66j6877"
DATA AS STRING * 9 "99433509"
DATA AS STRING * 9 "9k92j776"
DATA AS STRING * 9 "jq7q278"
DATA AS STRING * 9 "a6t2q122"
DATA AS STRING * 9 "69q6a153"
DATA AS STRING * 9 "j5jq5218"
DATA AS STRING * 9 "25kaj416"
DATA AS STRING * 9 "7a47a513"
DATA AS STRING * 9 "62t261000"
DATA AS STRING * 9 "96449281"
DATA AS STRING * 9 "kktkk977"
DATA AS STRING * 9 "35642921"
DATA AS STRING * 9 "9k4k9778"
DATA AS STRING * 9 "j4244993"
DATA AS STRING * 9 "jjaaa573"
DATA AS STRING * 9 "7aa27626"
DATA AS STRING * 9 "a685t376"
DATA AS STRING * 9 "4ja9a957"
DATA AS STRING * 9 "t886t267"
DATA AS STRING * 9 "737j7538"
DATA AS STRING * 9 "999kk579"
DATA AS STRING * 9 "75kk776"
DATA AS STRING * 9 "q737q809"
DATA AS STRING * 9 "q3393901"
DATA AS STRING * 9 "2734q754"
DATA AS STRING * 9 "j2t9k216"
DATA AS STRING * 9 "89859695"
DATA AS STRING * 9 "6334335"
DATA AS STRING * 9 "7jk7k700"
DATA AS STRING * 9 "8828a765"
DATA AS STRING * 9 "29at5615"
DATA AS STRING * 9 "q838q410"
DATA AS STRING * 9 "a3235622"
DATA AS STRING * 9 "tkjkq810"
DATA AS STRING * 9 "45454224"
DATA AS STRING * 9 "77737869"
DATA AS STRING * 9 "ja9t9333"
DATA AS STRING * 9 "2772k276"
DATA AS STRING * 9 "5535a350"
DATA AS STRING * 9 "tt5qt821"
DATA AS STRING * 9 "46jkj986"
DATA AS STRING * 9 "9t8kk125"
DATA AS STRING * 9 "6jaj7595"
DATA AS STRING * 9 "74647464"
DATA AS STRING * 9 "499a4612"
DATA AS STRING * 9 "4kt7a22"
DATA AS STRING * 9 "j3233891"
DATA AS STRING * 9 "44555959"
DATA AS STRING * 9 "8kq8a271"
DATA AS STRING * 9 "33443182"
DATA AS STRING * 9 "3737327"
DATA AS STRING * 9 "88828997"
DATA AS STRING * 9 "q2q22189"
DATA AS STRING * 9 "3635a373"
DATA AS STRING * 9 "t66tt717"
DATA AS STRING * 9 "a4469207"
DATA AS STRING * 9 "2t2kt749"
DATA AS STRING * 9 "4244q90"
DATA AS STRING * 9 "9234t348"
DATA AS STRING * 9 "33tj3289"
DATA AS STRING * 9 "qaa63562"
DATA AS STRING * 9 "2a2a2199"
DATA AS STRING * 9 "j6jk7929"
DATA AS STRING * 9 "tt99j234"
DATA AS STRING * 9 "t3jq2798"
DATA AS STRING * 9 "65q66154"
DATA AS STRING * 9 "jttjt975"
DATA AS STRING * 9 "22699705"
DATA AS STRING * 9 "q6q6q618"
DATA AS STRING * 9 "99929811"
DATA AS STRING * 9 "389j6920"
DATA AS STRING * 9 "585q5852"
DATA AS STRING * 9 "a2255477"
DATA AS STRING * 9 "tjtjj30"
DATA AS STRING * 9 "k5ak5772"
DATA AS STRING * 9 "2qq3q323"
DATA AS STRING * 9 "6888j454"
DATA AS STRING * 9 "7j8k3609"
DATA AS STRING * 9 "j463j572"
DATA AS STRING * 9 "32323223"
DATA AS STRING * 9 "686j6534"
DATA AS STRING * 9 "q25j447"
DATA AS STRING * 9 "29996882"
DATA AS STRING * 9 "ttq8q944"
DATA AS STRING * 9 "42265480"
DATA AS STRING * 9 "2jq96287"
DATA AS STRING * 9 "qq868517"
DATA AS STRING * 9 "ak447994"
DATA AS STRING * 9 "8j3q3897"
DATA AS STRING * 9 "42qk5489"
DATA AS STRING * 9 "a8a88384"
DATA AS STRING * 9 "3at3a941"
DATA AS STRING * 9 "44t8t88"
DATA AS STRING * 9 "qq8qq787"
DATA AS STRING * 9 "488tj996"
DATA AS STRING * 9 "6kk66313"
DATA AS STRING * 9 "2j262764"
DATA AS STRING * 9 "k6kk5275"
DATA AS STRING * 9 "k572t893"
DATA AS STRING * 9 "7t7qq215"
DATA AS STRING * 9 "76965773"
DATA AS STRING * 9 "59575800"
DATA AS STRING * 9 "586qj309"
DATA AS STRING * 9 "qqqq4721"
DATA AS STRING * 9 "9a9a440"
DATA AS STRING * 9 "8jjjj128"
DATA AS STRING * 9 "qata6162"
DATA AS STRING * 9 "k6taq415"
DATA AS STRING * 9 "95jj872"
DATA AS STRING * 9 "9tq97319"
DATA AS STRING * 9 "2ak2261"
DATA AS STRING * 9 "t2tj2465"
DATA AS STRING * 9 "t5274195"
DATA AS STRING * 9 "q4587266"
DATA AS STRING * 9 "j97qt441"
DATA AS STRING * 9 "5238417"
DATA AS STRING * 9 "q7j77414"
DATA AS STRING * 9 "qqq6q903"
DATA AS STRING * 9 "4444j532"
DATA AS STRING * 9 "qqkqq904"
DATA AS STRING * 9 "qj46716"
DATA AS STRING * 9 "25525785"
DATA AS STRING * 9 "ata8a205"
DATA AS STRING * 9 "65542261"
DATA AS STRING * 9 "9qkkk512"
DATA AS STRING * 9 "48844231"
DATA AS STRING * 9 "jtjak99"
DATA AS STRING * 9 "qj8at571"
DATA AS STRING * 9 "68a88878"
DATA AS STRING * 9 "5353j94"
DATA AS STRING * 9 "2q33q311"
DATA AS STRING * 9 "kjj69946"
DATA AS STRING * 9 "j83a8634"
DATA AS STRING * 9 "qqt6q884"
DATA AS STRING * 9 "kk74j374"
DATA AS STRING * 9 "77474781"
DATA AS STRING * 9 "38888527"
DATA AS STRING * 9 "29457329"
DATA AS STRING * 9 "5245273"
DATA AS STRING * 9 "2k776256"
DATA AS STRING * 9 "qjqqq268"
DATA AS STRING * 9 "j24k6913"
DATA AS STRING * 9 "42k88861"
DATA AS STRING * 9 "29qqq733"
DATA AS STRING * 9 "4j546806"
DATA AS STRING * 9 "k2k98841"
DATA AS STRING * 9 "q4644697"
DATA AS STRING * 9 "44k94834"
DATA AS STRING * 9 "qaaqt830"
DATA AS STRING * 9 "j666t750"
DATA AS STRING * 9 "3t335437"
DATA AS STRING * 9 "9594t694"
DATA AS STRING * 9 "8qqq3682"
DATA AS STRING * 9 "88887269"
DATA AS STRING * 9 "j3kkq641"
DATA AS STRING * 9 "99993551"
DATA AS STRING * 9 "2k437699"
DATA AS STRING * 9 "75775710"
DATA AS STRING * 9 "5963j870"
DATA AS STRING * 9 "ttkt5582"
DATA AS STRING * 9 "2q82a439"
DATA AS STRING * 9 "kj4q9301"
DATA AS STRING * 9 "q3558152"
DATA AS STRING * 9 "32333999"
DATA AS STRING * 9 "t77tt599"
DATA AS STRING * 9 "3t6jt627"
DATA AS STRING * 9 "2j3t5560"
DATA AS STRING * 9 "2544286"
DATA AS STRING * 9 "8888k257"
DATA AS STRING * 9 "5qj4596"
DATA AS STRING * 9 "qq7aa658"
DATA AS STRING * 9 "88jj8863"
DATA AS STRING * 9 "98948202"
DATA AS STRING * 9 "2qj3j803"
DATA AS STRING * 9 "j648866"
DATA AS STRING * 9 "59559160"
DATA AS STRING * 9 "jjkk7484"
DATA AS STRING * 9 "7j223254"
DATA AS STRING * 9 "68889364"
DATA AS STRING * 9 "555j9822"
DATA AS STRING * 9 "kkaaa525"
DATA AS STRING * 9 "k75575"
DATA AS STRING * 9 "3q33a814"
DATA AS STRING * 9 "2384j587"
DATA AS STRING * 9 "kk8q2777"
DATA AS STRING * 9 "494k2426"
DATA AS STRING * 9 "2tj22507"
DATA AS STRING * 9 "qqq2q698"
DATA AS STRING * 9 "7229t954"
DATA AS STRING * 9 "jj757142"
DATA AS STRING * 9 "2882a530"
DATA AS STRING * 9 "kktqt539"
DATA AS STRING * 9 "72222621"
DATA AS STRING * 9 "99a5a736"
DATA AS STRING * 9 "22887936"
DATA AS STRING * 9 "3377q779"
DATA AS STRING * 9 "6a6j6740"
DATA AS STRING * 9 "a7aaj840"
DATA AS STRING * 9 "44jj42"
DATA AS STRING * 9 "qqtqt51"
DATA AS STRING * 9 "6666a669"
DATA AS STRING * 9 "t9279908"
DATA AS STRING * 9 "k9j7q856"
DATA AS STRING * 9 "2aaaj748"
DATA AS STRING * 9 "j3k25947"
DATA AS STRING * 9 "tt65t377"
DATA AS STRING * 9 "kk2k6752"
DATA AS STRING * 9 "k7kkk150"
DATA AS STRING * 9 "9j6j8120"
DATA AS STRING * 9 "72ak6656"
DATA AS STRING * 9 "tt6tt757"
DATA AS STRING * 9 "qq9tt412"
DATA AS STRING * 9 "3aa3j365"
DATA AS STRING * 9 "84477783"
DATA AS STRING * 9 "kk4k2591"
DATA AS STRING * 9 "ak79j654"
DATA AS STRING * 9 "j77j7951"
DATA AS STRING * 9 "q7664606"
DATA AS STRING * 9 "7qq5959"
DATA AS STRING * 9 "j2725795"
DATA AS STRING * 9 "96989417"
DATA AS STRING * 9 "7tt64387"
DATA AS STRING * 9 "47jjk91"
DATA AS STRING * 9 "228aa201"
DATA AS STRING * 9 "ajj63902"
DATA AS STRING * 9 "a5akj123"
DATA AS STRING * 9 "37q33741"
DATA AS STRING * 9 "8j358483"
DATA AS STRING * 9 "q88qq508"
DATA AS STRING * 9 "43a33340"
DATA AS STRING * 9 "q9qqq516"
DATA AS STRING * 9 "232jt148"
DATA AS STRING * 9 "666j6159"
DATA AS STRING * 9 "3836397"
DATA AS STRING * 9 "42285322"
DATA AS STRING * 9 "4q944233"
DATA AS STRING * 9 "tt4tt342"
DATA AS STRING * 9 "k8tqa566"
DATA AS STRING * 9 "kjkk2213"
DATA AS STRING * 9 "qjqjj339"
DATA AS STRING * 9 "5k932559"
DATA AS STRING * 9 "86888494"
DATA AS STRING * 9 "2qqjq70"
DATA AS STRING * 9 "7a772167"
DATA AS STRING * 9 "5659t881"
DATA AS STRING * 9 "t43a6186"
DATA AS STRING * 9 "a2q22739"
DATA AS STRING * 9 "55k95679"
DATA AS STRING * 9 "2t5qq262"
DATA AS STRING * 9 "47797419"
DATA AS STRING * 9 "52522357"
DATA AS STRING * 9 "2j734597"
DATA AS STRING * 9 "aa3q3678"
DATA AS STRING * 9 "3q9a3567"
DATA AS STRING * 9 "kjaaj813"
DATA AS STRING * 9 "k8794495"
DATA AS STRING * 9 "7jt77198"
DATA AS STRING * 9 "4kt2a564"
DATA AS STRING * 9 "55qq5497"
DATA AS STRING * 9 "5k558272"
DATA AS STRING * 9 "t2a25318"
DATA AS STRING * 9 "k58q2825"
DATA AS STRING * 9 "7kkjk628"
DATA AS STRING * 9 "6a6a7676"
DATA AS STRING * 9 "j7t96706"
DATA AS STRING * 9 "a4a96625"
DATA AS STRING * 9 "6ktq7372"
DATA AS STRING * 9 "jaaj3916"
DATA AS STRING * 9 "99699106"
DATA AS STRING * 9 "q7q77468"
DATA AS STRING * 9 "8q88j545"
DATA AS STRING * 9 "2a2j8983"
DATA AS STRING * 9 "777a7246"
DATA AS STRING * 9 "329ta546"
DATA AS STRING * 9 "3838848"
DATA AS STRING * 9 "kkkqq316"
DATA AS STRING * 9 "kkkk8460"
DATA AS STRING * 9 "33k8q77"
DATA AS STRING * 9 "a9a29691"
DATA AS STRING * 9 "8j859237"
DATA AS STRING * 9 "a9599540"
DATA AS STRING * 9 "23j67390"
DATA AS STRING * 9 "jt43j668"
DATA AS STRING * 9 "8j8jq338"
DATA AS STRING * 9 "jqqq8456"
DATA AS STRING * 9 "k9kkk129"
DATA AS STRING * 9 "8kj8k67"
DATA AS STRING * 9 "7555q169"
DATA AS STRING * 9 "9qjq9459"
DATA AS STRING * 9 "7a8q9718"
DATA AS STRING * 9 "7j765760"
DATA AS STRING * 9 "94744173"
DATA AS STRING * 9 "aa35a264"
DATA AS STRING * 9 "qkqq5423"
DATA AS STRING * 9 "a6jj9819"
DATA AS STRING * 9 "4aa44848"
DATA AS STRING * 9 "88385180"
DATA AS STRING * 9 "a4t7q259"
DATA AS STRING * 9 "7j757584"
DATA AS STRING * 9 "a96t3474"
DATA AS STRING * 9 "jjjjj42"
DATA AS STRING * 9 "9k372604"
DATA AS STRING * 9 "j333q118"
DATA AS STRING * 9 "j7a37451"
DATA AS STRING * 9 "q4447515"
DATA AS STRING * 9 "qq77q274"
DATA AS STRING * 9 "73333553"
DATA AS STRING * 9 "6747j521"
DATA AS STRING * 9 "j56k2405"
DATA AS STRING * 9 "kkjjq575"
DATA AS STRING * 9 "qt86a592"
DATA AS STRING * 9 "75a73476"
DATA AS STRING * 9 "29925295"
DATA AS STRING * 9 "a778a823"
DATA AS STRING * 9 "aaaaj580"
DATA AS STRING * 9 "tt99t636"
DATA AS STRING * 9 "qq3jq235"
DATA AS STRING * 9 "a8778244"
DATA AS STRING * 9 "k6638784"
DATA AS STRING * 9 "87q5a574"
DATA AS STRING * 9 "9949946"
DATA AS STRING * 9 "ak7q7172"
DATA AS STRING * 9 "kkk33443"
DATA AS STRING * 9 "38j88345"
DATA AS STRING * 9 "7976k58"
DATA AS STRING * 9 "59669558"
DATA AS STRING * 9 "6659j217"
DATA AS STRING * 9 "7557j143"
DATA AS STRING * 9 "5549k306"
DATA AS STRING * 9 "j3982639"
DATA AS STRING * 9 "j249a677"
DATA AS STRING * 9 "55955418"
DATA AS STRING * 9 "qqqqt7"
DATA AS STRING * 9 "77a47770"
DATA AS STRING * 9 "66k4k104"
DATA AS STRING * 9 "q9t5a976"
DATA AS STRING * 9 "2673q230"
DATA AS STRING * 9 "q75tk26"
DATA AS STRING * 9 "jkj9k225"
DATA AS STRING * 9 "9taat188"
DATA AS STRING * 9 "55jqa119"
DATA AS STRING * 9 "9q9q9385"
DATA AS STRING * 9 "24k42260"
DATA AS STRING * 9 "t9222873"
DATA AS STRING * 9 "9998945"
DATA AS STRING * 9 "88448544"
DATA AS STRING * 9 "t9784808"
DATA AS STRING * 9 "43454846"
DATA AS STRING * 9 "ta674174"
DATA AS STRING * 9 "3t3at687"
DATA AS STRING * 9 "38929561"
DATA AS STRING * 9 "22qqk912"
DATA AS STRING * 9 "kqjqq978"
DATA AS STRING * 9 "23223481"
DATA AS STRING * 9 "j7772835"
DATA AS STRING * 9 "3999q703"
DATA AS STRING * 9 "74k44280"
DATA AS STRING * 9 "4k444138"
DATA AS STRING * 9 "kj53k132"