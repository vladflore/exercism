"""
    ispangram(input)

Return `true` if `input` contains every alphabetic character (case insensitive).

"""
function ispangram_orig(input)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    input = lowercase(input)
    for letter ∈ alphabet
        if letter ∉ input
            return false
        end
    end
    return true
end

function ispangram1(input)
    return all(letter -> (letter ∈ lowercase(input)), 'a':'z')
end

ispangram2(input) = 'a':'z' ⊆ lowercase(input)

ispangram3(input) = all(in(lowercase(input)), 'a':'z')

ispangram4(input) = all(c -> in(c, input) || in(uppercase(c), input), 'a':'z')

function ispangram5(input)
    utf8 = transcode(UInt8, input)
    present = zeros(Bool, 256)
    @inbounds for byte in utf8
        # byte | 0x20 will make uppercase ASCII into lowercase ASCII.
        # Other characters will be mangled, but we don't care about that.
        present[(byte | 0x20) + 1] = true
    end
    all(present[char + 1] for char in UInt8('a'):UInt8('z'))
end