n = 600851475143;
p = 2;
t = n;
i = p;

while 1
    v = 2:i;
    if sum(mod(i, v) == 0) == 1
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