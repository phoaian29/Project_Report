function df = taylor_fx_xapxitrungtam(f, xi, h, Oh)
    
    fx = str2func(['@(x)' f]);
    
    if Oh == 1
        df = (fx(xi+h) - fx(xi-h)) / (2*h);
    elseif Oh == 2
        df = (-fx(xi+2*h) + 8*fx(xi+h) - 8*fx(xi-h) + fx(xi-2*h)) / (12*h);
    else
        error('Bac khong duoc ho tro');
    end
end