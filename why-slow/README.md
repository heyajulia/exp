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
