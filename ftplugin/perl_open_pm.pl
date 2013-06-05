#!/usr/bin/env perl

use Data::Dumper;

sub is_valid_char {
    my ($char) = @_;
    return $char =~ /[a-zA-Z:_0-9]/;
}

my ( $pos, $line, $cwd ) = @ARGV;
$pos -= 1;

if ( is_valid_char( substr( $line, $pos, 1 ) ) ) {
    my $length = length($line);
    my ( $left, $right ) = ( $pos, $pos );

    for ( my $i = $pos - 1; $i >= 0; $i-- ) {
        if ( is_valid_char( substr( $line, $i, 1 ) ) ) {
            $left = $i;
        }
        else {
            last;
        }
    }

    for ( my $i = $pos + 1; $i < $length; $i++ ) {
        if ( is_valid_char( substr( $line, $i, 1 ) ) ) {
            $right = $i;
        }
        else {
            last;
        }
    }

    my $package = substr( $line, $left, $right - $left + 1 );
    my $cmd     = "perldoc -l $package 2>&1";
    my $output  = `$cmd`;
    if ( $output !~ /No documentation found/ ) {
        print $output;
    }
    else {
        my $path = $package;
        $path =~ s|::|/|g;
        if ( $package =~ /^Mixi::/ ) {
            $path .= 'lib/'.$path;
        }
        $path = $path. '.pm';
        if ( -e $path ) {
            print $cwd.'/'.$path;
        }
    }
}

