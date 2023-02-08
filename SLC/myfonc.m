function result=myfonc(x,t,y)
    
    

    if x==fliplr(x)
        disp("La fonction est paire")
        figure
        plot(t,(x + fliplr(x))/2);
        title('Partie paire');
    elseif x==-fliplr(x)
        disp("La fonction est Impaire")
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


    if all(x +  y  == 0)
        disp("Il y a demi onde!!!")
    end

end