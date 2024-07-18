n = 4000000;
v = [1 2];
i = 3;

while 1
    w = v(i-1) + v(i-2); %fibonacci(n + 1);
    if w <= n
        v(i) = w;
    else
        break;
    end
    i = i + 1;
end

u = (mod(v, 2) == 0);
s = sum(v.*u);