# Why is this Raku code so slow?

## Version Information

```
% java -version
openjdk version "21.0.1" 2023-10-17 LTS
OpenJDK Runtime Environment Temurin-21.0.1+12 (build 21.0.1+12-LTS)
OpenJDK 64-Bit Server VM Temurin-21.0.1+12 (build 21.0.1+12-LTS, mixed mode)
% java Race.java
26187338
Took 25ms
```

```
% raku -v
Welcome to Rakudo™ v2023.11.
Implementing the Raku® Programming Language v6.d.
Built on MoarVM version 2023.11.
% raku race.raku
26187338
Took 18.753037129s
```

```
System Software Overview:
System Version: macOS 14.1.2 (23B92)
Kernel Version: Darwin 23.1.0
Boot Volume: Macintosh HD
Boot Mode: Normal
Secure Virtual Memory: Enabled
System Integrity Protection: Enabled
Time since boot: 3 days, 23 hours, and 28 minutes

Hardware Overview:
Model Name: MacBook Air
Model Identifier: Mac14,15
Chip: Apple M2
Total Number of Cores: 8 (4 performance and 4 efficiency)
Memory: 24 GB
```

## Why is this happening?

[Elizabeth Mattijsen](https://mastodon.social/@lizmat/111534122699934647) explains (TL;DR: use `int` instead of `Int`):

> All other languages use 64bit integers, Raku doesn't by default.
>
> ```raku
> sub let's-race(int $race-length-ms, int $record-mm) {
>   my int $beat-ways;
>
>   for ^$race-length-ms -> int $hold-ms {
>       my int $remaining-ms = $race-length-ms - $hold-ms;
>       my int $distance-mm  = $hold-ms * $remaining-ms;
>
>       $beat-ways++ if $distance-mm > $record-mm;
>   }
>   $beat-ways
> }
> ```
>
> runs in 2.01 seconds for me, versus 21.33 seconds in the non-native version, so more than 10x as fast!

From my testing, this is in line with Python and Ruby, so it's good enough for me.
