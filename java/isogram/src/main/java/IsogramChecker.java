import static java.util.function.Function.identity;
import static java.util.stream.Collectors.counting;
import static java.util.stream.Collectors.groupingBy;

class IsogramChecker {

    boolean isIsogram(String phrase) {
        if (phrase.isEmpty()) {
            return true;
        }
        return phrase.toLowerCase()
                .chars()
                .mapToObj(c -> (char) c)
                .filter(c -> c != '-' && c != ' ')
                .collect(groupingBy(identity(), counting()))
                .values()
                .stream()
                .max(Long::compareTo)
                .orElse(0L) == 1;
    }
}
