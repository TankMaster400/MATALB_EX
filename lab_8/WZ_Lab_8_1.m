clear variables;
clc;

% syms k;
% delta = k^2-4*3*3;
% equ = delta > 0;
% sol = solve(equ,'ReturnCondition', true);
% disp(sol);

% syms x k
% assume(x, 'Real');
% assume(k, 'Real');
% equ = 3*x^2+k*x+3 ==0;
% sol = solve(equ,'ReturnCondition', true); 
% equ2 =[sol.x(1)~=sol.x(2);...
%         sol.conditions]
% sol2 = solve(equ2,'ReturnCondition', true);

% syms x k
% assume(x, 'Real');
% assume(k, 'Real');
% equ = 2*x^2-(k-1)*x+k+1==0
% sol = solve(equ,'ReturnCondition', true); 
% equ2 = [abs(sol.x(1)-sol.x(2))==1;...
%             sol.conditions]
% sol2 = solve(equ2,'ReturnCondition', true)
% for i=1:length(sol2.k)
%     disp(sol2.k(i));
%     equ3=subs(equ,k,sol2.k(i));
%     sol3 =solve(equ3);
%     disp(sol3);
% end

syms x k
assume(x, 'Real');
assume(k, 'Real');
equ = x^2 +(2*k+6)*x +4*k+12 ==0;
sol = solve(equ,'ReturnCondition', true);
equ2 = [sol.x(1)>-1;...
        sol.x(2)>-1;...
        sol.conditions];
sol2 = solve(equ2,'ReturnCondition', true);
disp(sol2);

% syms x k
% assume(x, 'Real');
% assume(k, 'Real');
% equ = (k^2 -5*k +3)*x^2 +(3*k-1)*x +2 ==0;
% sol = solve(equ,'ReturnCondition', true);
% disp(sol);
% sol.x = sort(sol.x, 'ascend');
% equ2 = [sol.x(1)==0.5*sol.x(2);...
%          sol.conditions]
% sol2 = solve(equ2,'ReturnCondition', true);
% disp(sol2.k)

