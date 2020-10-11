function raindrops(number)
    has_factor(f) = number % f == 0
    rain = (has_factor(3) ? "Pling" : "") * (has_factor(5) ? "Plang" : "") * (has_factor(7) ? "Plong" : "")  
    length(rain) == 0 ? string(number) : rain
end