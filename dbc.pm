#!/usr/bin/perl;
package DBC;

use strict;
use warnings;
use Exporter;
use DBI;

our @ISA = qw(Exporter);
our @EXPORT = qw(_connectDSN _dconnectDSN);

my $driver = 'mysql';
my $uname = 'alice';
my $pword = '';
my $dbh;

sub _connectDSN{

    my $database = "un";
    my $dsn = "DBI:mysql:database=$database";
    $dbh = DBI->connect($dsn, $uname, $pword) or die $DBI::errstr;
    
}

sub _dconnectDSN{
    $dbh->disconnect;
}
1;