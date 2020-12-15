function encode(s)
    count = 1
    ans = []
    for idx in 2:length(s)
        if s[idx] == s[idx - 1]
            count += 1
        else
            if count > 1
                push!(ans, count)
            end
            push!(ans, s[idx - 1])
            count = 1
        end
        if idx == length(s)
            if count > 1
                push!(ans, count)
            end
            push!(ans, s[idx])
        end
    end
    join(ans)
end



function decode(s)
    
end