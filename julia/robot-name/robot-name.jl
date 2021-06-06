using Random

const usednames = Set{String}()
const MAX_AVAILABLE_NAMES = 676000

function generatepossiblenames()
    result = Dict()
    letters = 'A':'Z'
    digits = '0':'9'
    idx = 1
    for c1 in letters, c2 in letters, d1 in digits, d2 in digits, d3 in digits
        name = c1 * c2 * d1 * d2 * d3
        result[idx] = name
        idx += 1
    end
    return result
end

const possiblenames = generatepossiblenames()

mutable struct Robot
    name::String
    Robot() = reset!(new())
end

function reset!(instance::Robot)
    if length(usednames) == MAX_AVAILABLE_NAMES
        error("there are no more available robot names")
    end
    instance.name = generatename()
    push!(usednames, instance.name)
    return instance
end

function generatename()
    newName = rand(possiblenames)
    delete!(possiblenames, newName.first)
    return newName.second
end

function name(instance::Robot)
    instance.name
end