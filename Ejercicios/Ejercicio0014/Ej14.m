m = 10^6;
num = 1;
sts0 = 0;

for i = 2:1:m-1
    sts = calc_steps_num(i);
    if sts > sts0
        sts0 = sts;
        num = i;
    end
end

function sts = calc_steps_num(n)
    sts = 0;
    while 1
        if n == 1
            break;
        elseif mod(n, 2) == 0
            n = n / 2;
        else
            n = 3*n + 1;
        end
        sts = sts + 1;
    end
end