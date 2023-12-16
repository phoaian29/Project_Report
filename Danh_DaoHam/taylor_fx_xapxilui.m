function df = taylor_fx_xapxilui(f, xi, h, Oh)
    
    fx = str2func(['@(x)' f]);
    
    if Oh == 1
        df = (fx(xi) - fx(xi - h)) / h;
    elseif Oh == 2
        df = (fx(xi - 2*h) - 4*fx(xi - h) + 3*fx(xi)) / (2 * h);
    else
        error('Bac khong duoc ho tro. Su dung Oh = 2 hoac 4 cho xap xi dao ham.');
    end
end
