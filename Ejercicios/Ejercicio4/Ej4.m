m0 = 999;
n0 = m0;
m = m0;
n = n0;
t0 = 0;

while 1
    t = m*n;
    if checkPalin(t)
        t0 = t;
        break;
    end
    m = m - 1;
    t = m*n;
    if checkPalin(t)
        t0 = t;
        break;
    end
    n = n - 1;
end

m1 = m;
m = m0;

while 1
    n = n0;
    while 1
        t = m*n;
        if t <= t0
            break;
        elseif checkPalin(t)
            %t0 = t;
            break;
        end
        n = n - 1;
    end
    if m <= m1
        break;
    elseif checkPalin(t)
        t0 = t;
        break;
    end
    m = m - 1;
end

function v = checkPalin(t)
    ts = string(t);
    tsr = reverse(ts);
    v = ts == tsr;
end