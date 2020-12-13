def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError("strands cannot have different lengths")
    return sum([n_a != n_b for n_a, n_b in zip(strand_a, strand_b)])