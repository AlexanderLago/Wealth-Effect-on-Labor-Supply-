%Question 1

%a Function VectorInput

%b.) 1XN Vectors 

N= 10000;
a= rand(1,N);
s= rand(1,N);
x= rand(1,N);
p= rand(1,N);

VectorInput(N,a,s,x,p) %answers Y!

%c.) Use Vector operations. 

y = (1/N)*sum((p.* a.*(x.^s)))


%d.)

tic 
VectorInput(N,a,s,x,p);
toc

tic
y =  (1/N)*sum((p.* a.*(x.^s)));
toc

%Question 2

%a & b on paper

%c.) Q2c(L,W,a,s,v,w,b,r)

%d.) Define variables and create plot for range of values between 0.1-1.5
%W=1, a=0.66,v=1.3,s=2,w=1.5,b=0.98, r=0.04
%Plot W=0 and W=2

W=1;
a=0.66;
v=1.3;
s=2;
w=1.5;
b=0.98;
r=0.04;
L= [0.1:.1:1.5];
lhs1=Q2c(L,W,a,s,v,w,b,r);
lhs2=Q2c(L,2,a,s,v,w,b,r);
lhs0=Q2c(L,0,a,s,v,w,b,r);

%red is 0, blue is 1, green is 2
% I plotted them on top of each other with hold on. I attached the figure. 
plot(L,lhs1,'b-')
hold on 
plot(L,lhs0,'r')
plot(L,lhs2,'g*-')

%As W gets higher, the graph is higher. This means that at each x, having
%more W would already guarantee you a higher consumption from the start.
%Therefore, people with higher W's choose to work less, as shown for the
%max being higher at the same x for 0<1<2. This means that W=0 will work
%most. 

%As we can see from the graph, W=2 reaches Y=0 first, adn W=0 reaches it 
%last. Since the X-axis is L, this means that for the starting X, the 
%individual with W=2 requires less Labor than 1 and 0. 1 also requires less than 0. 

%Intuitively this reflects the lesser desire to work if endowed with more. 
%The lesser endowed, the more the agent chooses to work.  

%e on paper

%f Newton's Method


%g Set W =2 and compute LS
%start at L0 = 0.5 and then L0=3
% %%Iterate using Newton's method until convergence
L0=0.5;% initial labor supply
L=L0;
W=2;
i=0;
a=0.66;
v = 1.3;
s = 2;
w =1.5;
b = 0.98;
r=0.04;   %L0,W,a,s,v,w,b,r

LaborSupply(0.5,2,0.66,2,1.3,1.5,0.98,0.04)

%fun= @(ls)LaborSupply(L0,W,a,s,v,w,b,r);
%ls = fsolve(fun,L0); %testing Newton's Method iterations. 

%when W=2 & L0=0.5, solution converges to L =  0.3409. When L0= 3, the
%solution jumps to a crazy high number. This is because a suitable intial
%guess must be made or the computer will jump to another root. The solution
%could run away to the asymptotic region of the function and not compute a
%root as it most likely did when L0=3. 0.5 is a good starting point because
%it is close to the root. 










