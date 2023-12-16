function df = taylor_xapxitrungtam(x, y, xi, Oh)
    h = x(2) - x(1);
    
    if xi < x(1) || xi > x(end)
        error('Gia tri dao ham khong hop le');
    end
    
    i = find(x >= xi, 1, 'first');
  
    if i > 1 && Oh == 1
        df = (y(i+1) - y(i-1)) / (2*h);
    elseif i > 2 && Oh == 2
        df = (-y(i+2) + 8*y(i+1) - 8*y(i-1) + y(i-2)) / (12*h);
    else
        error('Du lieu khong hop le');
    end
end
