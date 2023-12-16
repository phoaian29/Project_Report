function df = taylor_xapxitien(x, y, xi, Oh)
    h = x(2) - x(1);
    
    if xi < x(1) || xi > x(end)
        error('Gia tri dao ham khong hop le');
    end
    
    i = find(x >= xi, 1, 'first');
  
    if 1 < i && Oh == 1
        df = (y(i+1) - y(i)) / h;
    elseif 2 < i && Oh == 2
        df = (-y(i+2) + 4*y(i+1) - 3*y(i)) / (2*h);
    else
        error('Du lieu khong hop le');
    end
end
