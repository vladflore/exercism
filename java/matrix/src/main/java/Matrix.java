import java.util.Arrays;

class Matrix {

    private final int[][] matrix;

    Matrix(String matrixAsString) {
        matrix = matrixAsString.lines()
                .map(line -> Arrays.stream(line.split("\\s+")).mapToInt(Integer::parseInt).toArray())
                .toArray(int[][]::new);
    }

    int[] getRow(int rowNumber) {
        return matrix[rowNumber - 1];
    }

    int[] getColumn(int columnNumber) {
        return Arrays.stream(matrix).mapToInt(row -> row[columnNumber - 1]).toArray();
    }
}
