function gr = u(t)
    if(t<3)
        gr = 0.1;
    elseif(t<13)
        gr = 0.1 + 0.2*sin(13*pi*(t-3)/10);
    elseif(t<23)
        if(t<17)
            gr = 0.1;
        elseif(t<17.3)
            gr = 0.1 + 3*(t-17);
        else
            gr = 1.0;
        end
    else
        gr = 1.0 + 2/pi*atan(5*(23-t));
    end
end

function gr = u1(t)
    if(t<10)
        gr = 0;
    elseif(t<11)
        gr = 0.3*(t-10);
    else
        gr = 0.3;
    end
end

function gr = u2(t)
    if(t<5)
        gr = 0;
    else
        gr = 0.05*sin(2*pi*(t-5));
    end
end

function gr = u3(t)
    if(t<10)
        gr = 0;
    elseif(t<50)
        gr = 20*atan(t-10);
    else
        gr = 20*atan(50-10) - (t-50);
    end
end