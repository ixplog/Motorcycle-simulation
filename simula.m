% Simulation with certain values
function y_neu = simula(y)
    h = 0.01;
    S1_STAR = 0.5;
    S2_STAR = 0.2;
    S3_STAR = 0.5;
    S4_STAR = 0.2;
    C11 = 20000; 
    C12 = 2000; 
    C21 = 20000;
    C22 = 50000;
    C31 = C11;
    C32 = C12;
    C41 = C21;
    C42 = C22;
    D1 = 300; 
    D2 = 300; 
    M1 = 20;
    M2 = 20;
    M = 100;
    M_In = 20;
    L = 0.75;
    V = 10; 
    
    y_neu = ruku_schritt(@f, y, h, S1_STAR, S2_STAR, S3_STAR, S4_STAR, C11, C12, C21, C22, C31, C32, C41, C42, D1, D2, M1, M2, M, M_In, L, 9.81, @u, V);
end