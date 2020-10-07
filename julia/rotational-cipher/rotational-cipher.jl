function rotate(key, input::Char)
    transposed = Int(input) + key
    if input in 'a':'z'
        return transposed <= 122 ? Char(transposed) : 'a' + transposed % 122 - 1
    elseif input in 'A':'Z'
        return transposed <= 90 ? Char(transposed) : 'A' + transposed % 90 - 1
    end
    return input
end

function rotate(key, input::String)
    return map(c -> rotate(key, c), input)
end

macro R13_str(input)
    rotate(13, input)
end

for i in 0:26
    @eval macro $(Symbol("R", i, "_str"))(input)
        rotate($i, input)
    end
end