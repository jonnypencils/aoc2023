DIM I AS BYTE
DIM J AS INT
DIM L AS BYTE
DIM LN AS INT
DIM RN AS INT
DIM TOTAL AS INT
DIM M AS STRING * 1

'Arrays
DIM cal1(250) AS STRING * 96 @calibration1

SUB FINDNUMSL (TEST$ AS STRING * 96) STATIC
L=LEN(TEST$)
LN = 100  'set to an unfindable value - only required for LN
FOR I=0 TO L-1
    M=MID$(TEST$, I, 1)
    ' Test for left numeric only
    IF M="0" THEN 
    LN=0 
    END IF
    IF M="1" THEN 
    LN=10 
    END IF
    IF M="2" THEN 
    LN=20 
    END IF
    IF M="3" THEN 
    LN=30 
    END IF
    IF M="4" THEN 
    LN=40 
    END IF
    IF M="5" THEN 
    LN=50 
    END IF
    IF M="6" THEN 
    LN=60 
    END IF
    IF M="7" THEN 
    LN=70 
    END IF
    IF M="8" THEN 
    LN=80 
    END IF
    IF M="9" THEN 
    LN=90 
    END IF
        'Part 2
    IF M = "o" AND MID$(TEST$,I+1,1) = "n" AND MID$(TEST$,I+2,1) = "e" THEN
    LN=10
    END IF
    IF M = "t" AND MID$(TEST$,I+1,1) = "w" AND MID$(TEST$,I+2,1) = "o" THEN
    LN=20
    END IF
    IF M = "t" AND MID$(TEST$,I+1,1) = "h" AND MID$(TEST$,I+2,1) = "r" AND MID$(TEST$,I+3,1) = "e" AND MID$(TEST$,I+4,1) = "e" THEN
    LN=30
    END IF
    IF M = "f" AND MID$(TEST$,I+1,1) = "o" AND MID$(TEST$,I+2,1) = "u" AND MID$(TEST$,I+3,1) = "r" THEN
    LN=40
    END IF
    IF M = "f" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "v" AND MID$(TEST$,I+3,1) = "e" THEN
    LN=50
    END IF
    IF M = "s" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "x" THEN
    LN=60
    END IF
    IF M = "s" AND MID$(TEST$,I+1,1) = "e" AND MID$(TEST$,I+2,1) = "v" AND MID$(TEST$,I+3,1) = "e" AND MID$(TEST$,I+4,1) = "n" THEN
    LN=70
    END IF
    IF M = "e" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "g" AND MID$(TEST$,I+3,1) = "h" AND MID$(TEST$,I+4,1) = "t" THEN
    LN=80
    END IF
    IF M = "n" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "n" AND MID$(TEST$,I+3,1) = "e" THEN
    LN=90
    END IF
    ' End of part 2
    IF LN < 100 THEN 
    EXIT FOR
    END IF
NEXT I
    ' Left most digit found
    ' End subroutine
END SUB

