function raindrops_sol(number)
    f3 = number % 3 == 0
    f5 = number % 5 == 0
    f7 = number % 7 == 0
    if (f3 | f5 | f7)
        return string(  (f3 ? "Pling" : ""),
                        (f5 ? "Plang" : ""),
                        (f7 ? "Plong" : "")  )
    end
    string(number)
end