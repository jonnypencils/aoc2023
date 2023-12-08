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
DATA AS STRING * 96 "drlpsxbscldfhj48mpxzz"
DATA AS STRING * 96 "sggmjfqffmtwo5nineone"
DATA AS STRING * 96 "1kfsttv"
DATA AS STRING * 96 "one9sqntcvldnvtrjrp1"
DATA AS STRING * 96 "hmx6mkxkxbp4oneightxgd"
DATA AS STRING * 96 "onethree845n3htlxkj"
DATA AS STRING * 96 "rqmnxsdnfeight2khvfivelzpsxpsevenqddk"
DATA AS STRING * 96 "dtrgs7onefive43"
DATA AS STRING * 96 "seven6onehvnsnlfbhbfourgcf"
DATA AS STRING * 96 "bvzqgvhzgl54"
DATA AS STRING * 96 "dshsqgmb9nine4five8"
DATA AS STRING * 96 "kqvzvbhb18"
DATA AS STRING * 96 "nbchkr5"
DATA AS STRING * 96 "fbnpvprb1gnfive"
DATA AS STRING * 96 "7tvdhmgxttwothree91cone"
DATA AS STRING * 96 "sevenvhldmzqgdrjkx64hnine4"
DATA AS STRING * 96 "72fivefour"
DATA AS STRING * 96 "xmmtbr5"
DATA AS STRING * 96 "xc6fivexplnftpkp8"
DATA AS STRING * 96 "onezh7threetwo"
DATA AS STRING * 96 "chdkkxmxrt81two"
DATA AS STRING * 96 "ktz9gnjv7ddgnbplfour"
DATA AS STRING * 96 "xzpmsqpcvf95"
DATA AS STRING * 96 "nine9qnvrzfone1threeptlxqjksbg"
DATA AS STRING * 96 "onesix9seven9tggdzxhvm5tctqmseven"
DATA AS STRING * 96 "sevenfour6pvhnmmm"
DATA AS STRING * 96 "fbvkkcvpvfive3six"
DATA AS STRING * 96 "9kzmrxmqxdp"
DATA AS STRING * 96 "seven456nine"
DATA AS STRING * 96 "6srtgpkzkhbkv392sk1one"
DATA AS STRING * 96 "qhgsrhskdrsgntbq7five15"
DATA AS STRING * 96 "nkjnhqp3nine1kkth1"
DATA AS STRING * 96 "threeninethree7cnhtvrvpmxltwohbkznkpmmq"
DATA AS STRING * 96 "fvnbvcxtjfx5fourninejlzbgztg"
DATA AS STRING * 96 "nine1twoseven5fxxjtrtnchsgggbszkpr"
DATA AS STRING * 96 "16rkgclhpfive7fiverzgqdfczh"
DATA AS STRING * 96 "six6fournnfhseven34"
DATA AS STRING * 96 "3vspnbvfqnjdbsthree7sqhrjpdllxmmt"
DATA AS STRING * 96 "zxptrvxqfivenqbtlzdgrd59"
DATA AS STRING * 96 "twosnzvbxmfk4sgpcgthree2threeqtnjp"
DATA AS STRING * 96 "fourthree3dmxhninellfive5mnllrzm"
DATA AS STRING * 96 "three8seven549fournrxpnjrhvt"
DATA AS STRING * 96 "9gdfflxhmhpsix895xbptvxp"
DATA AS STRING * 96 "1fivefour4two7"
DATA AS STRING * 96 "seven5rkmrc8six9oneights"
DATA AS STRING * 96 "hgbrl1svqnlneight6"
DATA AS STRING * 96 "7zzbvnzsix26zkftwo3"
DATA AS STRING * 96 "two4745three65seven"
DATA AS STRING * 96 "six3three458sixtwofour"
DATA AS STRING * 96 "fourjnine4"
DATA AS STRING * 96 "9nine6"
DATA AS STRING * 96 "twopnxcfourpfstqln7fzvtvtn"
DATA AS STRING * 96 "four5nineqfhkstftjfives6threeptcn"
DATA AS STRING * 96 "qqkzslhpjkmrtm7nine"
DATA AS STRING * 96 "fourhjxklxxqxmfgvjsnsczxfrxcgqmcjlndsqhtwothree6fltvvq"
DATA AS STRING * 96 "eight3mq9gdtmlm"
DATA AS STRING * 96 "nineseven422"
DATA AS STRING * 96 "4fourlthreeoneightjb"
DATA AS STRING * 96 "3vccbrlshrgpcgjrpgfj"
DATA AS STRING * 96 "5rrvzchsp2seventwo2"
DATA AS STRING * 96 "four1gtrdkmzkl3"
DATA AS STRING * 96 "ksvdqxpsdfveight6szgjsdzpxqzlheightone"
DATA AS STRING * 96 "threesevenfive9onefgfive95"
DATA AS STRING * 96 "76hztsngfour4twodzcjshdqxkfive1"
DATA AS STRING * 96 "eighthffxm8mzsktlthreelhhfdkgcptkl"
DATA AS STRING * 96 "6922two51lvzrhvfour"
DATA AS STRING * 96 "fivesix3tvvkhmsqm9"
DATA AS STRING * 96 "38g"
DATA AS STRING * 96 "four3fqx1zkxvlsmqstwo"
DATA AS STRING * 96 "468845sevendrhkfqrsk6"
DATA AS STRING * 96 "gmxdrbkb9zrxqpfvgjqjprdpgtwovtwofour4"
DATA AS STRING * 96 "dlzgv6two8eight"
DATA AS STRING * 96 "one2ninefoureighttwo8"
DATA AS STRING * 96 "ltrstvmcc2jnmvmdc"
DATA AS STRING * 96 "m22six"
DATA AS STRING * 96 "5jsbzptglftwonvzccxhrcj"
DATA AS STRING * 96 "2vcfivednhldrhdonef1"
DATA AS STRING * 96 "1fourpxnpbmglfseveneightqkfour"
DATA AS STRING * 96 "vqxz6bzfcpmpsmq67gthree"
DATA AS STRING * 96 "five3onesixqxv"
DATA AS STRING * 96 "81twoonenineeight"
DATA AS STRING * 96 "vcpjcrsnbtzbz1rkhl"
DATA AS STRING * 96 "rgzhqsix4twofljjzpkm"
DATA AS STRING * 96 "gzhn139twoseven2lrtwo"
DATA AS STRING * 96 "l4ninehzsnine7hxjtb"
DATA AS STRING * 96 "cszmdjlpxgonesix2sevenseven"
DATA AS STRING * 96 "2jdqxpt"
DATA AS STRING * 96 "nbcfc6lpfourfivecnklxnsq3"
DATA AS STRING * 96 "kqrvrvmk41threenineeight23six"
DATA AS STRING * 96 "ttpjhz65three3three"
DATA AS STRING * 96 "eight7one5twoonesix9"
DATA AS STRING * 96 "sc89four71"
DATA AS STRING * 96 "tss2qprfour"
DATA AS STRING * 96 "47eightdpdcbjbkmxbssnrslqzthreelsqtjm7"
DATA AS STRING * 96 "ltv5twombc7"
DATA AS STRING * 96 "cs6758nsmgss"
DATA AS STRING * 96 "5mzbrvlct"
DATA AS STRING * 96 "rzggbmgfrmfqfsglkbtzmfour6fivebgnxlkhhvz8two"
DATA AS STRING * 96 "jblbqgzc8sdctvcgjfouronedjvhthree"
DATA AS STRING * 96 "41six9sfvv3four8"
DATA AS STRING * 96 "fqrvpnine8"
DATA AS STRING * 96 "kqdkzneight595three881"
DATA AS STRING * 96 "two2xj23six5"
DATA AS STRING * 96 "xpvhl74lqhjbdxgsznjf7five7"
DATA AS STRING * 96 "qlf44fxjxj62"
DATA AS STRING * 96 "fivegvvsscthreeone6239one"
DATA AS STRING * 96 "6oneeightcnhmps2twosevensixvqj"
DATA AS STRING * 96 "7stbrlvjmc"
DATA AS STRING * 96 "23lfxjhfpnqhnine3gdjqfjmthreehrgfk"
DATA AS STRING * 96 "hkgjjmdsix2tczq516qm"
DATA AS STRING * 96 "6eight14"
DATA AS STRING * 96 "3onegnsxqf"
DATA AS STRING * 96 "qf31eightsevenz"
DATA AS STRING * 96 "cfsslclscsfgfbdpdzzknine3"
DATA AS STRING * 96 "5mzlfdgsvc3sjztcjmrd"
DATA AS STRING * 96 "zcrjglqhkgzh6nvxpbdmsh"
DATA AS STRING * 96 "three93eightmvscdpvrbsjh"
DATA AS STRING * 96 "cfour2"
DATA AS STRING * 96 "3fivefive3four63"
DATA AS STRING * 96 "sevensixnineeightgztgcldrf66one"
DATA AS STRING * 96 "qqvxmvqtdpnrzxzt8"
DATA AS STRING * 96 "onezzrgqzh8cflqzgpqhrgr"
DATA AS STRING * 96 "3fourvnxxllj3three4"
DATA AS STRING * 96 "seventwo54threemppbvtpsix"
DATA AS STRING * 96 "nhchm9dtkbpkbtwonbfnjfgctwosevenlvxvvtlmzptzpc"
DATA AS STRING * 96 "pkdtwo7five"
DATA AS STRING * 96 "sixvr5jhzzvl9three66three"
DATA AS STRING * 96 "eightfour5558h9"
DATA AS STRING * 96 "6foursevennc"
DATA AS STRING * 96 "1knskl"
DATA AS STRING * 96 "fourrnncfssxeight8lvknmmsixnxdjbcsgmfour7"
DATA AS STRING * 96 "85nhxggnbprbpnfrkjf"
DATA AS STRING * 96 "twotwo84eight7hmxsvseven"
DATA AS STRING * 96 "xpjzvvjt4threepslbkml"
DATA AS STRING * 96 "foursevenszone19"
DATA AS STRING * 96 "tvjbkvqzdffour63gfnmkmdzzjn"
DATA AS STRING * 96 "jzln78l6phtndcgseven"
DATA AS STRING * 96 "6bgqscglgsninefour9nine"
DATA AS STRING * 96 "blninetwoeight3"
DATA AS STRING * 96 "twoqlmkmdgvk1kqlfmvnrphcssq2one"
DATA AS STRING * 96 "twoqpxzxvdnsxrksnhvbj6nine47"
DATA AS STRING * 96 "zlmn8n839nspkrvxxkbl"
DATA AS STRING * 96 "one11"
DATA AS STRING * 96 "3seven68"
DATA AS STRING * 96 "3sevenjlvjf1j"
DATA AS STRING * 96 "vjjtb4jkggqhheightninefivevrshccfk4"
DATA AS STRING * 96 "eight77lv3threecxzxxsbzlr"
DATA AS STRING * 96 "73tnbpzvgnrgh"
DATA AS STRING * 96 "53twoeighteightthdxsf4"
DATA AS STRING * 96 "1vrcmrj"
DATA AS STRING * 96 "1seven5tvmhzxsldbnine9onethree3"
DATA AS STRING * 96 "two3nine1fournng"
DATA AS STRING * 96 "5two2"
DATA AS STRING * 96 "dsvj9sixseven"
DATA AS STRING * 96 "7tcckcrmhdx55"
DATA AS STRING * 96 "6sevengsmxeightfive5seven"
DATA AS STRING * 96 "eightmdj1"
DATA AS STRING * 96 "sevenfourtwotwo66six"
DATA AS STRING * 96 "threejmgvv6three5rtpqnt"
DATA AS STRING * 96 "fmrkcmdbggxxm7two"
DATA AS STRING * 96 "eight5four6twotwo"
DATA AS STRING * 96 "qckktvninedjj13nrdtmcscsmlrpl4"
DATA AS STRING * 96 "9bstmqqmdfmhzlbsfpfivetwovffcqtpjbkntnv"
DATA AS STRING * 96 "kj63foureightfoursix44"
DATA AS STRING * 96 "qxsrsfvj9oneonefour2mblthree"
DATA AS STRING * 96 "gthffbrrbhfzsq4"
DATA AS STRING * 96 "dflchfive5xgpcsfcksl"
DATA AS STRING * 96 "twoeight7pbt"
DATA AS STRING * 96 "7pnjqhtmfsbmpplsixthreezfcqpvfourtwoner"
DATA AS STRING * 96 "rfourhrv2fiveseven"
DATA AS STRING * 96 "1ggzvninenqrhbdpqnxsixmvsevenrcsqptdl"
DATA AS STRING * 96 "two7bmxpmhhx"
DATA AS STRING * 96 "tfsprzdnineqfourtwo87"
DATA AS STRING * 96 "9n89three3eight"
DATA AS STRING * 96 "8xrbvvgfqz"
DATA AS STRING * 96 "onefourttdlbrjcf2smrsfbtrfourdsnbgzcgqbkb"
DATA AS STRING * 96 "hxkktcf9"
DATA AS STRING * 96 "sixsevenqmfs6rdzthree"
DATA AS STRING * 96 "64nine"
DATA AS STRING * 96 "seven9pxmlbdd5seven"
DATA AS STRING * 96 "kxvlrzhhgtxnnhg5lnrjqqxjsixkmnxxthrees"
DATA AS STRING * 96 "tscnzpglccjqhz1mqtqvkgl"
DATA AS STRING * 96 "vfdqx6sixsix"
DATA AS STRING * 96 "3nine3"
DATA AS STRING * 96 "mdfsxsx3fiveone39seven8five"
DATA AS STRING * 96 "lsrsbqkvfxrvlr68fourgzsrvpone"
DATA AS STRING * 96 "oneonethree74"
DATA AS STRING * 96 "eight3rxxjkm"
DATA AS STRING * 96 "sz5"
DATA AS STRING * 96 "3r7sevensevenx3"
DATA AS STRING * 96 "jzrhnqdthree6661"
DATA AS STRING * 96 "six1pcknpvv"
DATA AS STRING * 96 "qlxvsixonehbdfsxvhsevenzqcdrvk421"
DATA AS STRING * 96 "27six2sixjqctbbfv5"
DATA AS STRING * 96 "6fiveeighttwo"
DATA AS STRING * 96 "mcclrxlpqhvhkptbsrrrsgbdzq6one"
DATA AS STRING * 96 "9fiveghrrhtqnmhtwoonenine"
DATA AS STRING * 96 "9lb"
DATA AS STRING * 96 "3hbvtsnqtksevenone8mlftbqjcdxtqkfive"
DATA AS STRING * 96 "vvqgkbj2fivedt"
DATA AS STRING * 96 "threefive47"
DATA AS STRING * 96 "drmjdqbg37"
DATA AS STRING * 96 "qvzqtbqpkktnjj83eighthrcvdxppone97"
DATA AS STRING * 96 "mdxxvhtmxninerzqnkmkj8eightsixfivex"
DATA AS STRING * 96 "kkhclsffivefour7two"
DATA AS STRING * 96 "4mzhlxrcsm38twotwo"
DATA AS STRING * 96 "lcmpj3nine7"
DATA AS STRING * 96 "fourbpgqn1tworsknxlqdl8zzdlxpgx"
DATA AS STRING * 96 "nine8eightsevensixkztqszjr9"
DATA AS STRING * 96 "fourfive5jhgpcxmqpr41two"
DATA AS STRING * 96 "fgjfpxkbszsdkbrzmpronecxzhhcsixonegmkppllnd2"
DATA AS STRING * 96 "five2853"
DATA AS STRING * 96 "zszgxvdtq3three"
DATA AS STRING * 96 "5tkvc5twosixspzhdfourninestpsj"
DATA AS STRING * 96 "1sevenoneeightlbxskgvpft"
DATA AS STRING * 96 "ptcfnjgchx1"
DATA AS STRING * 96 "8mfeightqrqrhvfsb18nnlcc9"
DATA AS STRING * 96 "nineltnphnvhpvrxbfc1"
DATA AS STRING * 96 "tcvmnphpmthree56rx"
DATA AS STRING * 96 "99rsvrmxbgxtjtclnbbmb8sixone3"
DATA AS STRING * 96 "sevenvfjzctwoqjqmvjrdxpxzsfour5"
DATA AS STRING * 96 "3d2nhtrhbtfourgsml"
DATA AS STRING * 96 "9672seven"
DATA AS STRING * 96 "zttst57zkbjlrmr"
DATA AS STRING * 96 "455six8fivehqthdfmjfgc"
DATA AS STRING * 96 "5sevenkgsmclonedvgzqfkgjtwo4"
DATA AS STRING * 96 "sixsixjkv6nqdhrlkr"
DATA AS STRING * 96 "qxjbsevenlp56"
DATA AS STRING * 96 "one13tpbhsixfive8jbt"
DATA AS STRING * 96 "6five8nnqlcbvmb7"
DATA AS STRING * 96 "2three1jlghgbzxz751"
DATA AS STRING * 96 "ninevktrhnf71one4l"
DATA AS STRING * 96 "13foursixqcrzsrrffknfive"
DATA AS STRING * 96 "2crb2"
DATA AS STRING * 96 "1mjmxsvnb3eight"
DATA AS STRING * 96 "eight517feightmxl8"
DATA AS STRING * 96 "one1threeeight76rcmkskpvmrz"
DATA AS STRING * 96 "onethreecqnczs8tdfiveeightthree"
DATA AS STRING * 96 "fourtwo15nine1"
DATA AS STRING * 96 "1rxfour4xjzdfgqsixmjvvzfnh6m"
DATA AS STRING * 96 "zvcfive2eight5hghsix19"
DATA AS STRING * 96 "3nxlmh448two899"
DATA AS STRING * 96 "three98oneightzn"
DATA AS STRING * 96 "3fourtwozszhmcp"
DATA AS STRING * 96 "twopvhd73"
DATA AS STRING * 96 "oneqdlsb7sixllszjbceight"
DATA AS STRING * 96 "xmqxqsixpgclxldnvlzvjm7nine4"
DATA AS STRING * 96 "fourfive4tttldbmmkxvhqrmvmrkpxfzbd7"
DATA AS STRING * 96 "44two1"
DATA AS STRING * 96 "eightrtsjszc2"
