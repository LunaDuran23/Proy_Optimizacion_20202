syms x
ck =1000:1100;
xk = [0,0,0,0,0];
xk1 = [0,0,0,0,0];

for i = 1:length(ck)
    c= ck(i);
    q=@(x) -x(1)-x(2)-x(3)-x(4)-x(5)+c*(max(0,-(400*x(1)*log(x(5)+1)-100*x(2)-100*x(3)-x(3)^2-100*x(4))))^2 + c*(max(0,-(-1000*x(1) - 1250*x(2) - 1333*x(3) + 4800*x(4)*log(x(5)) - 1000*x(5))))^2 + c*(286*x(1) - 270*x(3) + 56*x(4) + 150*x(5) - 1040)^2 + c*(max(0,x(1)^0.1 - x(2) + x(3)^(1/3) + x(5)^0.1))^2 + c*(max(0,2*x(1) + x(4) + 5*x(5) - 100))^2 + c*(max(0,-x(1)))^2 + c*(max(0,-x(2)))^2 + c*(max(0,6-x(3)))^2 + c*(max(0,-x(4)))^2 + c*(max(0,-x(5)))^2;
    xk2 = fminsearch(q,xk);
    xk = xk2;
end

xk2