n = 600851475143;
p = 2;
t = n;
i = p;

while 1
    v = 2:i-1;
    if sum(mod(i, v) == 0) == 0
        p = i;
        while 1
            if (t == 1) || (mod(t, i) ~= 0)
                break;
            else
                t = t / i;
            end
        end
    end
    if t == 1
        break;
    end
    i = i + 1;
end
