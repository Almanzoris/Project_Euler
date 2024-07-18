n = 2*10^6;
p = [2];
i = 3;

while 1
    if i == n
        break;
    end
    prime = 1;
    for j = 1:1:length(p)
        if mod(i, p(j)) == 0
            prime = 0;
            break;
        end
    end
    if prime == 1
        p(end+1) = i;
    end
    i = i + 1;
end

s = sum(p);