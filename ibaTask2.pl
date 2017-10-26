#!/usr/bin/perl -w
use strict;
print "This is a process tree below:\n";
system("pstree -pl");
print "\n";
print "Enter id of process which you whant to kill\n";
my $myid=<STDIN>;
$myid=$myid+0;
system("pstree -p $myid| perl -ne \'print \"\$_\\n\" foreach /\\((\\d+)\\)/g;\'");
