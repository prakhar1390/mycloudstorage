#!/usr/bin/perl
#use my $filename = $0; when running from the console

my $filename = $0;
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
my $filestringread;
 
while (my $row = <$fh>) {
  $filestringread = $filestringread + $row;
}

$filestringread = uc $filestringread;

$string = "ATAGCATGCATGATATACAGTA";
$countA =0;
$countT =0;
$countG =0;
$countC =0;
$randomcount =0;

foreach $char (split //, $string) {
  if($char eq "A")
  {
  	$countA = $countA +1;
  }elsif($char eq "T")
  {
  	$countT = $countT +1;
  }elsif($char eq "G")
  {
  	$countG = $countG +1;
  }elsif($char eq "C")
  {
  	$countC = $countC +1;
  }else
  {
  $randomcount = $randomcount +1;
  }
}

print " A:$countA \n";
print " T:$countT\n";
print " G:$countG\n";
print " C:$countC\n";
$sum = $randomcount + $countA +$countT +$countC + $countG;
$percentageAT = $countA + $countT;
my $percentageGC = ($countG + $countC)*100;

print "percentage AT $percentageAT\n";
print "percentage GC $percentageGC\n";


$ratio = ($countA + $countT) / ($countG + $countC);
print "Ratio of at/gc is $ratio";
