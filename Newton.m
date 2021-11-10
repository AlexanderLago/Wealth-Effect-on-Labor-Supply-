function [fval,fder] = Newton(L0,W,a,s,v,w,b,r)
%define function F(x):Rn->Rn

fval= Q2c(L0,W,a,s,v,w,b,r);
%fval=Newton


%compute derivative of L

fder = ((1-a).*(1./L0.^a)) + (((v+a)/s) * (((1-a)/w)^(1/s)) * (1+ (((b*(1+r))^(1/s))/(1+r))) *(1./(L0.^(1+((v+a)/s)))));

end 