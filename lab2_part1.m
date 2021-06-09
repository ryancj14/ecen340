clc, clear, close all;

M = csvread('scope_2.csv', 2, 0);
time = M(:,1);
V2 = M(:,2);
V1 = M(:,3);

Vd = V2 - V1;
plot(time,Vd)
xlabel("time")
ylabel("voltage (Vd)")

R = 8.2;
Id = V1 / R;
figure
plot(time,Id)
xlabel("time")
ylabel("current (Id)")

figure
plot(Vd,Id)
xlabel("voltage (Vd)")
ylabel("current (Id)")

Ifit = linspace(1e-20,100e-3,1000);
Rd = 9.2;
IS = 1e-36;
Vfit = 26e-3*log(Ifit/IS) + Rd*Ifit;
figure
plot(Vd,Id,'.',Vfit,Ifit,'r')