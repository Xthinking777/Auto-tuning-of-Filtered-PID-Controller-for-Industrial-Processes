function [y] = Fcor(Q,T,N,y_a)


% Q=C2;T=P_real;N=N_real;
N.u='un';N.y='yn';
T.u='ut';T.y='yt';
Q.u='y';Q.y='yq';
sum1=sumblk('ut=-yq');
sum2=sumblk('y=yn+yt');
%sys1=connect(Q,T,Gw,N,sum1,sum2,'ugw','y');
G1=connect(Q,T,N,sum1,sum2,'un','y');

NN = 500000;               
%L = 50;                   
t=0:NN-1;
e1=y_a;
y=lsim(G1,e1,t);                 


end