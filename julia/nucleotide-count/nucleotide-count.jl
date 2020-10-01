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

function count_nucleotides2(strand)
    ca = cc = cg = ct = 0
    for nuc in strand
        if nuc == 'A'
            ca += 1
        elseif nuc == 'C'
            cc += 1
        elseif nuc == 'G'
            cg += 1
        elseif nuc == 'T'
            ct += 1
        else
            throw(DomainError(nuc, "only A, C, G and T are valid nucleotides"))
        end
    end
    return Dict('A' => ca, 'C' => cc, 'G' => cg, 'T' => ct)
end

function count_nucleotides3(strand)
    counts = Dict((base => count(==(base), strand)) for base in "ACGT")
    if sum(values(counts)) != length(strand)
        throw(DomainError(strand, "only A, C, G and T are valid nucleotides"))
    end
    counts
end

function count_nucleotides4(strand)
    utf8 = transcode(UInt8, strand)
    # println(utf8)
    counts = zeros(Int, 256)
    @inbounds for byte in utf8
        counts[byte + 1] += 1
    end
    # println(counts)
    result = Dict(base => counts[Int(base) + 1] for base in "ACGT")
    if sum(values(result)) != length(utf8)
        throw(DomainError(strand, "only A, C, G and T are valid nucleotides"))
    end
    result
end

# println(count_nucleotides4("ACGTACGTACGT"))