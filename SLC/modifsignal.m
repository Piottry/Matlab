function result=modifsignal(x,t,A,a,b)



figure
subplot(2,2,1);
plot(t,x);
xlim([min(t) max(t)])
ylim([min(x) max(x)])
title('Fonction x(t)')

%modification ampli
subplot(2,2,2);
plot(t,x*A);
xlim([min(t) max(t)])
ylim([min(x) max(x)])
title('Modification amplitude')

%changement echelle
subplot(2,2,3);
plot(t/b,x);
xlim([min(t) max(t)])
ylim([min(x) max(x)])
title('Modification echelle')

%decalage dans le temps
subplot(2,2,4);
plot(t+a,x);
xlim([min(t) max(t)])
ylim([min(x) max(x)])
title('Decalage dans le temps')

end