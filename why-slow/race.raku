sub let's-race($race-length-ms, $record-mm) {
    my $beat-ways = 0;

    for (0..$race-length-ms) -> $hold-ms {
        my $remaining-ms = $race-length-ms - $hold-ms;
        my $distance-mm = $hold-ms * $remaining-ms;

        $beat-ways++ if $distance-mm > $record-mm;
    }

    return $beat-ways;
}

my $start = now;

say let's-race(42686985, 284100511221341);
say "Took {now - $start}s";
