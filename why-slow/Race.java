public class Race {

    public static int letsRace(int raceLengthMs, long recordMm) {
        int beatWays = 0;

        for (int holdMs = 0; holdMs <= raceLengthMs; holdMs++) {
            int remainingMs = raceLengthMs - holdMs;
            long distanceMm = (long) holdMs * remainingMs;

            if (distanceMm > recordMm) {
                beatWays++;
            }
        }

        return beatWays;
    }

    public static void main(String[] args) {
        long start = System.currentTimeMillis();

        System.out.println(letsRace(42686985, 284100511221341L));
        System.out.println("Took " + (System.currentTimeMillis() - start) + "ms");
    }
}
