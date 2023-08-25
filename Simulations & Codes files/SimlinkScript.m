clc
clear 
close all
%% system matrix
M=2; m1=0.1; m2=0.1; l1=0.5; l2=0.5; g=9.81;
A0=[(M+m1+m2) (m1+m2)*l1 m2*l2;
   ((m1+m2)*l1)/((m1+m2)*l1*g) ((m1+m2)*l2^2)/((m1+m2)*l1*g) (m2*l1*l2)/((m1+m2)*l1*g);
   (m2*l2)/(m2*l2*g) (m2*l1*l2)/(m2*l2*g) (m2*l2^2)/(m2*l2*g)];
eqmatrix = inv(A0);
%% LTI 
A = [0,1,0,0,0,0;
    0,0,-0.981,0,0,0;
    0,0,0,1,0,0;
    0,0,41.202,0,-19.62,0;
    0,0,0,0,0,1;
    0,0,-39.24,0,39.24,0;
    ];
B = [0;
    0.5;
    0;
    -1;
    0;
    0;
    ];
C= [1,0,0,0,0,0];
D= 0;
%% Full-State Feedback Controller 
Ts = 4;
OS = 0.2;
Re = 4/Ts;
zeta = -log(OS) / sqrt(pi^2 + log(OS)^2);
theta = acosd(zeta);
Im = Re*tand(theta);
P = [-Re+1i*Im  -Re-1i*Im  -5*Re  -5.1*Re -5.2*Re -5.3*Re -5.4*Re];

Ah = [A; -C];  Ah = [Ah, zeros(7,1)];
Bh = [B; 0];
 
K = place(Ah,Bh,P);
Ki = -K(end);
Aco = A;
K0 = K(1:6);
%% LQR Controller
Ah = [A; -C];  Ah = [Ah, zeros(7,1)];
Bh = [B; 0];

R1 = 0.01;
Q1 = [1 0 0 0 0 0 0;
     0 1 0 0 0 0 0;
     0 0 100 0 0 0 0;
     0 0 0 1 0 0 0;
     0 0 0 0 100 0 0;
     0 0 0 0 0 1 0;
     0 0 0 0 0 0 1];

K = lqr(Ah,Bh,Q1,R1); Ki = -K(end);
%% Observer Design
Po = [-15*Re  -15.1*Re -15.2*Re -15.3*Re -15.4*Re -15.5*Re];
Ke = place(A',C',Po)';
