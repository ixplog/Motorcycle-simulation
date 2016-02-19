function movement()
format long;

    y = [0.2863; 0; 0.2863; 0; 0.6028; 0; 0; 0; 0];
    
    V = 10;
    L = 0.75;
    
    i = 1;
    results(:,i) = y;
    while results(9,i) <= 33
        y = simula(y);
        i = i+1;
        results(:,i) = y;
    end

    %%y-Vektor erzeugen und transponieren
    y=results';
    i = 1;
    t = 0;
    while t < 33

        %%%plot    
        clf;
        hold on;
        axis([-2 2 -0.5 3]);

        % ground
        a = -2:0.1:2;
        b=0;
        for j = 1:41
            b(1,j) = u(y(i,9) + a(1,j)/V);            
        end
        plot(a, b, 'm');

        % car
        a = -L/2:0.01:L/2;
        b = y(i,7)*a + y(i,5);
        plot(a, b, 'o', 'MarkerFaceColor','c', 'MarkerSize',10);

        % wheels
        plot(-L/2, y(i,1), 'o', 'MarkerFaceColor','g', 'MarkerSize',20);
        plot(L/2, y(i,3), 'o', 'MarkerFaceColor','g', 'MarkerSize',20);

        drawnow;

        t = y(i,9);
        i = i+1;
    end
    
%     %Plot the last position as final figure
% 
%         %%%plot    
%         clf;
%         hold on;
%         axis([-2 2 -0.5 3]);
% 
%         % ground
%         results = -2:0.1:2;
%         b = u(y(i,9)*ones(1, size(results, 2)) + results/V);
%         plot(results, b, 'm');
% 
%         % car
%         results = -L/2:0.1:L/2;
%         b = y(i,7)*results + y(i,5);
%         plot(results, b, 'o', 'MarkerFaceColor','c', 'MarkerSize',10);
% 
%         % wheels
%         plot(-L/2, y(i,1), 'o', 'MarkerFaceColor','g', 'MarkerSize',20);
%         plot(L/2, y(i,3), 'o', 'MarkerFaceColor','g', 'MarkerSize',20);
% 
%         drawnow;
    
end