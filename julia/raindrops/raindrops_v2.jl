function raindrops_v2(number)
    if number % 3 == 0
        if number % 5 == 0
            if number % 7 == 0
                return "PlingPlangPlong"
            else
                return "PlingPlang"
            end
        elseif number % 7 == 0
            return "PlingPlong"
        else
            return "Pling"
        end
    elseif number % 5 == 0
        if number % 7 == 0
            return "PlangPlong"
        else
            return "Plang"
        end
    elseif number % 7 == 0
        return "Plong"
    else
        return string(number)
    end
end