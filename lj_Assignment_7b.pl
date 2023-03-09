#!/usr/bin/perl

#--------------------------------------------------------------
# Assignment:   Assignment 7B
#
# Program Name: lj_Assignment_7B.pl
#
# Purpose:      The purpose of this program is to calculate 
#               the number of lines, longest line, and total 
#               number of bytes in a user's input.
#
# Author:       Lorenzo Juarez
#
# Course:       232CIS109.950
#
# Created:      3/9/23
#--------------------------------------------------------------


print "--------------------------------\n";
print "| Welcome to the Echo Program  |\n";
print "--------------------------------\n";
print "This program will echo your input.\n";
print "\n";
print "Enter a line of text. Two Enters starts the program, while one enter allows user to have multiple lines.\n";
print"\n";
print "Type here ->: ";

my $input = '';
my $lines = 0;
my $longest = 0;
my $char = 0;

while (my $line = <STDIN>) {
    chomp $line;
    last if $line eq '';
    $input .= "->" . $line . "<-\n";
    $lines++;
    $longest = length($line) if length($line) > $longest;
    $char += length($line);
}

print "\nHere is the text you typed:\n";
print "-----------------------------\n";
print "$input";
print "\n$lines lines, longest $longest characters, $char bytes total.\n";
print "Thank you for trying Echo program.";