clc, clear, close all;

Is = 10^-14;
R = 5;
VT = 0.026;

Id1 = 0:.000001:.001;
Id2 = 0:.0001:.1;
Vd1 = VT*log(Id1/Is) + R*Id1;
Vd2 = VT*log(Id2/Is) + R*Id2;
Vd1b = VT*log(Id1/Is);
Vd2b = VT*log(Id2/Is);

plot(Vd1,Id1,"r",Vd1b,Id1,"b")
ylim([0,.001])
xlim([0,1])
xlabel("Voltage, Vd (V)")
ylabel("Current, Id (A)")

figure
plot(Vd2,Id2,"r", Vd2b,Id2,"b")
ylim([0,.1])
xlim([0,1])
xlabel("Voltage, Vd (V)")
ylabel("Current, Id (A)")