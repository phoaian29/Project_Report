function [yx, Pn] = NoiSuy_Lagrange(x, y)
    syms u;
    
    n = length(x);
    Pn = sym(0);

    for i = 1:n
        term = y(i);
        for j = 1:n
            if j ~= i
                term = term * (u - x(j)) / (x(i) - x(j));
            end
        end
        Pn = Pn + term;
    end
    yx = matlabFunction(Pn);
    Pn = simplify(Pn);   
end
