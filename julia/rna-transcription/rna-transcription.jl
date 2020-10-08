function to_rna(dna)
    function complement(n)
        n = uppercase(n)
        if n == 'G'
            return 'C'
        elseif n == 'C'
            return 'G'
        elseif n == 'T'
            return 'A'
        elseif n == 'A'
            return 'U'
        else
            throw(ErrorException("Invalid nucleotide $n in DNA strand"))
        end
    end
    return map(n -> complement(n), dna)
end


