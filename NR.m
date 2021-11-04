clc;
close all;
clear all;
n=input('Enter the number of decimal places:');
x0 = input('Enter the intial approximation:');
NRmethod(x0,n)


function NRmethod(x0,n)
syms x;
% f = input('enter function\n');
f= x^2 - 3*x;
g=diff(f); %The Derivative of the Function

epsilon = 5*10^-(n+1)

for i=1:100
    f0=vpa(subs(f,x,x0)); %Calculating the value of function at x0
    f0_der=vpa(subs(g,x,x0)); %Calculating the value of function derivative at x0
    y=x0-f0/f0_der; % The Formula
    err=abs(y-x0);
    if err<epsilon %checking the amount of error at each iteration
        break
    end
    x0=y;
end
y = y - rem(y,10^-n); %Displaying upto required decimal places
fprintf('The Root is : %f \n',y);
fprintf('No. of Iterations : %d\n',i);
end
