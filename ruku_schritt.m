function y_neu = ruku_schritt(f, y, h, S1_STAR, S2_STAR, S3_STAR, S4_STAR, C11, C12, C21, C22, C31, C32, C41, C42, D1, D2, M1, M2, M, M_In, L, G, U, V)
    global s1_star;
    global s2_star;
    global s3_star;
    global s4_star;

    global c11;
    global c12;
    global c21;
    global c22;
    global c31;
    global c32;
    global c41;
    global c42;
    global d1;
    global d2;
    global m1;
    global m2;
    global m;
    global m_inertia;
    global l;
    global g;
    global u;
    global v;
    
    
    s1_star = S1_STAR;
    s2_star = S2_STAR;
    s3_star = S3_STAR;
    s4_star = S4_STAR;
    
    c11 = C11;
    c12 = C12;
    c21 = C21;
    c22 = C22;
    c31 = C31;
    c32 = C32;
    c41 = C41;
    c42 = C42;
    d1 = D1;
    d2 = D2;
    m1 = M1;
    m2 = M2;
    m = M;
    m_inertia = M_In;
    l = L;
    g = G;
    u = U;
    v = V;

    k1 = f(y);
    k2 = f(y + h/2*k1);
    k3 = f(y + h/2*k2);
    k4 = f(y + h*k3);
    y_neu = y + h/6*(k1 + 2*k2 + 2*k3 + k4);
    
    
    
%     u1 = u(y_neu(9) - l*cos(y_neu(7))/v);
%     u2 = u(y_neu(9) + l*cos(y_neu(7))/v);
    
%     %NECESSARY CONDITIONS:
%     %1) Wheels must be over the ground
%     %2) Centre of mass of car must be over the line connecting the wheels
%     %3) Angle of the car must be so that no part of the car is under the wheels
%     
%     %Wheels
%     if (y_neu(1) < u1)
%         y_neu(1) = u1;
%         y_neu(2) = 0;
%     end
%     if (y_neu(3) < u2)
%         y_neu(3) = u2;
%         y_neu(4) = 0;
%     end
%     
%     %Centre of mass of car
%     if(y_neu(5) < 1/2*(y_neu(3)-y_neu(1))+y_neu(1))
%         y_neu(5) = 1/2*(y_neu(3)-y_neu(1))+y_neu(1);
% %         y_neu(2) = 0;
% %         y_neu(4) = 0;
%         y_neu(6) = 0;
%     end
%     
%     %Angle
%     if(y_neu(7) > atan((y_neu(5) - y_neu(1))/(l*cos(y_neu(7)))))
%         y_neu(7) = atan((y_neu(5) - y_neu(1))/(l*y_neu(7)));
%         y_neu(8) = 0;
% %         y_neu(2) = 0;
%     end
%     if(y_neu(7) < atan((y_neu(3) - y_neu(5))/(l*cos(y_neu(7)))))
%         y_neu(7) = atan((y_neu(3) - y_neu(5))/(l*cos(y_neu(7))));
%         y_neu(8) = 0;
% %         y_neu(4) = 0;
%     end
end