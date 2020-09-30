function score(x, y)
    distance_to_center = √(x^2 + y^2)
    if 0 <= distance_to_center <= 1 return 10 end
    if 1 < distance_to_center <= 5 return 5 end
    if 5 < distance_to_center <= 10 return 1 end
    return 0 
end