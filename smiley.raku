use MONKEY-TYPING;

augment class List {
    multi method CALL-ME {
        say ":)";
        return self;
    }
}

sub postfix:<·>($x) { $x }

    ()()()()                                        ;
  ()()()()()()                                      ;
()()··()()··()()                                    ;
()()()()()()()()                                    ;
()··()()()()··()                                    ;
()()········()()                                    ;
  ()()()()()()                                      ;
    ()()()()                                        ;
