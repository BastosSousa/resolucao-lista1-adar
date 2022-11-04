##exercicio 7
T_ar <- 30
UR <- 30

a = atan(0.151977*(UR+8.313659)^(1/2))
b = atan(T+UR)
c = atan(UR-1.676331)
d = 0.00391838 *(UR^(3/2))*atan(0.023101*UR)

T_w = T_ar*a+b-c+d-4.686035

sprintf("temperatura de bulbo úmido Tw: %#.4f", T_w)

##exercicio 8
#Conjunto de equações de pedotransferência e variaveis:
SI <-13
CL <-37
Db <-1.3
Me <- 21

x14 <- (-1.05501+0.0650857*SI)
x15 <- (-2.07588+0.0423954*CL)
x16 <- (-6.03402 + 4.80572*Db)
x17 <- (-2.18409+8.84963*(Me/100))
z9 <- (0.175202 + 1.18513*x17-0.0996042*(x17^2)+0.327915*x16-0.0758657*(x16^2))
z10 <- (0.929344*z9+0.132519*x14)

z11 <- (0.191452+1.25652*x17-0.079098*(x17^2)+0.393814*x16+0.152095*x17*x16)

z13 <- (0.235084+0.33033*x15-0.191838*(x15^2)+0.0543679*(x15^3)+0.977685*x17+0.304174*x15*x17
-0.218857*(x17^2)-0.164373*x15*(x17^2)+0.0415057*(x17^3)+0.373361*x16+0.0811861*x17*x16-0.0768087*x15*x17*x16)

theta_10k <- 0.339255+0.112526*z10
sprintf("potencial hídrico de 10kPa: %#.4f", theta_10k)

theta_33k <- 0.28951+0.103815*z11
sprintf("capacidade de campo 33kPa: %#.4f", theta_33k)

theta_1500k <- 0.214008+0.0862945*z13
sprintf(" ponto de murcha permanente 1500kPa: %#.4f", theta_1500k)

sessionInfo()

