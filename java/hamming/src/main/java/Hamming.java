public class Hamming {

    private final int distance;

    public Hamming(String leftStrand, String rightStrand) {
        if (leftStrand.isEmpty() && !rightStrand.isEmpty() ||
                rightStrand.isEmpty() && !leftStrand.isEmpty()) {
            throw new IllegalArgumentException((leftStrand.isEmpty() ? "left" : "right") + " strand must not be empty.");
        }
        if (leftStrand.length() != rightStrand.length()) {
            throw new IllegalArgumentException("leftStrand and rightStrand must be of equal length.");
        }
        int diff = 0;
        for (int i = 0; i < leftStrand.length(); i++) {
            if (leftStrand.charAt(i) != rightStrand.charAt(i)) {
                diff++;
            }
        }
        distance = diff;
    }

    public int getHammingDistance() {
        return distance;
    }
}
