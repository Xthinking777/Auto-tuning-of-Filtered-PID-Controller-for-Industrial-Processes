

NAD=NN;
TAD=TT;
xxx=zeros(21,3);
J=zeros(21,1);
for ai=1:1:21
aa=-1+(ai-1)*0.1;
dn=3;
NUM=dn*d; 
N0=NAD;
P=TAD*filt(1,[1 -1])*filt(1,[1 -aa]);
p=impulse(P,2000);
p=p(1:1000);
n=impulse(N0,1000);
gf=sym(zeros(1,2000));
syms a1 a2 a3
for i=1:1:d
    gf(i)=n(i);
end
for i=1:1:NUM
    k1=0;
    k2=0;
    k3=0;
    for j=1:1:i
        k1=k1+gf(j)*p(i-j+1);
    end
    if i>1
        for j=1:1:i-1
            k2=k2+gf(j)*p(i-j);
        end
    end
    if i>2
        for j=1:1:i-2
            k3=k3+gf(j)*p(i-j-1);
        end
    end
    gf(d+i)=n(d+i)-k1*a1-k2*a2-k3*a3;
end
qq=0;
for i=d+1:1:d+NUM
    qq=qq+gf(i)^2;
end
qq=vpa(qq,4);

as=sym(zeros(1,2000));
for i=0:1:2*dn
    for j=0:1:2*dn-i
        for k=0:1:2*dn-i-j
            as(i*100+j*10+k+1)=expr_coeff(qq,a1^i*a2^j*a3^k);
            as(i*100+j*10+k+1)=xs(as(i*100+j*10+k+1),[a1 a2 a3]);
        end
    end
