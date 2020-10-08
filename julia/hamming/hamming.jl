"Computes the hamming distance between two strands."
function distance(a, b)
    if length(a) != length(b)
        throw(ArgumentError("Strands $a and $b are not of same length"))
    end
    diff = 0
    for (idx, nucleotide) in enumerate(a)
        if nucleotide != b[idx]
            diff += 1 
        end
    end
    return diff
end