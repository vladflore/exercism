def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("strands cannot have different lengths")
    return sum([1 if nucleotide != strand_b[idx] else 0 for idx, nucleotide in enumerate(strand_a)])
