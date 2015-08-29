#!perl
use Test::More;
use t::lib::Foo;
use t::lib::Bar;

my $foo = Foo->new;

can_ok $foo, 'baz';

is $foo->baz, 'Baz from extension method', 'should call baz';

done_testing;
