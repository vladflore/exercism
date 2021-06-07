using Random

const rng = MersenneTwister()

function generatepossiblenames()
    result = String[]
    letters = 'A':'Z'
    digits = '0':'9'
    for c1 in letters, c2 in letters, d1 in digits, d2 in digits, d3 in digits
        name = c1 * c2 * d1 * d2 * d3
        push!(result, name)
    end
    println("Done generating all possible names")
    return result
end

const possiblenames = generatepossiblenames()

mutable struct Robot
    name::String
    Robot() = reset!(new())
end

function reset!(instance::Robot)
    if length(possiblenames) == 0
        error("there are no more available robot names")
    end
    instance.name = generatename()
    return instance
end

function generatename()
    shuffle!(rng, possiblenames)
    return pop!(possiblenames)
end

function name(instance::Robot)
    instance.name
end