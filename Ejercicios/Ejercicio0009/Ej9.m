a = 0;
b = 1;
c = -1;
v = -1;

while 1
    while 1
        c = sqrt(a^2 + b^2);
        if (a + b + c >= 1000)
            break;
        end
        b = b + 1;
    end
    if (a + b + c == 1000) && (a < b) && (b < c) %(a < b) no hace falta.
        v = a*b*c;
        break;
    elseif a == 1000
        break;
    end
    a = a + 1;
    b = a + 1;
end
