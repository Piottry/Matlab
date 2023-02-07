function [s,t] = signal_P1718(T,a,dt) 

t=0:dt:T; 
e=sin(pi/T*t); 
for k=1:length(t) 
    if (0<=t(k) && t(k)<=a*T)
        s(k)=e(k); 
    elseif (a*T<=t(k) && t(k)<=(1-a)*T)
        s(k)=sin(pi*a); 
    else
        s(k)=e(k);
    end
end
t=[t T+t]; 
s=[s s]; 
end 