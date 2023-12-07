public class Race {
    public static long letsRace(long raceLengthMs, long recordMm) {
        long beatWays = 0;

        for (long holdMs = 0; holdMs <= raceLengthMs; holdMs++) {
            long remainingMs = raceLengthMs - holdMs;
            long distanceMm = holdMs * remainingMs;

            if (distanceMm > recordMm) {
                beatWays++;
            }
        }

        return beatWays;
    }

    public static void main(String[] args) {
        long start = System.currentTimeMillis();

        System.out.println(letsRace(42686985L, 284100511221341L));
        System.out.println("Took " + (System.currentTimeMillis() - start) + "ms");
    }
}