end
as=double(as);
f=@(x)as(9)*x(1)^0*x(2)^0*x(3)^8+as(18)*x(1)^0*x(2)^1*x(3)^7+as(27)*x(1)^0*x(2)^2*x(3)^6+as(36)*x(1)^0*x(2)^3*x(3)^5+as(45)*x(1)^0*x(2)^4*x(3)^4+as(54)*x(1)^0*x(2)^5*x(3)^3+as(63)*x(1)^0*x(2)^6*x(3)^2+as(72)*x(1)^0*x(2)^7*x(3)^1+as(81)*x(1)^0*x(2)^8*x(3)^2+...
    as(108)*x(1)^1*x(2)^0*x(3)^7+as(117)*x(1)^1*x(2)^1*x(3)^6+as(126)*x(1)^1*x(2)^2*x(3)^5+as(135)*x(1)^1*x(2)^3*x(3)^4+as(144)*x(1)^1*x(2)^4*x(3)^3+as(153)*x(1)^1*x(2)^5*x(3)^2+as(162)*x(1)^1*x(2)^6*x(3)^1+as(171)*x(1)^1*x(2)^7*x(3)^0+...
    as(207)*x(1)^2*x(2)^0*x(3)^6+as(216)*x(1)^2*x(2)^1*x(3)^5+as(225)*x(1)^2*x(2)^2*x(3)^4+as(234)*x(1)^2*x(2)^3*x(3)^3+as(243)*x(1)^2*x(2)^4*x(3)^2+as(252)*x(1)^2*x(2)^5*x(3)^1+as(261)*x(1)^2*x(2)^6*x(3)^0+...
    as(306)*x(1)^3*x(2)^0*x(3)^5+as(315)*x(1)^3*x(2)^1*x(3)^4+as(324)*x(1)^3*x(2)^2*x(3)^3+as(333)*x(1)^3*x(2)^3*x(3)^2+as(342)*x(1)^3*x(2)^4*x(3)^1+as(351)*x(1)^3*x(2)^5*x(3)^0+...
    as(405)*x(1)^4*x(2)^0*x(3)^4+as(414)*x(1)^4*x(2)^1*x(3)^3+as(423)*x(1)^4*x(2)^2*x(3)^2+as(432)*x(1)^4*x(2)^3*x(3)^1+as(441)*x(1)^4*x(2)^4*x(3)^0+...
    as(504)*x(1)^5*x(2)^0*x(3)^3+as(513)*x(1)^5*x(2)^1*x(3)^2+as(522)*x(1)^5*x(2)^2*x(3)^1+as(531)*x(1)^5*x(2)^3*x(3)^0+...
    as(603)*x(1)^6*x(2)^0*x(3)^2+as(612)*x(1)^6*x(2)^1*x(3)^1+as(621)*x(1)^6*x(2)^2*x(3)^0+...
    as(702)*x(1)^7*x(2)^0*x(3)^1+as(711)*x(1)^7*x(2)^1*x(3)^0+...
    as(801)*x(1)^8*x(2)^0*x(3)^0+...
    as(8)*x(1)^0*x(2)^0*x(3)^7+as(17)*x(1)^0*x(2)^1*x(3)^6+as(26)*x(1)^0*x(2)^2*x(3)^5+as(35)*x(1)^0*x(2)^3*x(3)^4+as(44)*x(1)^0*x(2)^4*x(3)^3+as(53)*x(1)^0*x(2)^5*x(3)^2+as(62)*x(1)^0*x(2)^6*x(3)^1+as(71)*x(1)^0*x(2)^7*x(3)^0+...
    as(107)*x(1)^1*x(2)^0*x(3)^6+as(116)*x(1)^1*x(2)^1*x(3)^5+as(125)*x(1)^1*x(2)^2*x(3)^4+as(134)*x(1)^1*x(2)^3*x(3)^3+as(143)*x(1)^1*x(2)^4*x(3)^2+as(152)*x(1)^1*x(2)^5*x(3)^1+as(161)*x(1)^1*x(2)^6*x(3)^0+...
    as(206)*x(1)^2*x(2)^0*x(3)^5+as(215)*x(1)^2*x(2)^1*x(3)^4+as(224)*x(1)^2*x(2)^2*x(3)^3+as(233)*x(1)^2*x(2)^3*x(3)^2+as(242)*x(1)^2*x(2)^4*x(3)^1+as(251)*x(1)^2*x(2)^5*x(3)^0+...
    as(305)*x(1)^3*x(2)^0*x(3)^4+as(314)*x(1)^3*x(2)^1*x(3)^3+as(323)*x(1)^3*x(2)^2*x(3)^2+as(332)*x(1)^3*x(2)^3*x(3)^1+as(341)*x(1)^3*x(2)^4*x(3)^0+...
    as(404)*x(1)^4*x(2)^0*x(3)^3+as(413)*x(1)^4*x(2)^1*x(3)^2+as(422)*x(1)^4*x(2)^2*x(3)^1+as(431)*x(1)^4*x(2)^3*x(3)^0+...
    as(503)*x(1)^5*x(2)^0*x(3)^2+as(512)*x(1)^5*x(2)^1*x(3)^1+as(521)*x(1)^5*x(2)^2*x(3)^0+...
    as(602)*x(1)^6*x(2)^0*x(3)^1+as(611)*x(1)^6*x(2)^1*x(3)^0+...
    as(701)*x(1)^7*x(2)^0*x(3)^0+...
    as(7)*x(1)^0*x(2)^0*x(3)^6+as(16)*x(1)^0*x(2)^1*x(3)^5+as(25)*x(1)^0*x(2)^2*x(3)^4+as(34)*x(1)^0*x(2)^3*x(3)^3+as(43)*x(1)^0*x(2)^4*x(3)^2+as(52)*x(1)^0*x(2)^5*x(3)^1+as(61)*x(1)^0*x(2)^6*x(3)^0+...
    as(106)*x(1)^1*x(2)^0*x(3)^5+as(115)*x(1)^1*x(2)^1*x(3)^4+as(124)*x(1)^1*x(2)^2*x(3)^3+as(133)*x(1)^1*x(2)^3*x(3)^2+as(142)*x(1)^1*x(2)^4*x(3)^1+as(151)*x(1)^1*x(2)^5*x(3)^0+...
    as(205)*x(1)^2*x(2)^0*x(3)^4+as(214)*x(1)^2*x(2)^1*x(3)^3+as(223)*x(1)^2*x(2)^2*x(3)^2+as(232)*x(1)^2*x(2)^3*x(3)^1+as(241)*x(1)^2*x(2)^4*x(3)^0+...
    as(304)*x(1)^3*x(2)^0*x(3)^3+as(313)*x(1)^3*x(2)^1*x(3)^2+as(322)*x(1)^3*x(2)^2*x(3)^1+as(331)*x(1)^3*x(2)^3*x(3)^0+...
    as(403)*x(1)^4*x(2)^0*x(3)^2+as(412)*x(1)^4*x(2)^1*x(3)^1+as(421)*x(1)^4*x(2)^2*x(3)^0+...
    as(502)*x(1)^5*x(2)^0*x(3)^1+as(511)*x(1)^5*x(2)^1*x(3)^0+...
    as(601)*x(1)^6*x(2)^0*x(3)^0+...
    as(6)*x(1)^0*x(2)^0*x(3)^5+as(15)*x(1)^0*x(2)^1*x(3)^4+as(24)*x(1)^0*x(2)^2*x(3)^3+as(33)*x(1)^0*x(2)^3*x(3)^2+as(42)*x(1)^0*x(2)^4*x(3)^1+as(51)*x(1)^0*x(2)^5*x(3)^0+...
    as(105)*x(1)^1*x(2)^0*x(3)^4+as(114)*x(1)^1*x(2)^1*x(3)^3+as(123)*x(1)^1*x(2)^2*x(3)^2+as(132)*x(1)^1*x(2)^3*x(3)^1+as(141)*x(1)^1*x(2)^4*x(3)^0+...
    as(204)*x(1)^2*x(2)^0*x(3)^3+as(213)*x(1)^2*x(2)^1*x(3)^2+as(222)*x(1)^2*x(2)^2*x(3)^1+as(231)*x(1)^2*x(2)^3*x(3)^0+...
    as(303)*x(1)^3*x(2)^0*x(3)^2+as(312)*x(1)^3*x(2)^1*x(3)^1+as(321)*x(1)^3*x(2)^2*x(3)^0+...
    as(402)*x(1)^4*x(2)^0*x(3)^1+as(411)*x(1)^4*x(2)^1*x(3)^0+...
    as(501)*x(1)^5*x(2)^0*x(3)^0+...
    as(5)*x(1)^0*x(2)^0*x(3)^4+as(14)*x(1)^0*x(2)^1*x(3)^3+as(23)*x(1)^0*x(2)^2*x(3)^2+as(32)*x(1)^0*x(2)^3*x(3)^1+as(41)*x(1)^0*x(2)^4*x(3)^0+...
    as(104)*x(1)^1*x(2)^0*x(3)^3+as(113)*x(1)^1*x(2)^1*x(3)^2+as(122)*x(1)^1*x(2)^2*x(3)^1+as(131)*x(1)^1*x(2)^3*x(3)^0+...
    as(203)*x(1)^2*x(2)^0*x(3)^2+as(212)*x(1)^2*x(2)^1*x(3)^1+as(221)*x(1)^2*x(2)^2*x(3)^0+...
    as(302)*x(1)^3*x(2)^0*x(3)^1+as(311)*x(1)^3*x(2)^1*x(3)^0+...
    as(401)*x(1)^4*x(2)^0*x(3)^0+...
    as(4)*x(1)^0*x(2)^0*x(3)^3+as(13)*x(1)^0*x(2)^1*x(3)^2+as(22)*x(1)^0*x(2)^2*x(3)^1+as(31)*x(1)^0*x(2)^3*x(3)^0+...
    as(103)*x(1)^1*x(2)^0*x(3)^2+as(112)*x(1)^1*x(2)^1*x(3)^1+as(121)*x(1)^1*x(2)^2*x(3)^0+...
    as(202)*x(1)^2*x(2)^0*x(3)^1+as(211)*x(1)^2*x(2)^1*x(3)^0+...
    as(301)*x(1)^3*x(2)^0*x(3)^0+...
    as(3)*x(1)^0*x(2)^0*x(3)^2+as(12)*x(1)^0*x(2)^1*x(3)^1+as(21)*x(1)^0*x(2)^2*x(3)^0+...
    as(102)*x(1)^1*x(2)^0*x(3)^1+as(111)*x(1)^1*x(2)^1*x(3)^0+...
    as(201)*x(1)^2*x(2)^0*x(3)^0+...
    as(2)*x(1)^0*x(2)^0*x(3)^1+as(11)*x(1)^0*x(2)^1*x(3)^0+...
    as(101)*x(1)^1*x(2)^0*x(3)^0;
