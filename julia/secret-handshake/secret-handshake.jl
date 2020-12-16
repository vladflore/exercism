function secret_handshake(code)
    mask = 1
    ans = String[]
    for (index, value) in enumerate(("wink", "double blink", "close your eyes", "jump"))
        if (code & mask << (index - 1)) != 0 
            push!(ans, value)
        end
    end
    if (code & mask << 4) != 0
        reverse!(ans)
    end
    ans
end

function secret_handshake3(code::Integer)
    handshake = String[]
    (code >> 0) & 1 == 1 && push!(handshake, "wink")
    (code >> 1) & 1 == 1 && push!(handshake, "double blink")
    (code >> 2) & 1 == 1 && push!(handshake, "close your eyes")
    (code >> 3) & 1 == 1 && push!(handshake, "jump")
    (code >> 4) & 1 == 1 && reverse!(handshake)
    return handshake
end