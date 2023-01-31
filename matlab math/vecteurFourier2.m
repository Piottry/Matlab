function X = vecteurFourier2(fs,f0,n,forme)

x=0;
K=floor(fs/(2*f0)); %on arrondi a l'entier inferieur pour etre sur d'avoir K <fs/(2*f0) 



    X = zeros(length(n),1);

    switch forme
        case 0
            for t = n
                for y= -K:K
                    if mod(y,2)~=0
                        x = x + (4/(pi^2 * y^2)) * exp(1i*y*2*pi*f0*t/fs);
                    end
                end
            X(t+1,1)=x;

            x=0;
            end
    
        case 1
            for t = n
                for y = -K:K
                    if mod(y,2)~=0
                        x = x + ( 1/(pi*y) * sin(pi*y/2)) * exp( 1i *y*2*pi*f0*t/fs);
                
                    end
                end
            X(t+1,1)=x;

            x=0;
            end
    end
end