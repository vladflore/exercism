struct Clock
    hour::Int
    minute::Int

    function Clock(hour, minute)
        if minute < 0
            hour = hour + minute ÷ 60 - 1
            minute = 60 + (minute % 60)
        end
        if hour < 0
            hour = 24 + (hour % 24)
        end
        hour = hour + (minute ÷ 60)
        hour = hour % 24
        minute = minute % 60

        new(hour, minute)
    end
end

using Dates
import Base.+, Base.-, Base.!=, Base.==, Base.show

+(c::Clock, m::Dates.Minute) = Clock(c.hour, c.minute + m.value)
-(c::Clock, m::Dates.Minute) = Clock(c.hour, c.minute - m.value)
==(c1::Clock, c2::Clock) = c1.hour == c2.hour && c1.minute == c2.minute
show(io::IO, c::Clock) = print(io, "\"", (c.hour ÷ 10 == 0 ? "0" : ""), c.hour, ":", (c.minute ÷ 10 == 0 ? "0" : ""), c.minute, "\"")