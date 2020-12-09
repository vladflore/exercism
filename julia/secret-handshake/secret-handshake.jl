function secret_handshake(code)
    mask = 1
    ans = []
    for (index, value) in enumerate(["wink","double blink","close your eyes","jump"])
        if (code & mask << (index - 1)) != 0 
            push!(ans, value)
        end
    end
    if (code & mask << 4) != 0
        reverse!(ans)
    end
    ans
end