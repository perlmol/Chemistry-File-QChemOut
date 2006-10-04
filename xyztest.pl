#!/home/ivan/bin/perl

use strict;
use warnings;

use Chemistry::File::XYZ;
use blib;
use Chemistry::File::QChemOut;

my @mols = Chemistry::Mol->read("ethane.out", format => 'qchemout', all => 1);
print $_->print(format => 'xyz') for @mols;
