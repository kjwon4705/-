loc1 <- seq(2, 48, 2)
loc2 <- seq(1, 47, 2)

data1 <- pusan[2, loc1]
data1 <- as.numeric(data1)
data1


data2 <- pusan[2, loc2]
data2 <- as.numeric(data2)
data2



mu = NULL

mu[1] = mean(data2[1:5])
mu[2] = mean(data2[1:6])
mu[3] = mean(data2[7:10])
mu[4] = mean(data2[11:13])
mu[5] = mean(data2[14:17])
mu[6] = mean(data2[18:22])

mu <- round(mu,2)

effect <- NULL

for(i in 1:5){
  effect[i] <- mu[i+1] - mu[i]
}


par(mfrow=c(1,3))

plot(data1, type = "l", lwd = 2, col = "red", main = "부산 소상공인들의 경기전망", xlab = "시점", ylab = "전망")

abline(v=5, lty = 3)
abline(v=9, lty = 3)
abline(v=12, lty = 3)
abline(v=16, lty = 3)
abline(v=21, lty = 3)


xat = c(rep(NA, 5), "1차", rep(NA, 3), "2차", rep(NA, 2) ,"3차", rep(NA,3) ,"4차", rep(NA, 4) ,"5차", rep(NA, 2))
plot(data2, type = "l", xaxt = "n", lwd = 2, col = "blue", main = "부산 소상공인들의 경기체감", xlab = "시점", ylab = "체감")
abline(v=6, lty = 3)
abline(v=10, lty = 3)
abline(v=13, lty = 3)
abline(v=17, lty = 3)
abline(v=22, lty = 3)


plot(effect, type = "o", col = "red", ylim = c(-20, 10), main = "소상공인 경기 체감 분석 결과", axes = F, ann = F)
axis(1, at= 1:5, lab = c("1 차", "2 차", "3 차", "4 차", "5 차"))
axis(2)

title(main = "소상공인 경기 체감 분석 결과")
title(xlab = "재난지원금 시기", col.lab = "black")
title(ylab = "정책 효과", col.lab = "blue")
