% ex1kzq=filt([0.8467 -1.2041 0.4506],[1 -0.9 -0.1]);
% ex2kzq=filt([0.7868 -1.3085 0.5603],[1 -0.9 -0.1]);
% ex3kzq=filt([0.4472 -0.8518 0.4047],[1 -0.7 -0.3]);
% ex4kzq=filt([22.96 -43.09 20.28],[1 -0.9 -0.1]);
% ex1kzq=filt([0.7241 -1.2057 0.5178],[1 -1]);
% ex2kzq=filt([0.7241 -1.2057 0.5178],[1 -1]);
% ex3kzq=filt([0.5077 -0.9839 0.4762],[1 -1]);
% ex4kzq=filt([23.5491 -44.6910 21.2945],[1 -1]);
N1=filt([1 -0.2],[1 -1])*filt(1,[1 -0.3])*filt(1,[1 0.4])*filt(1,[1 -0.5]);
N2=N1;
N3=filt(0.5108,[1 -0.9604]);
N4=filt(0.07889,[1 -1])*filt([1 0.946],[1 -0.8465]);
T1=filt([zeros(1,3) 1],1)*filt(1,[1 -0.8]);
T2=filt([zeros(1,6) 1],1)*filt(1,[1 -0.8]);
T3=filt([zeros(1,28) 1],1)*filt(0.5108,[1 -0.9604]);
T4=filt([zeros(1,7) 1],1)*filt([0.004679],[1 -0.923])*filt([1 0.9355],[1 -0.887]);

TT1=filt(1,[1 -0.8]);
TT2=filt(1,[1 -0.8]);
TT3=filt(0.5108,[1 -0.9604]);
TT4=filt([0.004679],[1 -0.923])*filt([1 0.9355],[1 -0.887]);
n1=impulse(N1,100000);
n2=impulse(N2,100000);
n3=impulse(N3,100000);
n4=impulse(N4,100000);
R1=filt(n1(1:3)',1);
R2=filt(n2(1:6)',1);
R3=filt(n3(1:28)',1);
R4=filt(n4(1:7)',1);
F1=N1-R1;
F2=N2-R2;
F3=N3-R3;
F4=N4-R4;
F1fz=cell2mat(F1.num);
F2fz=cell2mat(F2.num);
F3fz=cell2mat(F3.num);
F4fz=cell2mat(F4.num);
F1=filt(F1fz(4:end),[1 -1])*filt(1,[1 -0.3])*filt(1,[1 0.4])*filt(1,[1 -0.5]);
F2=filt(F2fz(7:end),[1 -1])*filt(1,[1 -0.3])*filt(1,[1 0.4])*filt(1,[1 -0.5]);
F3=filt(F3fz(29:end),[1 -0.9604]);
F4=filt(F4fz(8:end),[1 -1])*filt(1,[1 -0.8465]);
ex1kzq=F1/(TT1*R1);
ex2kzq=F2/(TT2*R2);
ex3kzq=F3/(TT3*R3);
ex4kzq=F4/(TT4*R4);
ex3kzq=KZQ;
fc=0;
jz=0;
kkk=60;
for i=1:1:kkk
    seed=i;
    sim('Pid_MVC_final');
    y=Fcor(ex3kzq,T2,N2,y_a);
    fc=fc+var(y);
    jz=jz+mean(y);
end
fc=fc/kkk;
jz=jz/kkk;
[fc jz]

