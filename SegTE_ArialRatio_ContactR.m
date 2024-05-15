close all; clear 

%% N-type
% Na0

T = 300:25:525;

Na0_e = [837.4185254
757.0283117
684.5544914
625.5460568
568.4856158
519.427324
477.9261426
442.5387852
414.3045516
391.3143175
]; 



Na0_k = [0.739566967
0.710752669
0.688661708
0.675215036
0.669452176
0.674254559
0.691543138
0.720357435
0.762618405
0.81736557] ;

Na0_zt = [0.551136171
0.615070082
0.660562536
0.695120773
0.703945064
0.710444501
0.707002263
0.662725924
0.604587899
0.538767554
];

Na0_fit_e = polyfit(T,Na0_e,4);
Na0_fit_k = polyfit(T,Na0_k,4);
Na0_fit_zt = polyfit(T,Na0_zt,8);

y_Na0_e = polyval(Na0_fit_e,T);
y_Na0_k = polyval(Na0_fit_k,T);
y_Na0_zt = polyval(Na0_fit_zt,T);

figure(1)
subplot(1,3,1)
plot(T,Na0_e,'o',T,y_Na0_e), ylabel('Electrical Conductivity (S/cm)'), xlabel('Temperature (K)')
title('Fitted Function')
subtitle(sprintf('y = %0.5e x^4 + %0.5e x^3 + %0.5e x^2 + %0.5e x + %0.5e',Na0_fit_e(1),Na0_fit_e(2),Na0_fit_e(3),Na0_fit_e(4),Na0_fit_e(5)),"FontSize",8)

grid on

subplot(1,3,2)
plot(T,Na0_k,'o',T,y_Na0_k)
ylabel('Thermal conductivity (W/mK'), xlabel('Temperature (K)')
title('Fitted Function')
subtitle(sprintf('y = %0.5e x^4 + %0.5e x^3 + %0.5e x^2 + %0.5e x + %0.5e',Na0_fit_k(1),Na0_fit_k(2),Na0_fit_k(3),Na0_fit_k(4),Na0_fit_k(5)),"FontSize",8)

grid on

subplot(1,3,3)
plot(T,Na0_zt,'o',T,y_Na0_zt)
ylabel('ZT'), xlabel('Temperature (K)')
title('Fitted Function')
subtitle(sprintf('y =%0.5e x^8 + %0.5e x^7 + %0.5e x^6 + %0.5e x^5 + %0.5e x^4 + %0.5e x^3 + %0.5e x^2 + %0.5e x + %0.5e',Na0_fit_zt(1),Na0_fit_zt(2),Na0_fit_zt(3),Na0_fit_zt(4),Na0_fit_zt(5),Na0_fit_zt(6),Na0_fit_zt(7),Na0_fit_zt(8),Na0_fit_zt(9)),"FontSize",6)

grid on

% Na01 
Na01_e = [642.7501747
586.0523104
537.2330308
496.6897161
456.3700294
423.0218835
394.972441
372.0829376
354.4121972
341.9567789
];

Na01_k = [0.660959882
0.640959655
0.622864211
0.614292685
0.620959428
0.630483345
0.679055325
0.711436645
0.768580151
0.820009306
]; 

Na01_zt = [0.645497989
0.708250757
0.75776409
0.783342231
0.770843495
0.757107817
0.707296722
0.647254736
0.566129516
0.493986665
];

Na01_fit_e = polyfit(T,Na01_e,4);
Na01_fit_k = polyfit(T,Na01_k,9);
Na01_fit_zt = polyfit(T,Na01_zt,9);

y_Na01_e = polyval(Na01_fit_e,T);
y_Na01_k = polyval(Na01_fit_k,T);
y_Na01_zt = polyval(Na01_fit_zt,T);

figure (2)
subplot(1,3,1)
plot(T,Na01_e,'o',T,y_Na01_e)
grid on

subplot(1,3,2)
plot(T,Na01_k,'o',T,y_Na01_k)
grid on

subplot(1,3,3)
plot(T,Na01_zt,'o',T,y_Na01_zt)
grid on

% Na0175
Na0175_e = [490.8724006
452.769755
417.5040627
388.7641615
360.818124
337.5985811
318.1245567
303.4087242
293.3853079
287.9878771
];

Na0175_k = [0.620115373
0.601714323
0.586993483
0.584233326
0.593433851
0.613675005
0.647716947
0.694639624
0.75260293
0.817926656
];

Na0175_zt = [0.717959397
0.770506416
0.804025209
0.799896895
0.756360666
0.698317259
0.630331261
0.535291459
0.445770483
0.366478214
];

Na0175_fit_e = polyfit(T,Na0175_e,4);
Na0175_fit_k = polyfit(T,Na0175_k,4);
Na0175_fit_zt = polyfit(T,Na0175_zt,8);

