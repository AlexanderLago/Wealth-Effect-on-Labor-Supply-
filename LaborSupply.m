%f Use Newton's Method to find Labor Supply
%S.T. c1+c2/1+r -L^1-a -w holds 

function [L] = LaborSupply(L0,W,a,s,v,w,b,r)
%define function F(x):Rn->Rn

maxit=1000;
d=1.0;
tol=0.00001;

for it=1:maxit
    [fval,fder]=Newton(L0,W,a,s,v,w,b,r);
    L0=L0-(fval/fder);
    d=norm(fval);
    %fprintf('itearation %i, norm of f is %f, solution is %f \n',it,d,L);
    L=L0;
    if d<tol && i<maxit
        break
    end
end

end 





