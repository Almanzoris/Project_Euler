n = 10001;
p = [2];
i = 3;

while 1
    if length(p) == n
        break;
    end
    if all(mod(i, p) ~= 0)
        p(end+1) = i;
    end
    i = i + 1;
end

r = p(end);