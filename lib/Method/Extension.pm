use 5.006;
use strict;
use warnings;
package Method::Extension;

use parent 'Attribute::Handlers';
 
sub UNIVERSAL::Extension : ATTR(CODE) {
    my ($package, $symbol, $referent, $attr, $data, $phase) = @_;
    $data = [$data] unless ref $data eq 'ARRAY';
    for my $item (@$data) {
        no strict 'refs';
        *{$item} = $referent;
    }
}

1;