y_Na0175_e = polyval(Na0175_fit_e,T);
y_Na0175_k = polyval(Na0175_fit_k,T);
y_Na0175_zt = polyval(Na0175_fit_zt,T);

figure (3)
subplot(1,3,1)
plot(T,Na0175_e,'o',T,y_Na0175_e)
grid on

subplot(1,3,2)
plot(T,Na0175_k,'o',T,y_Na0175_k)
grid on

subplot(1,3,3)
plot(T,Na0175_zt,'o',T,y_Na0175_zt)
grid on

%% P-type

% Bi0.35
Bi035_e =[1161.5111
1047.87353
931.48064
837.80606
744.6933
665.66444
597.41169
539.73359
490.13352
447.57261];

Bi035_k = [1.0914
1.03386
0.98715
0.9517
0.92617
0.91288
0.91119
0.92344
0.94746
0.98255];

Bi035_zt = [0.65892
0.72833
0.78536
0.83383
0.86358
0.88857
0.89427
0.8625
0.81768
0.75748];

Bi035_fit_e = polyfit(T,Bi035_e,4);
Bi035_fit_k = polyfit(T,Bi035_k,4);
Bi035_fit_zt = polyfit(T,Bi035_zt,8);

y_Bi035_e = polyval(Bi035_fit_e,T);
y_Bi035_k = polyval(Bi035_fit_k,T);
y_Bi035_zt = polyval(Bi035_fit_zt,T);

figure(5)
subplot(1,3,1)
plot(T,Bi035_e,'o',T,y_Bi035_e)
grid on

subplot(1,3,2)
plot(T,Bi035_k,'o',T,y_Bi035_k)
grid on

subplot(1,3,3)
plot(T,Bi035_zt,'o',T,y_Bi035_zt)
grid on

% Bi0.5
Bi05_e = [929.07702
820.29322
726.12038
650.7231
577.73547
518.14364
467.98377
427.75994
394.96849
369.46051];

Bi05_k = [0.96401
0.91173
0.87781
0.85649
0.84312
0.86041
0.88108
0.9323
0.97712
1.04753];

Bi05_zt = [0.83407
0.92149
0.976
1.00871
1.01093
0.98344
0.94038
0.84123
0.75535
0.65216];

Bi05_fit_e = polyfit(T,Bi05_e,4);
Bi05_fit_k = polyfit(T,Bi05_k,9);
Bi05_fit_zt = polyfit(T,Bi05_zt,9);

y_Bi05_e = polyval(Bi05_fit_e,T);
y_Bi05_k = polyval(Bi05_fit_k,T);
y_Bi05_zt = polyval(Bi05_fit_zt,T);

figure(6)
subplot(1,3,1)
plot(T,Bi05_e,'o',T,y_Bi05_e)
grid on

subplot(1,3,2)
plot(T,Bi05_k,'o',T,y_Bi05_k)
grid on

subplot(1,3,3)
plot(T,Bi05_zt,'o',T,y_Bi05_zt)
grid on

% Bi0.55
Bi055_e = [622.61011
545.54457
482.11599
433.64366
386.78583
351.22608
323.06568
302.3221
288.33712
278.97157];

Bi055_k = [0.77283
0.74084
0.72204
0.7222
0.73897
0.77582
0.82692
0.89571
0.9702
1.05187];

Bi055_zt = [0.95449
1.02624
1.06158
1.05467
0.99334
0.91923
0.82102
0.69122
0.58091
0.4806];

Bi055_fit_e = polyfit(T,Bi055_e,4);
Bi055_fit_k = polyfit(T,Bi055_k,4);
Bi055_fit_zt = polyfit(T,Bi055_zt,8);

y_Bi055_e = polyval(Bi055_fit_e,T);
y_Bi055_k = polyval(Bi055_fit_k,T);
y_Bi055_zt = polyval(Bi055_fit_zt,T);

figure(7)
subplot(1,3,1)
plot(T,Bi055_e,'o',T,y_Bi055_e)
grid on

subplot(1,3,2)
plot(T,Bi055_k,'o',T,y_Bi055_k)
grid on

subplot(1,3,3)
plot(T,Bi055_zt,'o',T,y_Bi055_zt)
grid on
%% Areal Ratio
% Fitted equations
% n-type
syms x EQ1(x) EQ2(x) EQ3(x) EQ4(x) EQ5(x)
Na0_e_eq = Na0_fit_e(1) *x^4 + Na0_fit_e(2) *x^3 + Na0_fit_e(3)* x^2 + Na0_fit_e(4)* x + Na0_fit_e(5) ;
Na0_k_eq = Na0_fit_k(1) *x^4 + Na0_fit_k(2) *x^3 + Na0_fit_k(3)* x^2 + Na0_fit_k(4)* x + Na0_fit_k(5) ;
Na0_zt_eq = Na0_fit_zt(1)* x^8 + Na0_fit_zt(2)* x^7 + Na0_fit_zt(3)* x^6 + Na0_fit_zt(4)* x^5 + Na0_fit_zt(5) *x^4 + Na0_fit_zt(6)* x^3 + Na0_fit_zt(7)* x^2 + Na0_fit_zt(8)* x + Na0_fit_zt(9);
Na0_r_eq = 1/Na0_e_eq;

