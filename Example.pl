#!usr/bin/perl
##Collatz.pl

use warnings;
sub collatz;

my $i = 1000;



while($i > 0){
    my $num = int(rand(100000));
    print "$num:\n";
    collatz($num);
    print "\n";
    $i--;
}

sub collatz{
    $a = $_[0];
    while($a != 1 && $a < 1000000000000000){print "$a ";
        if($a % 2 == 0){
            $a = $a / 2;
        }
        else{
            $a = 5*$a +1;
            
        }
    }
    
}