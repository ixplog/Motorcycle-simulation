function result = f(y) % y vector of 9 elements, the last one is time!
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


    result = zeros(9, 1);
    
    u1 = u(y(9) - l*cos(y(7))/v);
    u2 = u(y(9) + l*cos(y(7))/v);
    
    deltas1 = y(5) - l*sin(y(7)) - y(1) - s1_star;
    deltas2 = y(1) - u1 - s2_star;
    deltas1_dot = y(6) - l*cos(y(7))*y(8) - y(2);
    
    deltas3 = y(5) + l*sin(y(7)) - y(3) - s3_star;
    deltas4 = y(3) - u2 - s4_star;
    deltas3_dot = y(6) + l*cos(y(7))*y(8) - y(4);
    
    if (deltas2 < 0 && deltas4 < 0)
        result(1) = y(2);
        result(2) = 1/m1 * ( - m1*g + c11*deltas1^3 + c12*deltas1 - c21*deltas2^3 - c22*deltas2 + d1*(deltas1_dot) );
        result(3) = y(4);
        result(4) = 1/m2 * ( - m2*g + c31*deltas3^3 + c32*deltas3 - c41*deltas4^3 - c42*deltas4 + d2*(deltas3_dot) );
        result(5) = y(6);
        result(6) = 1/m * ( - m*g - c11*deltas1^3 - c12*deltas1 - c31*deltas3^3 - c32*deltas3 - d1*(deltas1_dot) - d2*(deltas3_dot) );
        result(7) = y(8);
        result(8) = (l*cos(y(7)))/(m_inertia)*( - c31*deltas3^3 - c32*deltas3 - d2*(deltas3_dot) + c11*deltas1^3 + c12*deltas1 + d1*(deltas1_dot));
        %Derivative of time in time
        result(9) = 1;
    end
    
        
    if (deltas2 > 0 && deltas4 < 0)
        result(1) = y(2);
        result(2) = 1/m1 * ( - m1*g + c11*deltas1^3 + c12*deltas1 + d1*(deltas1_dot) );
        result(3) = y(4);
        result(4) = 1/m2 * ( - m2*g + c31*deltas3^3 + c32*deltas3 - c41*deltas4^3 - c42*deltas4 + d2*(deltas3_dot) );
        result(5) = y(6);
        result(6) = 1/m * ( - m*g - c11*deltas1^3 - c12*deltas1 - c31*deltas3^3 - c32*deltas3 - d1*(deltas1_dot) - d2*(deltas3_dot) );
        result(7) = y(8);
        result(8) = (l*cos(y(7)))/(m_inertia)*( - c31*deltas3^3 - c32*deltas3 - d2*(deltas3_dot) + c11*deltas1^3 + c12*deltas1 + d1*(deltas1_dot));
        %Derivative of time in time
        result(9) = 1;
    end
    
        
    if (deltas2 < 0 && deltas4 > 0)
        result(1) = y(2);
        result(2) = 1/m1 * ( - m1*g + c11*deltas1^3 + c12*deltas1 - c21*deltas2^3 - c22*deltas2 + d1*(deltas1_dot) );
        result(3) = y(4);
        result(4) = 1/m2 * ( - m2*g + c31*deltas3^3 + c32*deltas3 + d2*(deltas3_dot) );
        result(5) = y(6);
        result(6) = 1/m * ( - m*g - c11*deltas1^3 - c12*deltas1 - c31*deltas3^3 - c32*deltas3 - d1*(deltas1_dot) - d2*(deltas3_dot) );
        result(7) = y(8);
        result(8) = (l*cos(y(7)))/(m_inertia)*( - c31*deltas3^3 - c32*deltas3 - d2*(deltas3_dot) + c11*deltas1^3 + c12*deltas1 + d1*(deltas1_dot));
        %Derivative of time in time
        result(9) = 1;
    end
    
     if (deltas2 > 0 && deltas4 > 0)
        result(1) = y(2);
        result(2) = 1/m1 * ( - m1*g + c11*deltas1^3 + c12*deltas1 + d1*(deltas1_dot) );
        result(3) = y(4);
        result(4) = 1/m2 * ( - m2*g + c31*deltas3^3 + c32*deltas3 + d2*(deltas3_dot) );
        result(5) = y(6);
        result(6) = 1/m * ( - m*g - c11*deltas1^3 - c12*deltas1 - c31*deltas3^3 - c32*deltas3 - d1*(deltas1_dot) - d2*(deltas3_dot) );
        result(7) = y(8);
        result(8) = (l*cos(y(7)))/(m_inertia)*( - c31*deltas3^3 - c32*deltas3 - d2*(deltas3_dot) + c11*deltas1^3 + c12*deltas1 + d1*(deltas1_dot));
        %Derivative of time in time
        result(9) = 1;
    end   
    
end