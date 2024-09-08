N=filt([1 - 7.795e-05  0.0001364],[1 -1.7 0.7])*0.2;
T=filt(0.2835,[1 -0.7165])*filt([zeros(1,11) 1],1);
Ts=0.5;
KP=0.325766438124653;
KI=0.12948576672062;
KD=0.0733487491111244;
KZQ=KP+KI*Ts*filt([0 1],[1 -1])+KD/Ts*filt([1 -1],1);
d=11;
yh=9;
hf1=zeros(1,10);   
hf2=zeros(1,10);
Data_G=300;
for i=1:1:yh
    hf1(i)=1;
end
for i=1:1:yh+4
    hf2(i)=1;
end
t1=7500;
t2=100;
Ts=0.5;
t = (0:0.1:20000)';
u = [myfun_bbbb0(t,t1,t2),myfun_cccc0(t,t1,t2),myfun_dddd0(t,t1,t2),myfun_eeee0(t,t1,t2),myfun_ffff(t,t1,t2)];
sim('cep51');
y1=ans.y11;
% y2=ans.y22;
% y3=ans.y33;
% for i=1:1:40006
%     z(i)=ans.ScopeData2.signals.values(i);
% end
% z=z';
% figure(3)
% subplot(2,1,1)
% plot(ans.ScopeData1.time(37007:40006),ans.ScopeData1.signals.values(37007:40006))
% 
% subplot(2,1,2)
% plot(ans.ScopeData2.time(37007:40006),z(37007:40006))
sim('cepzn51');
y4=ans.y44;
tc=1;
for i=1:1:71
    v1(i)=var(y1(1+(i-1)*500*tc:(i-1)*500*tc+5000*tc));
end
for i=1:1:71
    v1zn(i)=var(y4(1+(i-1)*500*tc:(i-1)*500*tc+5000*tc));
end
vr=0;
n=impulse(N,100);
for i=1:1:d
    vr=vr+n(i)^2;
end
for i=1:1:71
    vrr(i)=vr;
end
KZQ1=filt([2.8416 -4.8581 2.1209],[1 -1]);
KZQ2=filt([2.506 -4.4 2],[1 -1]);
GG1=N/(1+T*KZQ);
GG2=N/(1+T*KZQ1);
GG3=N/(1+T*KZQ*1.8);
GG4=N/(1+T*KZQ2);
gg1=impulse(GG1,100000);
gg2=impulse(GG2,100000);
gg3=impulse(GG3,100000);
gg4=impulse(GG4,100000);
vr1=0;
vr2=0;
vr3=0;
vr4=0;
for i=1:1:100000
    vr1=vr1+gg1(i)^2;
    vr2=vr2+gg2(i)^2;
    vr3=vr3+gg3(i)^2;
    vr4=vr4+gg4(i)^2;
end
for i=1:1:21
    vs(i)=vr1;
end
for i=22:1:71
    vs(i)=vr2;
end
for i=1:1:6
    vszn(i)=vr1;
end
for i=7:1:21
    vszn(i)=vr3;
end
for i=22:1:71
    vszn(i)=vr4;
end


figure(10)
x=10:1:80;
plot(x,vrr(1:71),'r-')
hold on
x=10:1:80;
plot(x,v1(1:71),'k-')
hold on
x=10:1:80;
plot(x,vs(1:71),'k--')
hold on
x=10:1:80;
plot(x,v1zn(1:71),'b-')
hold on

x=10:1:80;
plot(x,vszn(1:71),'b--')
hold on


legend('MVC','online proposed','theoretical proposed','online by [5]','theoretical by [5]','fontsize',12.5);
set(gcf,'Position',[50/0.277 50/0.277 400/0.277 130/0.277]);
axis([0 80 2 10]);


% figure(1)
% plot(y1(1:5000),'r')
% 
% 
% figure(2)
% plot(y1(30000:35000),'b')






