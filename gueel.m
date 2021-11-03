a = [8 -6 2;-4 11 -7;4 -7 6];
b = [28;-40;33];
guuel(a,b)
function guuel(a,b)
[n m] = size(a);
for k=1:n-1
    for i=k+1:n
        if a(i,k) ~=0.0
            lam = a(i,k)/a(k,k);
            a(i,k:n) = a(i,k:n) - lam.*a(k,k:n);
            b(i) = b(i) - lam.*b(k);
        end
    end
end
for k=n:-1:1
    b(k) = (b(k) - (a(k,k+1:n)*b(k+1:n)))/a(k,k);
end
disp(b);
disp(a);
end