#!/usr/bin/perl -w
sub insertion_sort {
	my (@list) = @_;
	foreach my $i (1 .. $#list){
		my $j = $i;
		my $tmp = $list[$i];
		while ($j >0 && $tmp < $list[$j-1]){
			$list[$j] = $list[$j-1];
			$j --;
		}
		$list[$j]=$tmp;

	}
	return @list;
}

my @test = &insertion_sort(1,2,-1,3,0);
print "@test\n";