Na01_e_eq = Na01_fit_e(1) *x^4 + Na01_fit_e(2) *x^3 + Na01_fit_e(3)* x^2 + Na01_fit_e(4)* x + Na01_fit_e(5) ;
Na01_k_eq = Na01_fit_k(1)*x^9 + Na01_fit_k(2)* x^8 + Na01_fit_k(3)* x^7 + Na01_fit_k(4)* x^6 + Na01_fit_k(5)* x^5 + Na01_fit_k(6) *x^4 + Na01_fit_k(7)* x^3 + Na01_fit_k(8)* x^2 + Na01_fit_k(9)* x + Na01_fit_k(10);
Na01_zt_eq = Na01_fit_zt(1)*x^9 + Na01_fit_zt(2)* x^8 + Na01_fit_zt(3)* x^7 + Na01_fit_zt(4)* x^6 + Na01_fit_zt(5)* x^5 + Na01_fit_zt(6) *x^4 + Na01_fit_zt(7)* x^3 + Na01_fit_zt(8)* x^2 + Na01_fit_zt(9)* x + Na01_fit_zt(10);
Na01_r_eq = 1/Na01_e_eq;

Na0175_e_eq = Na0175_fit_e(1) *x^4 + Na0175_fit_e(2) *x^3 + Na0175_fit_e(3)* x^2 + Na0175_fit_e(4)* x + Na0175_fit_e(5) ;
Na0175_k_eq = Na0175_fit_k(1) *x^4 + Na0175_fit_k(2) *x^3 + Na0175_fit_k(3)* x^2 + Na0175_fit_k(4)* x + Na0175_fit_k(5) ;
Na0175_zt_eq= Na0175_fit_zt(1)* x^8 + Na0175_fit_zt(2)* x^7 + Na0175_fit_zt(3)* x^6 + Na0175_fit_zt(4)* x^5 + Na0175_fit_zt(5) *x^4 + Na0175_fit_zt(6)* x^3 + Na0175_fit_zt(7)* x^2 + Na0175_fit_zt(8)* x + Na0175_fit_zt(9);
Na0175_r_eq = 1/Na0175_e_eq;

% p-type
Bi035_e_eq = Bi035_fit_e(1) *x^4 + Bi035_fit_e(2) *x^3 + Bi035_fit_e(3)* x^2 + Bi035_fit_e(4)* x + Bi035_fit_e(5) ;
Bi035_k_eq = Bi035_fit_k(1) *x^4 + Bi035_fit_k(2) *x^3 + Bi035_fit_k(3)* x^2 + Bi035_fit_k(4)* x + Bi035_fit_k(5) ;
Bi035_zt_eq = Bi035_fit_zt(1)* x^8 + Bi035_fit_zt(2)* x^7 + Bi035_fit_zt(3)* x^6 + Bi035_fit_zt(4)* x^5 + Bi035_fit_zt(5) *x^4 + Bi035_fit_zt(6)* x^3 + Bi035_fit_zt(7)* x^2 + Bi035_fit_zt(8)* x + Bi035_fit_zt(9);
Bi035_r_eq = 1/Bi035_e_eq;

Bi05_e_eq = Bi05_fit_e(1) *x^4 + Bi05_fit_e(2) *x^3 + Bi05_fit_e(3)* x^2 + Bi05_fit_e(4)* x + Bi05_fit_e(5) ;
Bi05_k_eq = Bi05_fit_k(1)*x^9 + Bi05_fit_k(2)* x^8 + Bi05_fit_k(3)* x^7 + Bi05_fit_k(4)* x^6 + Bi05_fit_k(5)* x^5 + Bi05_fit_k(6) *x^4 + Bi05_fit_k(7)* x^3 + Bi05_fit_k(8)* x^2 + Bi05_fit_k(9)* x + Bi05_fit_k(10);
Bi05_zt_eq = Bi05_fit_zt(1)*x^9 + Bi05_fit_zt(2)* x^8 + Bi05_fit_zt(3)* x^7 + Bi05_fit_zt(4)* x^6 + Bi05_fit_zt(5)* x^5 + Bi05_fit_zt(6) *x^4 + Bi05_fit_zt(7)* x^3 + Bi05_fit_zt(8)* x^2 + Bi05_fit_zt(9)* x + Bi05_fit_zt(10);
Bi05_r_eq = 1/Bi05_e_eq;

