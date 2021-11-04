arr = input('insert x value\n');
fx = input('insert y value\n');
xp = input('insert x value\n');
LI(arr,fx,xp);


function LI(arr,fx,xp)
    yp = 0;
    
    for i=1:length(arr)
        p = 1;
        for j=1:length(arr)
            if i~=j
                p = p * (xp - arr(j))/(arr(i)-arr(j));
            end
        end
        yp = yp + p*fx(i);
        
    end
    fprintf("interpolated value at %.3f",yp);
    end