"""
    count_nucleotides(strand)

The frequency of each nucleotide within `strand` as a dictionary.

Invalid strands raise a `DomainError`.

"""
function count_nucleotides(strand)
    d = Dict(n => 0 for n ∈ ['A','C','G','T'])
    for nucleotide ∈ strand
        if nucleotide ∉ keys(d)
            throw(DomainError("$nucleotide","Invalid nucleotide"))
        end
        d[nucleotide] += 1
    end
    return d
end