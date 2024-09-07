sim('Ceramic_Dryer_vairance');

fourb0=ans.fourb0;
foura1=ans.foura1;
fourb1=ans.fourb1;
foura2=-ans.foura2;
fourb2=ans.fourb2;

figure(1)
subplot(2,2,1);
xlable=20000:1:20500;
plot(xlable,fourb0(20000:20500),'k-','LineWidth',0.3);
hold on;
xlable=19900:1:20000;
plot(xlable,ones(1,101)*fourb0(20000),'k-','LineWidth',0.3);
hold on;
xlable=20500:1:20700;
plot(xlable,ones(1,201)*fourb0(20500),'k-','LineWidth',0.3);
title('\alpha_{1}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([19900 20700 0 12]);
subplot(2,2,2);
xlable=20000:1:20500;
plot(xlable,fourb1(20000:20500),'k-','LineWidth',0.3);
hold on;
xlable=19900:1:20000;
plot(xlable,ones(1,101)*fourb1(20000),'k-','LineWidth',0.3);
hold on;
xlable=20500:1:20700;
plot(xlable,ones(1,201)*fourb1(20500),'k-','LineWidth',0.3);
title('\alpha_{2}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([19900 20700 -20 0]);
subplot(2,2,3);
xlable=20000:1:20500;
plot(xlable,fourb2(20000:20500),'k-','LineWidth',0.3);
hold on;
xlable=19900:1:20000;
plot(xlable,ones(1,101)*fourb2(20000),'k-','LineWidth',0.3);
hold on;
xlable=20500:1:20700;
plot(xlable,ones(1,201)*fourb2(20500),'k-','LineWidth',0.3);
title('\alpha_{3}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([19900 20700 0 10]);
subplot(2,2,4);
xlable=20000:1:20500;
plot(xlable,foura2(20000:20500),'k-','LineWidth',0.3);
hold on;
xlable=19900:1:20000;
plot(xlable,ones(1,101)*foura2(20000),'k-','LineWidth',0.3);
hold on;
xlable=20500:1:20700;
plot(xlable,ones(1,201)*foura2(20500),'k-','LineWidth',0.3);
title('\tau','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([19900 20700 -0.6 0.2]);


% subplot(2,2,1);
% plot(fourb0(20000:20500));
% subplot(2,2,2);
% plot(fourb1(20000:20500));
% subplot(2,2,3);
% plot(fourb2(20000:20500));
% subplot(2,2,4);
% plot(foura2(20000:20500));


figure(2)
subplot(2,2,1);
xlable=45500:1:46000;
plot(xlable,fourb0(45500:46000),'k-','LineWidth',0.3);
hold on;
xlable=45400:1:45500;
plot(xlable,ones(1,101)*fourb0(45500),'k-','LineWidth',0.3);
hold on;
xlable=46000:1:46200;
plot(xlable,ones(1,201)*fourb0(46000),'k-','LineWidth',0.3);
title('\alpha_{1}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([45400 46200 7.5 10]);
subplot(2,2,2);
xlable=45500:1:46000;
plot(xlable,fourb1(45500:46000),'k-','LineWidth',0.3);
hold on;
xlable=45400:1:45500;
plot(xlable,ones(1,101)*fourb1(45500),'k-','LineWidth',0.3);
hold on;
xlable=46000:1:46200;
plot(xlable,ones(1,201)*fourb1(46000),'k-','LineWidth',0.3);
title('\alpha_{2}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([45400 46200 -19 -14]);
subplot(2,2,3);
xlable=45500:1:46000;
plot(xlable,fourb2(45500:46000),'k-','LineWidth',0.3);
hold on;
xlable=45400:1:45500;
plot(xlable,ones(1,101)*fourb2(45500),'k-','LineWidth',0.3);
hold on;
xlable=46000:1:46200;
plot(xlable,ones(1,201)*fourb2(46000),'k-','LineWidth',0.3);
title('\alpha_{3}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([45400 46200 7 9]);
subplot(2,2,4);
xlable=45500:1:46000;
plot(xlable,foura2(45500:46000),'k-','LineWidth',0.3);
hold on;
xlable=45400:1:45500;
plot(xlable,ones(1,101)*foura2(45500),'k-','LineWidth',0.3);
hold on;
xlable=46000:1:46200;
plot(xlable,ones(1,201)*foura2(46000),'k-','LineWidth',0.3);
title('\tau','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
axis([45400 46200 -0.6 0.2]);


% subplot(2,2,1);
% plot(fourb0(45500:46000));
% subplot(2,2,2);
% plot(fourb1(45500:46000));
% subplot(2,2,3);
% plot(fourb2(45500:46000));
% subplot(2,2,4);
% plot(foura2(45500:46000));

figure(3)
subplot(2,2,1);
xlable=71000:1:71500;
plot(xlable,fourb0(71000:71500),'k-','LineWidth',0.3);
hold on;
xlable=70900:1:71000;
plot(xlable,ones(1,101)*fourb0(71000),'k-','LineWidth',0.3);
hold on;
xlable=71500:1:71700;
plot(xlable,ones(1,201)*fourb0(71500),'k-','LineWidth',0.3);
axis([70900 71700 7 16]);
title('\alpha_{1}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
subplot(2,2,2);
xlable=71000:1:71500;
plot(xlable,fourb1(71000:71500),'k-','LineWidth',0.3);
hold on;
xlable=70900:1:71000;
plot(xlable,ones(1,101)*fourb1(71000),'k-','LineWidth',0.3);
hold on;
xlable=71500:1:71700;
plot(xlable,ones(1,201)*fourb1(71500),'k-','LineWidth',0.3);
axis([70900 71700 -30 -12]);
title('\alpha_{2}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
subplot(2,2,3);
xlable=71000:1:71500;
plot(xlable,fourb2(71000:71500),'k-','LineWidth',0.3);
hold on;
xlable=70900:1:71000;
plot(xlable,ones(1,101)*fourb2(71000),'k-','LineWidth',0.3);
hold on;
xlable=71500:1:71700;
plot(xlable,ones(1,201)*fourb2(71500),'k-','LineWidth',0.3);
axis([70900 71700 6 15]);
title('\alpha_{3}','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);
subplot(2,2,4);
xlable=71000:1:71500;
plot(xlable,foura2(71000:71500),'k-','LineWidth',0.3);
hold on;
xlable=70900:1:71000;
plot(xlable,ones(1,101)*foura2(71000),'k-','LineWidth',0.3);
hold on;
xlable=71500:1:71700;
plot(xlable,ones(1,201)*foura2(71500),'k-','LineWidth',0.3);
axis([70900 71700 -0.6 0.2]);
title('\tau','fontsize',15)
xlabel('Lags','fontsize',12);
ylabel('Amplitude','fontsize',12);


qm=5;
for i=1:1:20+qm
    vgd1(i)=var(y6(10000-qm*50+(i-1)*50-5000:10000-qm*50+(i-1)*50));
    vgd2(i)=var(y6(35500-qm*50+(i-1)*50-5000:35500-qm*50+(i-1)*50));
    vgd3(i)=var(y6(61000-qm*50+(i-1)*50-5000:61000-qm*50+(i-1)*50));
end

% figure(4)
% plot(vgd1)
% 
% 
% figure(5)
% plot(vgd2)
% 
% figure(6)
% plot(vgd3)
figure(4)
subplot(2,2,1)
xlable=100:1:600;
plot(xlable,fourb0(20000:20500),'k-','LineWidth',1);
hold on
xlable=800:1:1300;
plot(xlable,fourb0(45500:46000),'k-','LineWidth',1);
hold on
xlable=1500:1:2000;
plot(xlable,fourb0(71000:71500),'k-','LineWidth',1);
hold on
title('\alpha_{1}','fontsize',15)
ylabel('Amplitude','fontsize',12);
xticks([]);
subplot(2,2,2)
xlable=100:1:600;
plot(xlable,fourb1(20000:20500),'k-','LineWidth',1);
hold on
xlable=800:1:1300;
plot(xlable,fourb1(45500:46000),'k-','LineWidth',1);
hold on
xlable=1500:1:2000;
plot(xlable,fourb1(71000:71500),'k-','LineWidth',1);
hold on
title('\alpha_{2}','fontsize',15)
ylabel('Amplitude','fontsize',12);
xticks([]);
subplot(2,2,3)
xlable=100:1:600;
plot(xlable,fourb2(20000:20500),'k-','LineWidth',1);
hold on
xlable=800:1:1300;
plot(xlable,fourb2(45500:46000),'k-','LineWidth',1);
hold on
xlable=1500:1:2000;
plot(xlable,fourb2(71000:71500),'k-','LineWidth',1);
hold on
title('\alpha_{3}','fontsize',15)
ylabel('Amplitude','fontsize',12);
xticks([]);
subplot(2,2,4)
xlable=100:1:600;
plot(xlable,foura2(20000:20500),'k-','LineWidth',1);
hold on
xlable=800:1:1300;
plot(xlable,foura2(45500:46000),'k-','LineWidth',1);
hold on
xlable=1500:1:2000;
plot(xlable,foura2(71000:71500),'k-','LineWidth',1);
hold on
title('\tau_{1}','fontsize',15)
ylabel('Amplitude','fontsize',12);
xticks([]);

figure(8)
xlable=5:1:25+qm-1;
plot(xlable,vgd1(1:25),'k-','LineWidth',0.3);
hold on;
xlable=35+qm:1:55+2*qm-1;
plot(xlable,vgd2(1:25),'k-','LineWidth',0.3);
hold on;
xlable=65+2*qm:1:85+3*qm-1;
plot(xlable,vgd3(1:25),'k-','LineWidth',0.3);
hold on;
axis([0 90+3*qm 20.5 24.5]);
% xlabel('Lags','fontsize',15);
ylabel('Output Variance(℃²)','fontsize',20);
set(0,'defaultfigurecolor','w')


% legend('true','estimated','parameterized','fontsize',12.5);



% figure(7)
% for i=1:1:200
%     b00(i)=fourb0(20000);
% end
% for i=201:1:700
%     b00(i)=fourb0(20000+i-200);
% end
% for i=701:1:1200
%     b00(i)=fourb0(20500);
% end
% for i=1201:1:1700
%     b00(i)=fourb0(45500+i-1200);
% end
% for i=1701:1:2200
%     b00(i)=fourb0(46000);
% end
% for i=2201:1:2700
%     b00(i)=fourb0(71000+i-2200);
% end
% for i=2701:1:3000
%     b00(i)=fourb0(71500);
% end
% plot(b00)




