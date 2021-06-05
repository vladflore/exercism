using Random

const allnames = Set{String}()

mutable struct Robot
    name::String
    Robot() = reset!(new())
end

function reset!(instance::Robot)
    if length(allnames) == 676000
        error("there are no more available robot names")
    end
    n = generatename()
    while n in allnames
        n = generatename()
    end
    push!(allnames, n)
    instance.name = n
    return instance
end

function generatename()
    return randstring('A':'Z', 2) * randstring('0':'9', 3) 
end

function name(instance::Robot)
    instance.name
end