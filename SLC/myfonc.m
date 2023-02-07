function result=myfonc(x,t)
    
    P=length(x);

    if x==fliplr(x)
        disp("paire")
        figure
        plot(t,(x + fliplr(x))/2);
        title('Partie paire');
    elseif x==-fliplr(x)
        disp("Impaire")
        figure
        plot(t,(x - fliplr(x))/2);
        title('Partie impaire');
    else
        disp("ni paire ni impaire")
        figure
        plot(t,(x - fliplr(x))/2);
        title('Partie impaire');
        figure
        plot(t,(x + fliplr(x))/2);
        title('Partie paire');
    end


    if all(abs(x( 1 : round(P/2) )) -  abs(-x( round(P/2) : P ))) <=10^(-4)
        disp("Il y a demiperiodi !!!")
    end

end