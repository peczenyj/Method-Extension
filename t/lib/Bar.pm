package Bar;
use Method::Extension;

sub new {
    bless {}, $_[0];
}

sub baz : ExtensionMethod(Foo::baz) {
    "Baz from extension method";
}

1;
