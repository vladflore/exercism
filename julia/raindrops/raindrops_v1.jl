function raindrops_original(number)
    d = Dict(3 => "Pling", 5 => "Plang", 7 => "Plong")
    sound = join(map(n -> d[n], filter(n -> number % n == 0, [3,5,7])))
    length(sound) == 0 ? string(number) : sound
end