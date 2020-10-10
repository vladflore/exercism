import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

public class Gigasecond {

    private final LocalDateTime momentAfter;
    private final long gigasecond = 1000000000;

    public Gigasecond(LocalDate moment) {
        momentAfter = LocalDateTime.of(moment, LocalTime.of(0, 0, 0)).plusSeconds(gigasecond);
    }

    public Gigasecond(LocalDateTime moment) {
        momentAfter = moment.plusSeconds(gigasecond);
    }

    public LocalDateTime getDateTime() {
        return momentAfter;
    }
}
