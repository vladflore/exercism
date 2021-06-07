using Random

const rng = MersenneTwister()
const letters = 'A':'Z'
const digits = '0':'9'

const possiblenames = [c1 * c2 * d1 * d2 * d3 for c1 in letters for c2 in letters for d1 in digits for d2 in digits for d3 in digits]
shuffle!(rng, possiblenames)

mutable struct Robot
    name::String
    Robot() = new(generatename!())
end

function reset!(instance::Robot)
    instance.name = generatename!()
    return instance
end

function generatename!()
    isempty(possiblenames) ? error("there are no more available robot names") : pop!(possiblenames)
end

function name(instance::Robot)
    instance.name
end