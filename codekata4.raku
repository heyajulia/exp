# http://codekata.com/kata/kata04-data-munging/

say analyze('weather.dat',
    /$<ident> = (\d+) \s* $<a> = (\d+) '*'? \s* $<b> = (\d+) '*'?/);
say analyze('football.dat',
    /$<ident> = <[A..Z a..z _]>+ .* $<a> = (\d ** 2) '  -  ' $<b> = (\d ** 2)/);

sub analyze(Str $file, Regex $re --> Str) {
    my Real $diff = Inf;
    my Match $ident;

    for lines slurp $file -> $line {
        if $line ~~ $re {
            my $d = abs($<a> - $<b>);
            if $d < $diff {
                $diff = $d;
                $ident = $<ident>;
            }
        }
    }

    return $ident.Str;
} 

=begin pod
=head1 Answers

=begin item
To what extent did the design decisions you made when writing the original programs make it easier or harder to
factor out common code?

I think it made it easier. Using a regular expression was a good choice, as it makes the code quite "generic." Most of
what I had to do was rename a few variables and make the file name and regular expression configurable.
=end item

=begin item
Was the way you wrote the second program influenced by writing the first?

Yes. In fact, I copied the first program and modified it.
=end item

=begin item
Is factoring out as much common code as possible always a good thing? Did the readability of the programs suffer because
of this requirement? How about the maintainability?

I<Always>? Clearly not. But in this case, it was a good thing. I think the readability and maintainability actually went
up.
=end item
=end pod
