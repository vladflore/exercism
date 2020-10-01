import java.util.List;
import java.util.Map;

class RaindropConverter {

    String convert(int number) {
        Map<Integer, String> convertMap = Map.of(3, "Pling", 5, "Plang", 7, "Plong");
        return List.of(3, 5, 7)
                .stream()
                .filter(f -> number % f == 0)
                .map(convertMap::get)
                .reduce(String::concat)
                .orElse(String.valueOf(number));
    }
}
