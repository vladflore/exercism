"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram(input)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    input = lowercase(input)
    for letter ∈ alphabet
        if letter ∉ input
            return false
        end
    end
    return true
end