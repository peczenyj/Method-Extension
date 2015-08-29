package Bar;
use Method::Extension;

sub new { 
    bless {}, $_[0];    
}

sub baz :Extension(Foo::baz) {
    "Baz from extension method";
}

1;
