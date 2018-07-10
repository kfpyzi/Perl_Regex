#!/usr/bin/perl
use strict;
use warnings;
use DBC;

exit main();

sub main{
    my $x = 0;
    my $key = "alice";
    while($x == 0){
        print("\n".'$:');
        my $in = <STDIN>;
        chomp $in;
        if($in =~ m/.*?$key.*?/i){
            
            if ($in =~ m/.*?exit.*?/i){
                $x = 1;
                last;
            }

            if($in =~ m/.*?connect.*?/i){
                _connectDSN;
                print("success.");
            }
            elsif($in =~ m/.*?disconnect.*?/i){
                _dconnectDSN;
                print("disconnected.");
            }
            else{
                print("try again.");
            }

            

        }
        else{
                print("sorry I can't understand.");
            }
        
        if($in =~ m/.*?clear.*?/i){
                system("clear");
        }
        else{
                print("try again.");
        }
        
    }
    return 0;
}