gakuryoku = read.csv("https://raw.githubusercontent.com/futurebridge/RBooks/master/chap4/gakuryoku.csv",header=TRUE)

Rgakuryoku=cor(gakuryoku)
Egakuryoku=eigen(Rgakuryoku)
Egakuryoku

#�ݐϊ�^�������߂�
contribution=NULL
accumulate=0
i=0

for (i in 1:6){
	accumulate= Egakuryoku$values[i]/sum(Egakuryoku$values)+accumulate
	contribution[i] =�@paste ("��",i,"�听��","�ŗL�l",Egakuryoku$values[i]
                                ,"��^��",Egakuryoku$values[i]/sum(Egakuryoku$values)
					  ,"�ݐϊ�^��",accumulate)
}
contribution




result = prcomp(gakuryoku,scale=TRUE)
biplot(result)

#���q���́F��]�Ȃ�
result.none = factanal(gakuryoku,factors=2,rotation="none")

#���q���́F������]
result.vari = factanal(gakuryoku,factors=2,rotation="varimax")

#���q���́F�Ό���]
result.pro = factanal(gakuryoku,factors=2,rotation="promax")

result.none
result.vari
result.pro





