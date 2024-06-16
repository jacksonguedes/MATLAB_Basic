function dx = odefcn(t,x,m,c,k,f_input,ft);
f = interp1(ft,f_input,t);
dx = [x(2);
    1/m*(-k.*x(1)-c.*x(2) +f)];
end
    
    
    