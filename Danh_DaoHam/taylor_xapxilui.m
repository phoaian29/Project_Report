function df = taylor_xapxilui(x, y, xi, Oh)
    h = x(2) - x(1);
    
    if xi < x(1) || xi > x(end)
        error('Gia tri dao ham khong hop le');
    end     
    
    i = find(x >= xi, 1, 'first');
  
    if i > 1 && Oh == 1
        df = (y(i) - y(i-1)) / h;
    elseif i > 2 && Oh == 2
        df = (y(i-2) - 4*y(i-1) + 3*y(i)) / (2*h);
    else
        error('Du lieu khong hop le');
    end
end
