import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

class HandshakeCalculator {

    List<Signal> calculateHandshake(int number) {
        List<Signal> secret = new ArrayList<>();
        int mask = 1;
        for (Signal signal : Signal.values()) {
            if ((number & mask << signal.ordinal()) != 0) {
                secret.add(signal);
            }
        }
        if ((number & mask << 4) != 0) {
            Collections.reverse(secret);
        }
        return secret;
    }
}