SUB FINDNUMSR (TEST$ AS STRING * 96) STATIC
L=LEN(TEST$)
FOR I = 0 TO L-1
    M=MID$(TEST$, I, 1)
    ' Test for right numeric only
    IF M="0" THEN 
    RN=0 
    END IF
    IF M="1" THEN 
    RN=1 
    END IF
    IF M="2" THEN 
    RN=2 
    END IF
    IF M="3" THEN 
    RN=3 
    END IF
    IF M="4" THEN 
    RN=4 
    END IF
    IF M="5" THEN 
    RN=5 
    END IF
    IF M="6" THEN 
    RN=6 
    END IF
    IF M="7" THEN 
    RN=7 
    END IF
    IF M="8" THEN 
    RN=8 
    END IF
    IF M="9" THEN 
    RN=9 
    END IF
     'Part 2
    IF M = "o" AND MID$(TEST$,I+1,1) = "n" AND MID$(TEST$,I+2,1) = "e" THEN
    RN=1
    END IF
    IF M = "t" AND MID$(TEST$,I+1,1) = "w" AND MID$(TEST$,I+2,1) = "o" THEN
    RN=2
    END IF
    IF M = "t" AND MID$(TEST$,I+1,1) = "h" AND MID$(TEST$,I+2,1) = "r" AND MID$(TEST$,I+3,1) = "e" AND MID$(TEST$,I+4,1) = "e" THEN
    RN=3
    END IF
    IF M = "f" AND MID$(TEST$,I+1,1) = "o" AND MID$(TEST$,I+2,1) = "u" AND MID$(TEST$,I+3,1) = "r" THEN
    RN=4
    END IF
    IF M = "f" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "v" AND MID$(TEST$,I+3,1) = "e" THEN
    RN=5
    END IF
    IF M = "s" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "x" THEN
    RN=6
    END IF
    IF M = "s" AND MID$(TEST$,I+1,1) = "e" AND MID$(TEST$,I+2,1) = "v" AND MID$(TEST$,I+3,1) = "e" AND MID$(TEST$,I+4,1) = "n" THEN
    RN=7
    END IF
    IF M = "e" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "g" AND MID$(TEST$,I+3,1) = "h" AND MID$(TEST$,I+4,1) = "t" THEN
    RN=8
    END IF
    IF M = "n" AND MID$(TEST$,I+1,1) = "i" AND MID$(TEST$,I+2,1) = "n" AND MID$(TEST$,I+3,1) = "e" THEN
    RN=9
    END IF
    ' End of part 2
NEXT I
    ' Right most digit found
    ' End subroutine
    ' LN and RN are now assigned
END SUB

' Main Logic

TOTAL = 0
PRINT "working...."
FOR J = 0 TO 249
CALL FINDNUMSL(cal1(J))
CALL FINDNUMSR(cal1(J))
TOTAL=TOTAL+LN
TOTAL=TOTAL+RN
NEXT J

PRINT ""
PRINT "the total calibration value is : ";TOTAL

