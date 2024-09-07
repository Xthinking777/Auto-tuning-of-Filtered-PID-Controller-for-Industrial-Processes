tc=1;
% seed=9;
seed=1;
znvary;
fourvary;
y6=y6(10000*tc+1:86000*tc+1);
y5=y5(10000*tc+1:86000*tc+1);
% y7=ans.y7;
% y7=y7(10001:86001);
% for i=1:1:76001
%     y9(i)=y7(1,1,i);
% end
% for i=1:1:81001
%     y10(i)=y6(i)^2;
% end
% y9=y9';
% y8=ans.y8;
% y8=y8(10001:86001);
% for i=1:1:153
%     bzs(i)=var(y7(1+(i-1)*500*1:(i-1)*500*1+5000*1));
% end
% y6=y6(1:86000*tc+1);
% y5=y5(1:86000*tc+1);
for i=1:1:143
    v1(i)=var(y6(1+(i-1)*500*tc:(i-1)*500*tc+5000*tc));
end
for i=1:1:143
    v2(i)=var(y5(1+(i-1)*500*tc:(i-1)*500*tc+5000*tc));
end
N=filt(1,[1 -1.5 0.5])*0.5;
vr1=0;
vr2=0;
vr3=0;
n=impulse(N,100);
for i=1:1:19
    vr1=vr1+n(i)^2;
end
for i=1:1:20
    vr2=vr2+n(i)^2;
    vr3=vr3+n(i)^2;
end

% figure(6)
vrr=zeros(1,153);
for i=1:1:41
    vrr(i)=vr1;
end
for i=42:1:92
    vrr(i)=vr2;
end
for i=93:1:143
    vrr(i)=vr3;
end

% for i=1:1:41
%     vl(i)=19.36;
% end
% for i=42:1:92
%     vl(i)=20.09;
% end
% for i=93:1:143
%     vl(i)=20.54;
% end


for i=1:1:41
    vl(i)=19.36;
end
for i=42:1:92
    vl(i)=20.09;
end
for i=93:1:143
    vl(i)=20.51;
end




for i=1:1:11
    vl(i)=22.9214;
end
for i=12:1:41
    vl(i)=19.36;
end
for i=42:1:62
    vl(i)=20.4463;
end
for i=63:1:92
    vl(i)=20.09;
end
for i=93:1:113
    vl(i)=21.9680;
end
for i=114:1:143
    vl(i)=20.51;
end





for i=1:1:41
    vll(i)=88.25/4;
end
for i=42:1:92
    vll(i)=101.95/4;
end
for i=93:1:143
    vll(i)=98.04/4;
end
% x=0:1:142;
% plot(x,vrr(1:143),'k-')
% hold on
% x=0:1:142;
% plot(x,v1(1:143),'r-');
% hold on
% plot(x,v2(1:143),'b--');
% hold on
% axis([0 142 50 150]);
% xlabel('Interval','fontsize',15);
% ylabel('Output Variance','fontsize',15);
% 
% set(0,'defaultfigurecolor','w')
% legend('theoretical','proposed','by','fontsize',12.5);
% 
% figure(7)
% plot(0,v1(1),'b-');
% hold on
% x=0:1:142;
% plot(x,vrr(1:143),'m-')
% hold on
% x=0:1:142;
% plot(x,vl(1:143),'k-')
% hold on
% x=0:1:142;
% plot(x,vll(1:143),'k--')
% hold on
% plot(0,v2(1),'b--');
% hold on
% x=0:1:10;
% plot(x,v1(1:11),'b-');
% hold on
% plot(x,v2(1:11),'b--');
% hold on
% x=10:1:20;
% plot(x,v1(11:21),'g-');
% hold on
% plot(x,v2(11:21),'g--');
% hold on
% x=20:1:41;
% plot(x,v1(21:42),'r-');
% hold on
% plot(x,v2(21:42),'r--');
% hold on
% x=41:1:61;
% plot(x,v1(42:62),'b-');
% hold on
% plot(x,v2(42:62),'b--');
% hold on
% x=61:1:71;
% plot(x,v1(62:72),'g-');
% hold on
% plot(x,v2(62:72),'g--');
% hold on
% x=71:1:92;
% plot(x,v1(72:93),'r-');
% hold on
% plot(x,v2(72:93),'r--');
% hold on
% x=92:1:112;
% plot(x,v1(93:113),'b-');
% hold on
% plot(x,v2(93:113),'b--');
% hold on
% x=112:1:122;
% plot(x,v1(113:123),'g-');
% hold on
% plot(x,v2(113:123),'g--');
% hold on
% x=122:1:142;
% plot(x,v1(123:143),'r-');
% hold on
% plot(x,v2(123:143),'r--');
% hold on
% set(gcf,'Position',[50/0.277 50/0.277 200/0.277 130/0.277]);
% axis([0 142 50 150]);
% 
% xlabel('Interval','fontsize',15);
% ylabel('Output Variance','fontsize',15);



figure(10)
x=10:1:152;
plot(x,vrr(1:143),'r-')
hold on
x=10:1:152;
plot(x,v1(1:143),'k-');
hold on
x=10:1:152;
plot(x,vl(1:143),'k--')
hold on
plot(x,v2(1:143),'b-');
hold on
x=10:1:152;
plot(x,vll(1:143),'b--')
hold on
legend('MVC','online proposed','theoretical proposed','online by [11]','theoretical by [11]','fontsize',12.5);
set(gcf,'Position',[50/0.277 50/0.277 400/0.277 130/0.277]);
axis([0 152 16 36]);

% ISA5253;
% 22.9214   20.4463   21.9680
% for i=1:1:11
%     vl(i)=22.9214;
% end
% for i=12:1:41
%     vl(i)=19.36;
% end
% for i=42:1:62
%     vl(i)=20.4463;
% end
% for i=63:1:92
%     vl(i)=20.09;
% end
% for i=93:1:113
%     vl(i)=21.9680;
% end
% for i=114:1:143
%     vl(i)=20.51;
% end

