"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    valid_nucleotides = ['A','C','G','T']
    d = Dict(n => 0 for n ∈ valid_nucleotides)
    for nucleotide ∈ strand
        if nucleotide ∉ valid_nucleotides
            throw(DomainError("Invalid nucleotide $nucleotide"))
        end
        d[nucleotide] = d[nucleotide] + 1
    end
    return d
end