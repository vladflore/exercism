function encode(key, c::Char)
    transposed = Int(c) + key
    if c in 'a':'z'
        return transposed <= 122 ? Char(transposed) : 'a' + transposed % 122 - 1
    elseif c in 'A':'Z'
        return transposed <= 90 ? Char(transposed) : 'A' + transposed % 90 - 1
    end
    return c
end

function rotate(key, input::Char)
    return encode(key, input)
end

function rotate(key, input::String)
    return map(c -> encode(key, c), input)
end

macro R13_str(input)
    return :(rotate(13, $input))
end

for i in 0:26
    @eval macro $(Symbol("R", i, "_str"))(input)
        rotate($i, input)
    end
end