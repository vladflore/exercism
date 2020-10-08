const NUMBER_OF_LETTERS = 26

function rotate(key, input::Char)
    if !isletter(input)
        return input
    end
    first_letter = islowercase(input) ? 'a' : 'A'
    initial_pos = input - first_letter
    return first_letter + (initial_pos + key) % NUMBER_OF_LETTERS
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