syms y(t) x(t) t 


eq1 = diff(y,t) == 3*x + 4*y;
eq2 = diff(x,t) == -4*x +3*y;
eqns = [eq1,eq2];
cond = [y(0)==1,x(0)==1];
sol = dsolve(eqns,cond);
fprintf("solution of x is")
disp(sol.x)
fprintf("solution of y is")
disp(sol.y)