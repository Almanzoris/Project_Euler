v = 2:20;
w = [];

for i = 1:1:length(v)
    if v(i) ~= 1
        t = v(i);
        r0 = 1;
        for j = i:1:length(v)
            r = 0;
            while 1
                if mod(v(j), t) ~= 0
                    break;
                end
                v(j) = v(j)/t;
                r = r + 1;
            end
            if r0 < r
                r0 = r;
            end
        end
        w(end + 1) = t^r0;
    end
end

p = prod(w);