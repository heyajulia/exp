use MONKEY-TYPING;

augment class List {
    multi method CALL-ME {
        state $calls = 1;
        LEAVE $calls++;

        constant PAR-PAIRS = (4, 6, -1, 8, -1, -1, 6, 4);
        constant INDENT    = (4, 2, -1, 0, -1, -1, 2, 4);
        constant SMILEY    = '🦋';

        if $calls == 1|2|4|7|8 {
          my $indent = INDENT[$calls - 1];
          my $pairs  = PAR-PAIRS[$calls - 1];

          say ' ' x $indent ~ SMILEY x $pairs;
        }

        # These rows have whitespace in the middle, so we have to handle them separately.
        say SMILEY x 2 ~ ' ' x 2 ~ SMILEY x 2 ~ ' ' x 2 ~ SMILEY x 2 if $calls == 3;
        say SMILEY ~ ' ' x 2 ~ SMILEY x 4 ~ ' ' x 2 ~ SMILEY if $calls == 5;
        say SMILEY x 2 ~ ' ' x 8 ~ SMILEY x 2 if $calls == 6;

        return self;
    }
}

sub postfix:<·>($x) { $x }

    ()()()()     ;
  ()()()()()()   ;
()()··()()··()() ;
()()()()()()()() ;
()··()()()()··() ;
()()········()() ;
  ()()()()()()   ;
    ()()()()     ;
