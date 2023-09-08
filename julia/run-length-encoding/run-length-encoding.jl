function encode(s)
    encoded = []
    for i in eachindex(s)
        if i == 1
            push!(encoded, [1, s[i]])
        elseif s[i] == s[i-1]
            encoded[end][1] += 1
        else
            push!(encoded, [1, s[i]])
        end
    end
    return join(map(x -> x[1] == 1 ? x[2] : "$(x[1])$(x[2])", encoded))
end



function decode(s)
    decoded = ""
    num = ""
    for i in eachindex(s)
        if isdigit(s[i])
            num = string(num, s[i])
        else
            if length(num) == 0
                decoded = string(decoded, s[i])
            else
                decoded = string(decoded, repeat(s[i], parse(Int, num)))
            end
            num = ""
        end
    end
    return decoded
end