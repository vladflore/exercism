const allnames = Set{String}()

mutable struct Robot
    name::String
    function Robot()
        r = new()
        r.name = uniquename()
        push!(allnames, r.name)
        return r
    end
end

function uniquename()::String
    n = generatename()
    while n in allnames
        n = generatename()
    end
    return n
end

function generatename()
    return "$(rand('A':'Z') * rand('A':'Z'))" * lpad(string(rand(1:999)), 3, '0')
end

function reset!(instance::Robot)
    instance.name = uniquename()
end

function name(instance::Robot)
    instance.name
end