function [y ]= synth(notes,durees,forme,fs)

gamme440=440*2.^((0:12)/12);
la_majeur=gamme440([1 3 5 6 8 10 12 13]);
freq=la_majeur(notes);
y=[];

    for i=1:length(notes)
        n=0:durees(i)*fs; %n correspond a la durée souhaité par l'utilisateur
        X=vecteurFourier2(fs,freq(i),n,forme); %calcul de notre vecteur
        y=cat(1,y,real(X)); %on conatène
    end

end