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
DATA AS STRING * 96 "gtlbhbjgkrb5sixfivefivetwosix"
DATA AS STRING * 96 "ninesixrgxccvrqscbskgzxh6cpvpxsqnb6"
DATA AS STRING * 96 "dxxzrlzkksfsffp4"
DATA AS STRING * 96 "sbzvmddhnjtwollnjv33d2lbcscstqt"
DATA AS STRING * 96 "88xpnfpb"
DATA AS STRING * 96 "ninevct4cpdvqfxmspbz9xrvxfvbpzthreesfnncrqn"
DATA AS STRING * 96 "mqsxzsglbtmsbltrbzkbrt23"
DATA AS STRING * 96 "seven16ninefc"
DATA AS STRING * 96 "8jdddctvxs3"
DATA AS STRING * 96 "fivennhhdfpmrnpjhdm2sixkrsgdt"
DATA AS STRING * 96 "2bgkccmp2khbhmptwogsz"
DATA AS STRING * 96 "rrddms473xcjrtsdnhp4"
DATA AS STRING * 96 "two7eighteight29"
DATA AS STRING * 96 "onek3three8lpfcfivenxpkhbvdm"
DATA AS STRING * 96 "spcdsstlkr7fone1"
DATA AS STRING * 96 "9ninejcngjshghz"
DATA AS STRING * 96 "six78fivethreesix7fivetwo"
DATA AS STRING * 96 "nine17bsrfbzpcr"
DATA AS STRING * 96 "1qcdtzzfdpbcshjsjdmgsix"
DATA AS STRING * 96 "fourtwosix3one"
DATA AS STRING * 96 "26rqmtqznds"
DATA AS STRING * 96 "fivefour4kmgtsplpvvvhspsjrsxqjmzmb"
DATA AS STRING * 96 "fourone1pfjsxxprgxszsmg64nine"
DATA AS STRING * 96 "78four"
DATA AS STRING * 96 "sixvrxzf8mthh"
DATA AS STRING * 96 "three819"
DATA AS STRING * 96 "eightnqzrshnbf7gxpndlncztwonztq"
DATA AS STRING * 96 "szsvltgsc1onecccbfour3oneightfh"
DATA AS STRING * 96 "vjdbqpninepqhlbcj61sixnine"
DATA AS STRING * 96 "2dbpnlhxtdninesix896sevenj"
DATA AS STRING * 96 "6fiventhree6"
DATA AS STRING * 96 "four7xfour"
DATA AS STRING * 96 "jlnine6cqtdltpxt4"
DATA AS STRING * 96 "sevencplmbvshm5flzlqxlbjjcrfxv18fivebpscblpj"
DATA AS STRING * 96 "fourfourfjft3three5"
DATA AS STRING * 96 "3tgsppcfpk"
DATA AS STRING * 96 "seven48xcgqcfhnvc"
DATA AS STRING * 96 "twofive619hdbghs"
DATA AS STRING * 96 "4xppxkgpng4mttgskp8gxnzsfivethree"
DATA AS STRING * 96 "zbmzpstjf6znpflg"
DATA AS STRING * 96 "onefour9sixseven6"
DATA AS STRING * 96 "327vjsevensfcgdbdeight"
DATA AS STRING * 96 "hftcndxpnine7"
DATA AS STRING * 96 "9onert32m5"
DATA AS STRING * 96 "bfdkjxcp56"
DATA AS STRING * 96 "v4vqpstmlhtt"
DATA AS STRING * 96 "pjb5fivemonepcfc"
DATA AS STRING * 96 "cjftpgfive61five"
DATA AS STRING * 96 "7ffjkxkbnqfninevhnnbp"
DATA AS STRING * 96 "xcqkcbfv9xffn2six59"
DATA AS STRING * 96 "nine4ssixvlrzjsrqvkg5"
DATA AS STRING * 96 "seveneight74ljmjfthree33"
DATA AS STRING * 96 "hdgsbjdsixtwo7chczjk"
DATA AS STRING * 96 "kkrpsbqmkkpmq4two9"
DATA AS STRING * 96 "sg1kllqqfpbrcvgf43"
DATA AS STRING * 96 "5one5threethreefoursevenoneljddmkss"
DATA AS STRING * 96 "cjcvnxone47eight6five"
DATA AS STRING * 96 "ghqqmsxnconetrhqrq3sixsix"
DATA AS STRING * 96 "sixfourg3"
DATA AS STRING * 96 "ndlnhscmrx53six58"
DATA AS STRING * 96 "xmktfbmqdgndhcvbpb93trvgv"
DATA AS STRING * 96 "52"
DATA AS STRING * 96 "7twobkgsntslhthreeqttvx1six1v"
DATA AS STRING * 96 "kfreightwoonebbhqnqdfdkvgbcx5"
DATA AS STRING * 96 "ninesixnineqzgzgzhdjsix8"
DATA AS STRING * 96 "four7eighttwo6"
DATA AS STRING * 96 "2pnine7"
DATA AS STRING * 96 "6seventhree"
DATA AS STRING * 96 "five4four6"
DATA AS STRING * 96 "2twozbsqkgkmfive62"
DATA AS STRING * 96 "one9bkbnnineninempsqszz"
DATA AS STRING * 96 "two9jzgzbtwonef"
DATA AS STRING * 96 "8txvhbm5qpcvgkdfvg1hzmvcprvs"
DATA AS STRING * 96 "threeeight52"
DATA AS STRING * 96 "five3qbhtfpkcvn4nine4"
DATA AS STRING * 96 "9vrqkdrkl12jdsfpsg69"
DATA AS STRING * 96 "seven757two12bxv"
DATA AS STRING * 96 "njnrmxbpvfourskvbp2sixthreexqstpvxjss3four"
DATA AS STRING * 96 "ninejfvfsp6twoness"
DATA AS STRING * 96 "22rcfzrbpbgq5twoone3four"
DATA AS STRING * 96 "rktqjcbz53five9foureight"
DATA AS STRING * 96 "pcjbdlsix5threeonepdvsevenone"
DATA AS STRING * 96 "oneonenine2hxpmqckdrftktntwo"
DATA AS STRING * 96 "7four92"
DATA AS STRING * 96 "qxgfxkxkkf6hqbnsg4sevenninebvpjdnnrone"
DATA AS STRING * 96 "ckpf2five7six"
DATA AS STRING * 96 "three27rgsthreeseven"
DATA AS STRING * 96 "19jztwo6vninevmds"
DATA AS STRING * 96 "eightcdtwo7"
DATA AS STRING * 96 "1c8kdqkrgjfour33zp"
DATA AS STRING * 96 "jxsdh8eightwoffl"
DATA AS STRING * 96 "sljxsjgvqfive4drrdlbbcrsthreesevenqktkjkrfrzv"
DATA AS STRING * 96 "pfjd5sevenfiveseveneight"
DATA AS STRING * 96 "fivesgzvngjfvz9eight"
DATA AS STRING * 96 "three99jrscbrhkczxdbtqqrfdtxh"
DATA AS STRING * 96 "bzhbbpkpbrqvhjmgsqq72eightwod"
DATA AS STRING * 96 "seven88"
DATA AS STRING * 96 "3msvninelbhvqhfj871"
DATA AS STRING * 96 "33sevenfn"
DATA AS STRING * 96 "49nineseveneightfive"
DATA AS STRING * 96 "7ttsfxbkjqonenbkrsdthreeqbp"
DATA AS STRING * 96 "cqjxgppqn2746one"
DATA AS STRING * 96 "six1vthdh"
DATA AS STRING * 96 "nbchjfgzmplxlrrtprkvhxmqdp4rdckh"
DATA AS STRING * 96 "two5six4four"
DATA AS STRING * 96 "four7lvttsbdj5"
DATA AS STRING * 96 "4six9tnnsj"
DATA AS STRING * 96 "four4seven4svfm6zg"
DATA AS STRING * 96 "7threefive"
DATA AS STRING * 96 "twoqbxzxglsevennxsqpkpneightlxzndhmfourthree6"
DATA AS STRING * 96 "nine5ldqdknsjsncbjmkmlpx"
DATA AS STRING * 96 "jpngl7668"
DATA AS STRING * 96 "sevensixffour6"
DATA AS STRING * 96 "689oneeightthreekrkkgjtcvh"
DATA AS STRING * 96 "97szfivekptsgppfmbseven3seven"
DATA AS STRING * 96 "gchqxphzf7threebzglvjsxxteight"
DATA AS STRING * 96 "4onefour46kn9five"
DATA AS STRING * 96 "bqncvpx25sjlnhdlm39"
DATA AS STRING * 96 "69mnbns"
DATA AS STRING * 96 "1ffhnnhs2mftxnfcdhtdntbxjmeight5"
DATA AS STRING * 96 "7nhmmbnxglndmg9ninefivetbkjkv"
DATA AS STRING * 96 "six7feight"
DATA AS STRING * 96 "7eightfourgtcj"
DATA AS STRING * 96 "4seven7six8gdjpxl14pgfkfmms"
DATA AS STRING * 96 "8mvrzktbvhrblflvndvksjkthree8"
DATA AS STRING * 96 "9hcj"
DATA AS STRING * 96 "eightfoursevenngssddrstz8nineseven"
DATA AS STRING * 96 "pdbffvgqsnmzgccnhmzpxcnctkqqpzx1"
DATA AS STRING * 96 "onegsrzht7ghgmkbrdzvhd"
DATA AS STRING * 96 "gvkjggsrmzfive1"
DATA AS STRING * 96 "2dvdxtgqpdvccfiveck2ninectrcnkdcm"
DATA AS STRING * 96 "onexjbpzznnv21sixsevenrnshz"
DATA AS STRING * 96 "5oneqqq372bhzbgpltwofive"
DATA AS STRING * 96 "1xzhlgkgnmmqbtlkflvlrhrhkpglgsix"
DATA AS STRING * 96 "sixsixnjjrncqqrpbkfour338mztvsxl"
DATA AS STRING * 96 "rvthjblx55kjqvnlhgkf7sevensixpbd"
DATA AS STRING * 96 "9vfqfdrkeighttqmclffive6"
DATA AS STRING * 96 "four6fourhtspfivefourcmzhkfive"
DATA AS STRING * 96 "sn2one"
DATA AS STRING * 96 "9ninefour7"
DATA AS STRING * 96 "xoneightnineoneltpvkzfvpqhxszqmv3hthtn"
DATA AS STRING * 96 "4fivegqdgkknineonelfg"
DATA AS STRING * 96 "rzxkqbpsp32ndhgqjjonelp"
DATA AS STRING * 96 "three6chvkhhzrjttconethree"
DATA AS STRING * 96 "xsmdhzsfgrmhseven6eightndcpgrrfjsix"
DATA AS STRING * 96 "pkdqlfive7oneonendgtdjtwo"
DATA AS STRING * 96 "8dpfqfour6onenqmfxhrmsx"
DATA AS STRING * 96 "four854hcdzjv"
DATA AS STRING * 96 "ninemg8xm5gftwovnn"
DATA AS STRING * 96 "5ptkfjdrkmdtvkgpnsixtwo2"
DATA AS STRING * 96 "qmseven2"
DATA AS STRING * 96 "27khblcrxdmzjxrqcsgrlninejbjg"
DATA AS STRING * 96 "4ftzjmgzgninenine"
DATA AS STRING * 96 "six78seven"
DATA AS STRING * 96 "3three7dndseven"
DATA AS STRING * 96 "qbtgsxbfour9sevenfour2ktlnsthhsznine"
DATA AS STRING * 96 "59eight"
DATA AS STRING * 96 "xdmbrqpgdqxrrtxcmrdstq2jrtfktzr4five"
DATA AS STRING * 96 "2kkpdpmrjh1xvmnkbkqgxthree"
DATA AS STRING * 96 "9threefour9drjzhjfdbnineeightwofc"
DATA AS STRING * 96 "eightknfgls6ztjtxmgvmeightfggfdcfjnf"
DATA AS STRING * 96 "7hkbnqkf23"
DATA AS STRING * 96 "hjjmdpxztwoseven9three"
DATA AS STRING * 96 "qp6two2"
DATA AS STRING * 96 "vxlkhqtwoggcgcvnhdrfds19"
DATA AS STRING * 96 "four2sevenseventdpjtfnine"
DATA AS STRING * 96 "24nine79kvzjnnf"
DATA AS STRING * 96 "t23cbtmfour"
DATA AS STRING * 96 "fourkksztczpgthree2gr56"
DATA AS STRING * 96 "57sixnineeightjdqvbtsrfj6"
DATA AS STRING * 96 "sixsdlhnldk6seven5zncgtctrrhczbnrqs31"
DATA AS STRING * 96 "8onefour"
DATA AS STRING * 96 "mtfzxxlpnqt3mnrsrfscgm"
DATA AS STRING * 96 "two2bdxjzbfxzblbzzdfive"
DATA AS STRING * 96 "five67tdmxgmfxbseven2twoeightgcrbz"
DATA AS STRING * 96 "zsstjzljxbzrgt5eightfcpkzsths8"
DATA AS STRING * 96 "twosevenbgfxdvkloneqffplfive7"
DATA AS STRING * 96 "rnkoneight1bvvhkd"
DATA AS STRING * 96 "sevenonebrnq4"
DATA AS STRING * 96 "zrxlcfxkckk57nbvls7"
DATA AS STRING * 96 "99cjnj3brlnvrfqjgtwo6"
DATA AS STRING * 96 "6lx8srsflntthree"
DATA AS STRING * 96 "rzvgnfdzrt36f4nine6"
DATA AS STRING * 96 "fourmtonehlngpjvfhjfzmbdznpp8"
DATA AS STRING * 96 "7seven28xrmr"
DATA AS STRING * 96 "93sevennine43seven"
DATA AS STRING * 96 "mnnqqsixsvdpqk9fpzd"
DATA AS STRING * 96 "zdpvcmcjq23"
DATA AS STRING * 96 "82five1jpbldxgglcsqseven9"
DATA AS STRING * 96 "two7rx9seven3"
DATA AS STRING * 96 "3tcnxsevenninefoureighttwo"
DATA AS STRING * 96 "83sevennnjjjzsdzlx5ninexns7"
DATA AS STRING * 96 "1seven4"
DATA AS STRING * 96 "kczs59ksfnjzthree"
DATA AS STRING * 96 "93zsjzjn6862pdgfxqmghcrg"
DATA AS STRING * 96 "threethreeqntmqqm1fqgrxdlzlrzp2"
DATA AS STRING * 96 "xxroneightonefive6vjmqbr2fjdtxhjk"
DATA AS STRING * 96 "2vlxfvqtd"
DATA AS STRING * 96 "9vdhdvgllhvjthvvmg"
DATA AS STRING * 96 "khvlqone77seveneight"
DATA AS STRING * 96 "eightfourjkqfzblbr7dpkgdgm"
DATA AS STRING * 96 "zdddkdnineseven6vzmsqrninetwo"
DATA AS STRING * 96 "dcspvl6brpdhqrrxrds3sxgvdlxrfhvh36"
DATA AS STRING * 96 "twosevenv7lxtmxlrsdzqvcrtkdrxs"
DATA AS STRING * 96 "mjjdznk4pgkrjppqr1f"
DATA AS STRING * 96 "jtwonenhv4rml36bdqgbbgvzqbksrlqnxone"
DATA AS STRING * 96 "twottz9eight"
DATA AS STRING * 96 "thtzc9fivetwoeight87blggcsbk"
DATA AS STRING * 96 "eight2seven"
DATA AS STRING * 96 "xlbbchh6"
DATA AS STRING * 96 "332ponesjqxnnftj"
DATA AS STRING * 96 "821pgvbsbq9"
DATA AS STRING * 96 "4seven1smptmjbfsztwo6eighttwotwonevcv"
DATA AS STRING * 96 "fourvkjmrhgxqnztkdgj2four"
DATA AS STRING * 96 "xtjrp7bsmdmlvpmjfive"
DATA AS STRING * 96 "1ninesmtxnv"
DATA AS STRING * 96 "tzkl385gjsixtwosix"
DATA AS STRING * 96 "6xckhjxhsgq3fourbxtfseven3"
DATA AS STRING * 96 "rjcrvbsxlq84eightseven"
DATA AS STRING * 96 "hpvnq2"
DATA AS STRING * 96 "twofivecxxzvpfrfourfour448"
DATA AS STRING * 96 "82fournfour"
DATA AS STRING * 96 "2nchszknqrqtghsfivenine"
DATA AS STRING * 96 "ptssxccnvlzrtscnsl6fpqrjtrfffour1656"
DATA AS STRING * 96 "29rlrctthree4vbdmmkpg"
DATA AS STRING * 96 "twofiveqvllxsfj1sevengnkxhthreehppbslzmcgpg"
DATA AS STRING * 96 "5ninefvvvmfourzndnmvgcll812"
DATA AS STRING * 96 "zxqxqzc4twoeightjfrfdjnlntjbpsevenone"
DATA AS STRING * 96 "hrhvjbdrfourrjj45"
DATA AS STRING * 96 "7sevendtgjkbmlgpmeightone1"
DATA AS STRING * 96 "lxfmntfkzh5lxdhmpfrkxqckrbl"
DATA AS STRING * 96 "616fourkdsp"
DATA AS STRING * 96 "7dfllkzmcbplzqseven9five"
DATA AS STRING * 96 "25833eightfourseventwo"
DATA AS STRING * 96 "four9sixrgnscd6seveneight"
DATA AS STRING * 96 "two89pxddpnbtck993lfxrhpx"
DATA AS STRING * 96 "ckpgbsfpdffiveprvqmmczhsthreeeight9"
DATA AS STRING * 96 "431knfdk"
DATA AS STRING * 96 "ones7"
DATA AS STRING * 96 "two4fiveninesixeightonethreefour"
DATA AS STRING * 96 "twosixsix9tsdrcft7"
DATA AS STRING * 96 "8twokstblnjfivetwothcbqh"
DATA AS STRING * 96 "9twothreedtcone1twoeightfk"
DATA AS STRING * 96 "slq9seven1mjcqsstkxnhkmzznine4fvphmqsgr"
DATA AS STRING * 96 "fjmmkb6four"
DATA AS STRING * 96 "38xzqvzm45ldkkgxzlmtwodkgmd"
DATA AS STRING * 96 "1eightfive5hbs9twonnxbtghrbcd"
DATA AS STRING * 96 "9sixlcttnctfng7vxnpmntnxh4"
DATA AS STRING * 96 "2two2rzkns7two"
DATA AS STRING * 96 "eightdbqninekmvfcceight65"