Bi055_e_eq = Bi055_fit_e(1) *x^4 + Bi055_fit_e(2) *x^3 + Bi055_fit_e(3)* x^2 + Bi055_fit_e(4)* x + Bi055_fit_e(5) ;
Bi055_k_eq = Bi055_fit_k(1) *x^4 + Bi055_fit_k(2) *x^3 + Bi055_fit_k(3)* x^2 + Bi055_fit_k(4)* x + Bi055_fit_k(5) ;
Bi055_zt_eq= Bi055_fit_zt(1)* x^8 + Bi055_fit_zt(2)* x^7 + Bi055_fit_zt(3)* x^6 + Bi055_fit_zt(4)* x^5 + Bi055_fit_zt(5) *x^4 + Bi055_fit_zt(6)* x^3 + Bi055_fit_zt(7)* x^2 + Bi055_fit_zt(8)* x + Bi055_fit_zt(9);
Bi055_r_eq = 1/Bi055_e_eq;

% Temperature Range for each segment
% for n-type 
y0_01 = Na0_zt_eq-Na01_zt_eq ;
solx0_01 = double(solve(y0_01==0,x));
TempRange = [300 0 0 525; 300 0 0 525];

for i = 1:length(solx0_01)
     if (solx0_01(i) > 300) && (solx0_01(i)<525) && (solx0_01(i)-real(solx0_01(i))==0)
         TempRange(1,3) = solx0_01(i);
     end
end

y01_0175 = Na01_zt_eq-Na0175_zt_eq ;
solx01_0175 = double(solve(y01_0175==0,x));
for i = 1:length(solx01_0175)
     if (solx01_0175(i) > 300) && (solx01_0175(i)<525) && (solx01_0175(i)-real(solx01_0175(i))==0)
         TempRange(1,2) = solx01_0175(i);
     end
end

% for p-type
y035_05 = Bi035_zt_eq-Bi05_zt_eq ;
solx035_05 = double(solve(y035_05==0,x));

for i = 1:length(solx035_05)
     if (solx035_05(i) > 300) && (solx035_05(i)<525) && (solx035_05(i)-real(solx035_05(i))==0)
         TempRange(2,3) = solx035_05(i);
     end
end

y05_055 = Bi05_zt_eq-Bi055_zt_eq ;
solx05_055 = double(solve(y05_055==0,x));
for i = 1:length(solx05_055)
     if (solx05_055(i) > 300) && (solx05_055(i)<525) && (solx05_055(i)-real(solx05_055(i))==0)
         TempRange(2,2) = solx05_055(i);
     end
end

Temp = round(TempRange,2);
%% 

% Calculation
r_p = 2.18e-04; % contact resistivity
r_n = 9.44e-05; % contact resistivity
EQ1(x) = ((Na0175_r_eq+2.*r_n/0.5).*Bi055_k_eq)/((Bi055_r_eq+2.*r_p/0.5).*Na0175_k_eq);
EQ2(x) = ((Na01_r_eq+2.*r_n/0.5).*Bi055_k_eq)/((Bi055_r_eq+2.*r_p/0.5).*Na01_k_eq);
EQ3(x) = ((Na01_r_eq+2.*r_n/0.5).*Bi05_k_eq)/((Bi05_r_eq+2.*r_p/0.5).*Na01_k_eq);
EQ4(x) = ((Na0_r_eq+2.*r_n/0.5).*Bi05_k_eq)/((Bi05_r_eq+2.*r_p/0.5).*Na01_k_eq);
EQ5(x) = ((Na0_r_eq+2.*r_n/0.5).*Bi035_k_eq)/((Bi035_r_eq+2.*r_p/0.5).*Na0_k_eq);

A1 = 0;
for i = Temp(1,1):0.01:Temp(1,4)
    if i <= Temp(1,2)
        A1 = A1 + vpa(sqrt(EQ1(i))).*0.01;
    elseif i > Temp(1,2) && i <= Temp(2,2)
        A1 = A1 + vpa(sqrt(EQ2(i))).*0.01;
    elseif i > Temp(2,2) && i <= Temp(1,3)
        A1 = A1 + vpa(sqrt(EQ3(i))).*0.01;
    elseif i > Temp(1,3) && i <= Temp(2,3)
        A1 = A1 + vpa(sqrt(EQ4(i))).*0.01;
    elseif i > Temp(2,3) && i <= Temp(1,4)
        A1 = A1 + vpa(sqrt(EQ5(i))).*0.01;
    end
end
An_Per_Ap = A1/(Temp(1,4)-Temp(1,1));

Ap = 25;
An = An_Per_Ap.*Ap;
Ln = sqrt(An)
