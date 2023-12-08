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
DATA AS STRING * 96 "ddghbfour3tnfmj49bm43"
DATA AS STRING * 96 "54gggltwooneninekzkbf"
DATA AS STRING * 96 "48one8kpnfsnfflzbkr"
DATA AS STRING * 96 "chgcrmfour6two9tone"
DATA AS STRING * 96 "4pvjgzptwoqdrkjthtninesixfour5six"
DATA AS STRING * 96 "nbfbfndd4crjnsvrvmnxvp5rthlxzttzq"
DATA AS STRING * 96 "jsix5"
DATA AS STRING * 96 "gptkdhsdjz8dgpmddsfdbncgsfdzknxjrlzrcfive"
DATA AS STRING * 96 "3grpkfkczphcxdsrczr"
DATA AS STRING * 96 "rmvthreeone62bg"
DATA AS STRING * 96 "9zqt"
DATA AS STRING * 96 "four8fourone"
DATA AS STRING * 96 "two4fivem2"
DATA AS STRING * 96 "four1nseight4cvnjp"
DATA AS STRING * 96 "fivefiveeightseventzqlznsix12hxlcfk"
DATA AS STRING * 96 "chjvnmjcl7"
DATA AS STRING * 96 "one2ninetwohhmnine835"
DATA AS STRING * 96 "8ninensgmfdm"
DATA AS STRING * 96 "threemcfqntmffn43foursixtwo"
DATA AS STRING * 96 "hkkfour1"
DATA AS STRING * 96 "4fivevsnmccnstffqtmsixonefvmsbeightwold"
DATA AS STRING * 96 "cvghfqsnvp3threefive"
DATA AS STRING * 96 "1qqtbzgvjhchcxrd4tgpsstwojlvmnine8"
DATA AS STRING * 96 "2twofqxhhnmf"
DATA AS STRING * 96 "eightlpjfnkv5one2zxrtgskffive"
DATA AS STRING * 96 "fourfourninezhczvqkjcqnshzfbc9fivet"
DATA AS STRING * 96 "onefive7vtztjcpgrpb"
DATA AS STRING * 96 "9five8threebfpdtlvtrftdxcjfive4pzp"
DATA AS STRING * 96 "4eightsevenzfqkgn"
DATA AS STRING * 96 "9c547onetpztzvnnkf6"
DATA AS STRING * 96 "8threenineonettlhvhszncfznxbc"
DATA AS STRING * 96 "twofivesixn4"
DATA AS STRING * 96 "two1fpbvrbthreejxgsssrfivethreeftqdp"
DATA AS STRING * 96 "kxgmqzpxrqxnjjrfourtwonine3fivesevensix"
DATA AS STRING * 96 "6tvztdsix"
DATA AS STRING * 96 "855jftzthzltjgsixdftmtp"
DATA AS STRING * 96 "nbxtrrchtprn6"
DATA AS STRING * 96 "eightfive1"
DATA AS STRING * 96 "rnbxngxkfkksgmssqh8"
DATA AS STRING * 96 "twozcd26onefourr"
DATA AS STRING * 96 "5fivecsnpmgn"
DATA AS STRING * 96 "9mhqlbgxzqfeightfivenine6tmz"
DATA AS STRING * 96 "425zxgqm5rkvrggpkhxblkgkpgonenine"
DATA AS STRING * 96 "d73zklxbnine"
DATA AS STRING * 96 "8nineeightfive"
DATA AS STRING * 96 "czgzhvglkczxmx5four"
DATA AS STRING * 96 "nineqkcjhpgcthreeninejxpqzmxjtxoneqmzxdgrngh2"
DATA AS STRING * 96 "dthrngfour6cjfsmsqdfnfqzdxqpqtxtwo"
DATA AS STRING * 96 "onedqrjseight6mrbrnfgmj9"
DATA AS STRING * 96 "45qjdsevenlhnbgvzsjkr"
DATA AS STRING * 96 "threetwo5eightfivethree"
DATA AS STRING * 96 "onevqtfourtwo3"
DATA AS STRING * 96 "zvhtctbqnbfivesixsmtksdg8eight"
DATA AS STRING * 96 "xvlts6"
DATA AS STRING * 96 "8d8mcseven"
DATA AS STRING * 96 "1tpgzvbqsvnbhhcqtwo9sevendpzncglvl1"
DATA AS STRING * 96 "2threeseven"
DATA AS STRING * 96 "rkpffs8bmnthcx"
DATA AS STRING * 96 "one433dnqpone"
DATA AS STRING * 96 "threefive67"
DATA AS STRING * 96 "vdkmsevenfourtwodjkrdfl3oneqqfjpq"
DATA AS STRING * 96 "four1seven1vthrcfjfhjzbzvhxpfour"
DATA AS STRING * 96 "3seven5"
DATA AS STRING * 96 "5xtjnbgvr"
DATA AS STRING * 96 "1sbkcftcklnrninesixseven9trdptfive"
DATA AS STRING * 96 "six697nine"
DATA AS STRING * 96 "four9eightone6jr4"
DATA AS STRING * 96 "four5mnsnineonesevenfive"
DATA AS STRING * 96 "svxqbqjeightxph3threetctlxqbn"
DATA AS STRING * 96 "fskcnineztzxrxlfmdnp9"
DATA AS STRING * 96 "17dnd4sixdzq21ssggqvvjzh"
DATA AS STRING * 96 "4kpgmgpgseven69two73"
DATA AS STRING * 96 "nine7nvdqnrptv1threemncvtwothreenine"
DATA AS STRING * 96 "dvljgdqhsknpbhhbcptvpmlbvqtwosrsntmvjpbs3lvdtgzcndsthree"
DATA AS STRING * 96 "gseven7eight8four"
DATA AS STRING * 96 "mpvmb7rcmbjgchtwoone"
DATA AS STRING * 96 "sevenmzbqcvxrfourmjfqkqvlcmcfkcfive5"
DATA AS STRING * 96 "25rmeight6seven"
DATA AS STRING * 96 "gthxtj3rlsqxkzgxb4six"
DATA AS STRING * 96 "pfrjqrs6fivekmjkhmr3eight1"
DATA AS STRING * 96 "onefive9"
DATA AS STRING * 96 "4five1hmg7ninesixntssdbfgltcqnj"
DATA AS STRING * 96 "5dqh95"
DATA AS STRING * 96 "one5fivefour7"
DATA AS STRING * 96 "gxkq1ninetnbbmmptthreeninevhxlxkrm"
DATA AS STRING * 96 "9threecv"
DATA AS STRING * 96 "onethreefqzkz9"
DATA AS STRING * 96 "4onetwoddb2two"
DATA AS STRING * 96 "twojv8"
DATA AS STRING * 96 "m8eightcsvbjjglfxlkhr"
DATA AS STRING * 96 "1ffdndfmps3dqcz1"
DATA AS STRING * 96 "25dfgdhtdfsgp9"
DATA AS STRING * 96 "68lxlln268six"
DATA AS STRING * 96 "twothreethree26"
DATA AS STRING * 96 "six2xbfdvjdtpn5nine1ninelqpmbnvg"
DATA AS STRING * 96 "2lkhg4"
DATA AS STRING * 96 "hbxctckzsevenseven8"
DATA AS STRING * 96 "ghdmhjtjseventlb1xmjlcnslj3"
DATA AS STRING * 96 "five7threev2sevenhzndbnjfpkvcznmrtzcpxrlj"
DATA AS STRING * 96 "zqhb8"
DATA AS STRING * 96 "nrknllzbkdpxtwoccxpgninerszrdmhdbqtfbkp6"
DATA AS STRING * 96 "eightppfpmvlbvsixqjnnkzcc39eightwogx"
DATA AS STRING * 96 "ftqxlqgrdpprrkrsix1oneightp"
DATA AS STRING * 96 "sixmtrtd392lhczn"
DATA AS STRING * 96 "6three8sixseven76pgvrfb5eightwof"
DATA AS STRING * 96 "zszr2rvfnine"
DATA AS STRING * 96 "rltwoseventwo6"
DATA AS STRING * 96 "9qtsblhddtseven4six6"
DATA AS STRING * 96 "1sevenqddm"
DATA AS STRING * 96 "7ghjhklgfjrmrfqprmb2jgf6bsctzhkzx"
DATA AS STRING * 96 "rtwone6ninenine2two4one"
DATA AS STRING * 96 "3five2nine"
DATA AS STRING * 96 "two498"
DATA AS STRING * 96 "twojf3onefour2sixzxzc2"
DATA AS STRING * 96 "eightshflmonexxtbsdzvsj6"
DATA AS STRING * 96 "5fourkddmhvtbmjgkrlsevensix"
DATA AS STRING * 96 "7twosmdcftxkglpncxctbpmmhmd2sixqf"
DATA AS STRING * 96 "sixjthpkpbpqnqvrzzxcfjnlgeight3"
DATA AS STRING * 96 "8kx2"
DATA AS STRING * 96 "6twodmnkteightghnpdbcn26four"
DATA AS STRING * 96 "qzvnrncqzf11eight6"
DATA AS STRING * 96 "5fournine6kqcg"
DATA AS STRING * 96 "klvnhhpspghveightthreesix2onekvh"
DATA AS STRING * 96 "seven7vshrlkpc2dtoneightk"
DATA AS STRING * 96 "nine1twosix5one"
DATA AS STRING * 96 "four5four6fivebdkgztp5dbzddxdpc"
DATA AS STRING * 96 "75oneltfnbxsfive3"
DATA AS STRING * 96 "61ninethreerdlrjg"
DATA AS STRING * 96 "srjlctwo5"
DATA AS STRING * 96 "eightfourfive3"
DATA AS STRING * 96 "nmlkrh6eight7229five4"
DATA AS STRING * 96 "8qtqsjshzfour9skonereight"
DATA AS STRING * 96 "7cbhhxqmlveight"
DATA AS STRING * 96 "xlctdkp68nine2qfkfv"
DATA AS STRING * 96 "sevenonekjone7"
DATA AS STRING * 96 "3twothree"
DATA AS STRING * 96 "lpdxfivecqqkxshmxsghtwo4zfszfxbgffxhdhszr"
DATA AS STRING * 96 "5fnctfcp6six"
DATA AS STRING * 96 "sevenone595seven"
DATA AS STRING * 96 "onezbtwo4"
DATA AS STRING * 96 "phbbllmmhzh8btvpgjvs8"
DATA AS STRING * 96 "vrqdqksv82768rsqv"
DATA AS STRING * 96 "fivemzscrninepgtnseven54"
DATA AS STRING * 96 "5kmcsmvjqfive87xqz8"
DATA AS STRING * 96 "5sixchpxtkjbggztphrlqcjszpzmcbnone2twohjchhcm"
DATA AS STRING * 96 "lktwoneqkhrnvkone4"
DATA AS STRING * 96 "41684"
DATA AS STRING * 96 "four81qjvcjmgszfqfiveonerps"
DATA AS STRING * 96 "1two443dvjxfpzdcpseveneight"
DATA AS STRING * 96 "hkpf9seven5seven"
DATA AS STRING * 96 "seven5rtzk87"
DATA AS STRING * 96 "371hpjtkthreef8"
DATA AS STRING * 96 "2fourfour6xptbrvf71nine"
DATA AS STRING * 96 "cmhgh8drvxcrcjsz2"
DATA AS STRING * 96 "fourlfqrsxbztvjjtxggpmkmtggxfourmfive1"
DATA AS STRING * 96 "ninegssvllggld662six"
DATA AS STRING * 96 "8sevenfbthtxglsbeightonenp3qrbhtz6"
DATA AS STRING * 96 "threemjhtsbm8mdzk"
DATA AS STRING * 96 "6lgbr5fourfour4v6jhdhvkrk"
DATA AS STRING * 96 "nmseven553two4"
DATA AS STRING * 96 "bvs3twovbzthreeeight"
DATA AS STRING * 96 "mshlfpjltwo6two"
DATA AS STRING * 96 "4two7nine"
DATA AS STRING * 96 "4sixtcrcxzph9"
DATA AS STRING * 96 "8zjrrhp6kvd"
DATA AS STRING * 96 "mznthreesixglsf881seven"
DATA AS STRING * 96 "2five511hone"
DATA AS STRING * 96 "pmoneightzvrvmkrn1tkxqrcnfivecfnqxvtkxtwo"
DATA AS STRING * 96 "6gxt7fivejmdhnzxzslvqgghgfive"
DATA AS STRING * 96 "seven1one"
DATA AS STRING * 96 "8thdkltfourl5five"
DATA AS STRING * 96 "oner6fivelxsmcmsix"
DATA AS STRING * 96 "5fivezcntznpxsljzxldvqx"
DATA AS STRING * 96 "fivefivedbvdxfnvxzsix19"
DATA AS STRING * 96 "fivefive6twoqqpkh27"
DATA AS STRING * 96 "9qvpdkone"
DATA AS STRING * 96 "brvxnqdnzkztdqpbb1vxg35kstpxscninekgkmrtmrff"
DATA AS STRING * 96 "fourfourbhzgmp3sevensevenpsrndk"
DATA AS STRING * 96 "seven8dgvpxrmmthree19"
DATA AS STRING * 96 "neightwofiveeightsixjjfnllthree6"
DATA AS STRING * 96 "91threesevenpjxsixgmrzsjmz"
DATA AS STRING * 96 "4zcq23sixfourjpjtgvtnqqqdctlf1"
DATA AS STRING * 96 "crgjmshnzprnrc979"
DATA AS STRING * 96 "qsmmztjzz4eight7sevendg"
DATA AS STRING * 96 "9423"
DATA AS STRING * 96 "fivesevenseven48"
DATA AS STRING * 96 "fjrrstz4cfrxfrslvtmjpfxtkbhsjpppfkrzeight6"
DATA AS STRING * 96 "7dpfvrktp"
DATA AS STRING * 96 "z3ddjbvmcdsgddprhc3"
DATA AS STRING * 96 "bng89ninesfv2rvchkhqhz7"
DATA AS STRING * 96 "2vclrzqgnnnfour1"
DATA AS STRING * 96 "ggldndrnlkeight4seven2bcxvdzjflpdxvvgxkkzgeight"
DATA AS STRING * 96 "heightwoonetwo119l1cbvf"
DATA AS STRING * 96 "cvponeight3"
DATA AS STRING * 96 "three5mrqjbroneone1cckghmznvxnj"
DATA AS STRING * 96 "9ninembpxffcqktwo18"
DATA AS STRING * 96 "eightfour44fived1nkgpk5"
DATA AS STRING * 96 "1nine24"
DATA AS STRING * 96 "vhmdjp43seven8sevenvnsflnfx9"
DATA AS STRING * 96 "nine3fivefivesevenhklhcg"
DATA AS STRING * 96 "bjndsctqthgzone2twonev"
DATA AS STRING * 96 "sixninekznkgrjjj4"
DATA AS STRING * 96 "98fourfiveeightqgrzjkvfj3six"
DATA AS STRING * 96 "124onedjnrthpzxqmzpcnhzfour"
DATA AS STRING * 96 "threethreexfgbjpv2eighteightzdffvnmcz"
DATA AS STRING * 96 "four5dnlncmtrq5sevenfvjkh759"
DATA AS STRING * 96 "5rzsfqblznf6kxmkfcgpxfive986"
DATA AS STRING * 96 "8eightonenxpntbctcrseven"
DATA AS STRING * 96 "ksvveightsevenmgczltdvmp9"
DATA AS STRING * 96 "7zthlrqqs"
DATA AS STRING * 96 "5674mgxzdsxhmzfour6gvjtdfnqjrggkjbvc"
DATA AS STRING * 96 "nqnn9"
DATA AS STRING * 96 "1lvmcghmv"
DATA AS STRING * 96 "lrthree7sixdsdvlkl"
DATA AS STRING * 96 "threefourfourthreethreerntmpsqzb8"
DATA AS STRING * 96 "xgstwosix3"
DATA AS STRING * 96 "4jbdqxone263rzkmjpqcrkltcnrpfour"
DATA AS STRING * 96 "5eightcnrdqprxjzq"
DATA AS STRING * 96 "three32onerhjlrxrb2"
DATA AS STRING * 96 "cnzcqfour5"
DATA AS STRING * 96 "seven5one"
DATA AS STRING * 96 "five2541"
DATA AS STRING * 96 "four9bzlqpf65m"
DATA AS STRING * 96 "6ttg55gkmbbn66two5"
DATA AS STRING * 96 "sevenbxcl8eightonefour3seven"
DATA AS STRING * 96 "sixlxfhnine2njtsjtwosix3"
DATA AS STRING * 96 "3173two"
DATA AS STRING * 96 "8twosh1threepdp7"
DATA AS STRING * 96 "3zxpvtbdkfivesixeightthree"
DATA AS STRING * 96 "ctheightwobhqpfour1two9twonine"
DATA AS STRING * 96 "jmm74hrlvonestds"
DATA AS STRING * 96 "seven5tgmphz"
DATA AS STRING * 96 "4xtztkdntxfour"
DATA AS STRING * 96 "5ninettwothree"
DATA AS STRING * 96 "threernhzsk9psrkxprjkgeight"
DATA AS STRING * 96 "two9fivet8one48eight"
DATA AS STRING * 96 "58threehcgkgdxp8"
DATA AS STRING * 96 "eight2kmhz66nine"
DATA AS STRING * 96 "onenine7czjxbeight"
DATA AS STRING * 96 "dx7qbp1"
DATA AS STRING * 96 "three9onedone"
DATA AS STRING * 96 "7vmhzdjbfvnine"
DATA AS STRING * 96 "5ksnxncqsshzsixzvtgkrzrnrhltvzhqh32"
DATA AS STRING * 96 "seven66twomchrdkseven"
DATA AS STRING * 96 "86jptqljgcrtrzjg7"
DATA AS STRING * 96 "ndxxntxz9fivefnzdxjbz49gtfivenstgqbn"
DATA AS STRING * 96 "rpcfkdzlbnkvdc8"
DATA AS STRING * 96 "sevenkbslmkmfivekccclm929"
DATA AS STRING * 96 "378zrrcfrsrzpgfkdjbmsix8"
DATA AS STRING * 96 "19dtrqvzfqm5two"
