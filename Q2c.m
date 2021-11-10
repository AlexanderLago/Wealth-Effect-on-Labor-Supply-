%c named Q2c (F)for keeping track. 

function [LHS] = Q2c(L,W,a,s,v,w,b,r)

LHS= (L.^(1-a))+W-((1./(L.^(((v+a)./s))))*(((1-a)/w)^(1/s))*(1+(((b*(1+r))^(1/s))/(1+r))));

end