x0=[0 0 0];
    A = [];
    b = [];
    Aeq = [];
    beq = [];
%     VLB = [0.0985 -100 -100];
%     VUB = [0.099 100 100];
    VLB = [];
    VUB = [];
% xxx=fmincon(f, x0, A, b, Aeq, beq, VLB, VUB,'fcontr');
xxx(ai,:)=fmincon(f, x0, A, b, Aeq, beq, VLB, VUB);
KZQ1=filt(xxx(ai,:),[1 -1-aa aa]);
P=TAD*filt([zeros(1,d) 1],1);
GGG1=N/(1+T*KZQ1);
% GGG1=NN/(1+TT*filt([zeros(1,d) 1],1)*KZQ1);
ggg1=impulse(GGG1,100030);
% for i=d+1:1:d+NUM
%     J(ai)=J(ai)+ggg1(i)^2;
% end
for i=d+1:1:d+100000
    J(ai)=J(ai)+ggg1(i)^2;
end
% for i=d+1:1:d+NUM
%     J(ai)=J(ai)+ggg1(i)^2;
% end
figure(ai)
ggg1=impulse(GGG1,100000);
plot(ggg1,'r');
end

Jmin=100000;
ji=0;
for i=1:1:21
    if Jmin>J(i)
        ji=i;
        Jmin=J(i);
    end
end
kcs=xxx(ji,:);
acs=-1+(ji-1)*0.1;
KZQ1=filt(kcs,[1 -1-acs acs]);

GGG1=N/(1+T*KZQ1);
ggg1=impulse(GGG1,100030);
GGG2=N*KZQ1/(1+T*KZQ1);
ggg2=impulse(GGG2,100030);
vl=0;
vr=0;
vu=0;
for i=1:1:d
    vl=vl+ggg1(i)^2;
end
for i=1:1:100000
    vr=vr+ggg1(i)^2;
end
for i=1:1:100000
    vu=vu+ggg2(i)^2;
end
[vl vr]
% [vl vr]



