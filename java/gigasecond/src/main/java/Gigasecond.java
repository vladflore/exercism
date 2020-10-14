import java.time.LocalDate;
import java.time.LocalDateTime;

public class Gigasecond {
    private static final long GIGASECOND = 1_000_000_000;
    
    private final LocalDateTime momentAfter;

    public Gigasecond(LocalDate moment) {
        momentAfter = moment.atStartOfDay().plusSeconds(GIGASECOND);
    }

    public Gigasecond(LocalDateTime moment) {
        momentAfter = moment.plusSeconds(GIGASECOND);
    }

    public LocalDateTime getDateTime() {
        return momentAfter;
    }
}