calibration1:
DATA AS STRING * 96 "554"
DATA AS STRING * 96 "dzlc5"
DATA AS STRING * 96 "8597six4"
DATA AS STRING * 96 "v7"
DATA AS STRING * 96 "83vrfdbksmthree3nmmrbdmpmsj1"
DATA AS STRING * 96 "4fourmcbdnrmd1"
DATA AS STRING * 96 "three8kphbvvndl"
DATA AS STRING * 96 "nineppfhcn32"
DATA AS STRING * 96 "eight7fiveeightvp"
DATA AS STRING * 96 "nine2threebvbnp8"
DATA AS STRING * 96 "435pjthreerdtf"
DATA AS STRING * 96 "9xvxxcrscx53rbblg5"
DATA AS STRING * 96 "nine2fcmjdbsrrlrvqmxhndgvgmqnhvqjm"
DATA AS STRING * 96 "56z8one5sixfive"
DATA AS STRING * 96 "threesixtwonine5eightfive3"
DATA AS STRING * 96 "1ppzmxrbrgvseven"
DATA AS STRING * 96 "2xqfoureightqflxrshthree4"
DATA AS STRING * 96 "12five91fkeightrsxgfl"
DATA AS STRING * 96 "sevennfffgrc9four"
DATA AS STRING * 96 "51ninesix5ninenineone"
DATA AS STRING * 96 "fiveeightlxqzjxcthree48one"
DATA AS STRING * 96 "sxoneightkkckxpxmhklhdcqzh7fxhjrsix5"
DATA AS STRING * 96 "1289xjht3seven5b"
DATA AS STRING * 96 "9qjjseven7ninemmsn58"
DATA AS STRING * 96 "dcspkncsffourgghhgvgc234"
DATA AS STRING * 96 "62rdlnmbfnsc8"
DATA AS STRING * 96 "khpklssix6cklksvqgqmjccffkrbcjjszhbdlm"
DATA AS STRING * 96 "qlhfqbbdg8fninedtnvpxffbj7four5"
DATA AS STRING * 96 "65sknldglkhseven5bpcvsc24"
DATA AS STRING * 96 "three41sztsmds3qxrkxgbcsnjjpgmkttjzfts"
DATA AS STRING * 96 "2fivefivenv"
DATA AS STRING * 96 "mjzfiveqsdvrllthreembzcvrjgzqqsp8"
DATA AS STRING * 96 "8rxtwoqsfdpksc"
DATA AS STRING * 96 "fivezxseventwo32nine"
DATA AS STRING * 96 "onesmfsthreezdcrsdzjf6twoksvpqtfrn5"
DATA AS STRING * 96 "sixthreetwosnine6gbjfpone"
DATA AS STRING * 96 "8six39"
DATA AS STRING * 96 "onetwoseven3bplhxvhkkzjgjdxjknjfktn7"
DATA AS STRING * 96 "xhgkqbltlxdnq51three31one"
DATA AS STRING * 96 "threekbknvpssvgtvbsevenrlkczg4gtfqpvrsmj"
DATA AS STRING * 96 "mqzdlfour7lrc3one"
DATA AS STRING * 96 "2rnthreesixsevenqtgvplzjleight57"
DATA AS STRING * 96 "ljvfrfqvlbnsm1fivebxnfgxptn6ffkhhrzmfz"
DATA AS STRING * 96 "8fourfoureightbjkcl"
DATA AS STRING * 96 "gsvshhxbqv1nhhsgjnkhjshqtwo"
DATA AS STRING * 96 "eighteighteight1"
DATA AS STRING * 96 "cxfprkbjp1psdkneightwojlf"
DATA AS STRING * 96 "eight9dgchpkgxpkrgjrclqqrd91tlvhhspzlmcpgr"
DATA AS STRING * 96 "zcjshj1twofourgsgvpljsixpmlh6"
DATA AS STRING * 96 "9cnrztv"
DATA AS STRING * 96 "qvrdxrjk5sevenbmmbrchzgthreebjhrtxgeight"
DATA AS STRING * 96 "qdfsdhthreevdx4qspvkbdtccpdljcsfq"
DATA AS STRING * 96 "onefourm9hbpvsxbqxonegtsvfltdsg"
DATA AS STRING * 96 "srssgmrhszjvkrszhktfsbmccz4tvsqxvcxpx6three"
DATA AS STRING * 96 "dxvgjmcxbmfive4zvtfour"
DATA AS STRING * 96 "vtfxpjqkfive6one"
DATA AS STRING * 96 "ctshxrjvbslhtninedfour2"
DATA AS STRING * 96 "eighteighteightseventwo5zsninesix"
DATA AS STRING * 96 "one37qfhtfpvpmmvjnpfgbkkbhgbdhdnine"
DATA AS STRING * 96 "tbeightwo2qxvttmcqonesixeight"
DATA AS STRING * 96 "btdrgxpthreenine8gq"
DATA AS STRING * 96 "1vfqvmgqvpmjrtgfqngkm"
DATA AS STRING * 96 "one13two"
DATA AS STRING * 96 "8eight2eightfiveninexfsptn"
DATA AS STRING * 96 "qlddc8"
DATA AS STRING * 96 "ninenine8"
DATA AS STRING * 96 "vtwoneb2lfj"
DATA AS STRING * 96 "3sixeightseven"
DATA AS STRING * 96 "94ctfzmjhzlpkjnbrrtoneightsrm"
DATA AS STRING * 96 "6mqkpvlf"
DATA AS STRING * 96 "trspvjctskfsbj5"
DATA AS STRING * 96 "9tlkmnndlnqpcspq4one"
DATA AS STRING * 96 "eight1three8sevenoneftrjjxhblv5eight"
DATA AS STRING * 96 "twothree4nrshvjkxvq1sevenseventwom"
DATA AS STRING * 96 "2two5sixthreedjgcfhvz4sixrm"
DATA AS STRING * 96 "ntwo5one7ninembfive"
DATA AS STRING * 96 "qgclmrksfqjcrh849"
DATA AS STRING * 96 "3twoone628five"
DATA AS STRING * 96 "5dqzjdmcninejlhqone"
DATA AS STRING * 96 "99mpmtfjbxmrjsix27four"
DATA AS STRING * 96 "sixthreeonecxvzmrm55rkx"
DATA AS STRING * 96 "5threeeightseven"
DATA AS STRING * 96 "tq8twotfgsnjctnseven"
DATA AS STRING * 96 "2nine76fourtfmqjkrdtrp"
DATA AS STRING * 96 "2lrfive"
DATA AS STRING * 96 "1sxkrpzjseveneight"
DATA AS STRING * 96 "xtbtqzvkvfourvkjjtsevenfdmsf2"
DATA AS STRING * 96 "9rlnrjhxstsixrrqcgmxr"
DATA AS STRING * 96 "vhzpsrzfive2nine76nineddkqzq"
DATA AS STRING * 96 "sloneight27ninebnfxmgfour"
DATA AS STRING * 96 "ninesprstwothree8threeklrfour"
DATA AS STRING * 96 "two7onegxqvmjvdgb1hxsjllprk"
DATA AS STRING * 96 "1six5foureighttwoeightthree2"
DATA AS STRING * 96 "5three4hfive"
DATA AS STRING * 96 "nine1oneeightlhnine5three"
DATA AS STRING * 96 "hfz7lbtffkphnvp8"
DATA AS STRING * 96 "sxp7"
DATA AS STRING * 96 "kfclfdhtplbmpzsnplmqfgnc56pgprnlkp9"
DATA AS STRING * 96 "threethreevfourfivehtxchgc1two"
DATA AS STRING * 96 "7five4five222"
DATA AS STRING * 96 "7qqnfoneprdsgj"
DATA AS STRING * 96 "457"
DATA AS STRING * 96 "fivesmgdghmfour48one"
DATA AS STRING * 96 "kkr7"
DATA AS STRING * 96 "rpqdl8fzgdg9ljnbxzdxs"
DATA AS STRING * 96 "tvmtggfnkq8fxbmgntmtffive1gbreight"
DATA AS STRING * 96 "5fcncxjb719fivepbn"
DATA AS STRING * 96 "7msvcmpknn"
DATA AS STRING * 96 "f61"
DATA AS STRING * 96 "ltzcqsf1ninebbbkzkcsix6plsp8"
DATA AS STRING * 96 "16glvnbcseven8eightdp"
DATA AS STRING * 96 "bdvgvrmpbpztjtdsqxk391"
DATA AS STRING * 96 "keight9qsqfhzgbh5zzqvtkr"
DATA AS STRING * 96 "eightone944bp187"
DATA AS STRING * 96 "9three2"
DATA AS STRING * 96 "klgsfsjgptcqz4dkd5five"
DATA AS STRING * 96 "ninesix6qbbqdnsmjd1five5fourxprrc"
DATA AS STRING * 96 "2onesevendkspzqmhjdkrvgnhqfkvh"
DATA AS STRING * 96 "eightvsgnsrbkk34four"
DATA AS STRING * 96 "czbkrztcpkctv9fhmjmm"
DATA AS STRING * 96 "dfourpjjbffbtj9eightsix4tzqnnnsqbzqp"
DATA AS STRING * 96 "sixdvmclzpfnthreefive9fourseven"
DATA AS STRING * 96 "sixninerknqqsdl3twotwo"
DATA AS STRING * 96 "fiveonefltlnpsdgmpmzqp633"
DATA AS STRING * 96 "three617six"
DATA AS STRING * 96 "ddngjtdnine8tdxcs"
DATA AS STRING * 96 "onefiveqhzxr8pftvhbhphr"
DATA AS STRING * 96 "three469"
DATA AS STRING * 96 "69mzmtjgfztwo1"
DATA AS STRING * 96 "551zbxzjfglghcmfoneseventwo9"
DATA AS STRING * 96 "4sfive55eightqnk"
DATA AS STRING * 96 "chgsglxjlmnineninesixhhqbppctqvmrslbj46dnzsmlg"
DATA AS STRING * 96 "zvgjxm1sixninebxzpbknmqh1skzqqblm"
DATA AS STRING * 96 "fourdrf28sevenfour7"
DATA AS STRING * 96 "j4zgctfmgcf"
DATA AS STRING * 96 "4t3eight3vlvgzbjlrzbdxjkthree4"
DATA AS STRING * 96 "threefournineklg4threefour5bkmxtfxtnm"
DATA AS STRING * 96 "5five9"
DATA AS STRING * 96 "svqsrqlfjhthreegnkjb1bjvsstkdc"
DATA AS STRING * 96 "gcs2nine"
DATA AS STRING * 96 "gqnsnjvpnmsllxhxstonethree5eightone"
DATA AS STRING * 96 "6fnzprvv1threefive62brhhz"
DATA AS STRING * 96 "two89xdrzrfr96"
DATA AS STRING * 96 "4ninetwotwo32zhsnzlx"
DATA AS STRING * 96 "ntwone4eightfourthreeeight"
DATA AS STRING * 96 "87rsrlb9threesixthreejjnhcnx"
DATA AS STRING * 96 "6onenine"
DATA AS STRING * 96 "twoeightfive13"
DATA AS STRING * 96 "one5bqvctcbnrdktf7qszxrxvgtfc"
DATA AS STRING * 96 "two9jtwo"
DATA AS STRING * 96 "dnsrkkdjbscltfsnonethreefive1"
DATA AS STRING * 96 "three5one"
DATA AS STRING * 96 "37dhone6one"
DATA AS STRING * 96 "eighttwo2five2643"
DATA AS STRING * 96 "7nknhfeightfour"
DATA AS STRING * 96 "nineninenine2pztjcjtsmn3one"
DATA AS STRING * 96 "7fxvql"
DATA AS STRING * 96 "gdgzvxnlkbtgkssdjrxftwo2"
DATA AS STRING * 96 "fourtwo9"
DATA AS STRING * 96 "onefoursixzeightone262"
DATA AS STRING * 96 "kjbhkp3vjvdqchhmqpnbzjxvfrgpnqzpbn6eight"
DATA AS STRING * 96 "52tpgzzbb85"
DATA AS STRING * 96 "seven4tmzv9"
DATA AS STRING * 96 "1jncptklvtwo24four38five"
DATA AS STRING * 96 "nv447oneeightznqddpvvztwo3"
DATA AS STRING * 96 "five7971bcqk"
DATA AS STRING * 96 "jdmxv6hhgstzcnvscphjbgrj1sixsxp1"
DATA AS STRING * 96 "fhrcrqzqglr7"
DATA AS STRING * 96 "15fourgvzbczonexlqzkdx4djvckdcfour"
DATA AS STRING * 96 "gbtgdlzsdvseven5five16"
DATA AS STRING * 96 "tzklvspsz33vpjd3"
DATA AS STRING * 96 "9snmndhqmtoneprpzfnsjq"
DATA AS STRING * 96 "85bvtnqqhqnbkmxkqqxzxlxqbnkh"
DATA AS STRING * 96 "8threecfnmsffphrninehjbxlc3"
DATA AS STRING * 96 "n19five9z"
DATA AS STRING * 96 "gqrqz1"
DATA AS STRING * 96 "mtmhphhspflprqgzlzgthreeggrtppdgflrrjdseven6"
DATA AS STRING * 96 "pbdfzdqbx27oneeightseven"
DATA AS STRING * 96 "rtgnhlgqpkfour3cmbmhtsr"
DATA AS STRING * 96 "26fsdgjdbsevennine9l"
DATA AS STRING * 96 "eightxxnvlvdsdttwo9"
DATA AS STRING * 96 "kthree3"
DATA AS STRING * 96 "1nckxqpkthree91"
DATA AS STRING * 96 "7bxdbjtqphs9five2nxrddxstwo"
DATA AS STRING * 96 "seven67rrvfztx"
DATA AS STRING * 96 "xkqk4ninesxfive4three6rnx"
DATA AS STRING * 96 "mnnspxdqjf3"
DATA AS STRING * 96 "zpvzzptfsevensevenseven48"
DATA AS STRING * 96 "threeonetwo1dqcgzkmdqkcdzpmqhzmm"
DATA AS STRING * 96 "sr19"
DATA AS STRING * 96 "eight9nine9four"
DATA AS STRING * 96 "cpfrzhrnfivevqdr8nine"
DATA AS STRING * 96 "4zkhhfv9"
DATA AS STRING * 96 "fjzmqgr3869"
DATA AS STRING * 96 "mnxtwone1982sixfournxvmnvzmxlqm4"
DATA AS STRING * 96 "6rg164three"
DATA AS STRING * 96 "zoneightnbbnrxclsthjboneninevkjnzhqrkvmtt6"
DATA AS STRING * 96 "eight7nnpn52"
DATA AS STRING * 96 "nine8threejrxc4seven"
DATA AS STRING * 96 "4fivetcq58"
DATA AS STRING * 96 "skqfhjbtqthree7"
DATA AS STRING * 96 "3mhlr"
DATA AS STRING * 96 "three6tzhlhgnx5ljb32nine"
DATA AS STRING * 96 "t31kxcf"
DATA AS STRING * 96 "41gdkmnf2two"
DATA AS STRING * 96 "ffsqhzmznsixtwokxjtwoeight73"
DATA AS STRING * 96 "trtcc477"
DATA AS STRING * 96 "seven1261"
DATA AS STRING * 96 "4eight8rhrvlzpmnqseven9twohpn"
DATA AS STRING * 96 "dzfffzff5fiveplhmbfnzrvphfoursix2four"
DATA AS STRING * 96 "onedmhzhhzrmtwofourfive7"
DATA AS STRING * 96 "zqmqlcrgzb2ninesevenrrdlhznhcqxsmfltworqlvzkdhqhskshjsh"
DATA AS STRING * 96 "37brxzssqonefive67"
DATA AS STRING * 96 "xkptstf98fivebdlrslpjfxtvzfour"
DATA AS STRING * 96 "oneqpsfnprzd5nine"
DATA AS STRING * 96 "6gxxvxb7"
DATA AS STRING * 96 "39two"
DATA AS STRING * 96 "nggltz4sgkdnpbvzz2nineblfff1fivesix"
DATA AS STRING * 96 "vvxrpdvbzppfour6gz3six"
DATA AS STRING * 96 "dfrdtwo3284fpntbqx9"
DATA AS STRING * 96 "1zgxhdt94vmxmfiveoneqvfjjq"
DATA AS STRING * 96 "3lrsjmr44snx"
DATA AS STRING * 96 "eightonerjhrdftxrvqkzfive4zvtqnddtwo"
DATA AS STRING * 96 "bxfive2eight"
DATA AS STRING * 96 "jjnine662nine1"
DATA AS STRING * 96 "onesixone1kknsjgzlbbrgxdbrxlpjvhtnkjbb"
DATA AS STRING * 96 "fivefive2three5"
DATA AS STRING * 96 "sixsevend5"
DATA AS STRING * 96 "6ninelfhjjfourfour24sevenxg"
DATA AS STRING * 96 "dpdvmrs7rbstcg"
DATA AS STRING * 96 "phxszdrzdfivepfkzcmhnineeight97fivecnkcxjqrf"
DATA AS STRING * 96 "7dpdbzbfxztqlrsixlzgcbctp7six"
DATA AS STRING * 96 "eight3one9"
DATA AS STRING * 96 "nineeightjpxtpltworthree2xcrk"
DATA AS STRING * 96 "xtgfive49"
DATA AS STRING * 96 "dndltvlglgtwo2seven"
DATA AS STRING * 96 "6lfxsgqzqj"
DATA AS STRING * 96 "7bqsvgzkphcmcdcpfg242lsnine"
DATA AS STRING * 96 "895bcx"
DATA AS STRING * 96 "fourzlxshjgtplrzk24xfspckjdone"
DATA AS STRING * 96 "stwonefivethreefivefdgnr6five"
DATA AS STRING * 96 "2bcsft42three7jnndsjqckmseven"
DATA AS STRING * 96 "oneqkmbqdfgljtgx3"
DATA AS STRING * 96 "bpfk4rdxqptq"
DATA AS STRING * 96 "fourfivepsqvthreejzx12pdg"
DATA AS STRING * 96 "sixsixseven53fgrvckfxtlseven1"
DATA AS STRING * 96 "9foursix"
DATA AS STRING * 96 "hvznsjjtsjdcng9"
DATA AS STRING * 96 "7szrvscmcdmrjtzcj7"
DATA AS STRING * 96 "r13bdr"
