GBD=impulse(G,1000);
GD=impulse(1/G,300);
GGBD=impulse(G1,300);
GGD=impulse(1/G1,10000);
a1=0;
a2=0;
a3=0;
for i=101:1:200
    a1=a1+GGBD(i)^2;
    a2=a2+GGBD(i-1)^2;
    a3=a3+GGBD(i-1)*GGBD(i);
end
xxx1=a3/a2;
a1=0;
a2=0;
a3=0;
for i=1200:1:1500
    a1=a1+GGD(i)^2;
    a2=a2+GGD(i-1)^2;
    a3=a3+GGD(i-1)*GGD(i);
end
xxx2=a3/a2;
GGD=impulse(1/G1*filt([1 -xxx2],1),10000);
a1=0;
a2=0;
a3=0;
for i=1200:1:1500
    a1=a1+GGD(i)^2;
    a2=a2+GGD(i-1)^2;
    a3=a3+GGD(i-1)*GGD(i); 
end
xxx3=a3/a2;


