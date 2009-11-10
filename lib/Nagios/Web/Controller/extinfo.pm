package Nagios::Web::Controller::extinfo;

use strict;
use warnings;
use parent 'Catalyst::Controller';

=head1 NAME

Nagios::Web::Controller::extinfo - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) :MyAction('AddDefaults') {
    my ( $self, $c ) = @_;

    #print "HTTP 200 OK\nContent-Type: text/html\n\n<pre>\n";
    #print Dumper($c);
    #print Dumper($self);
    #exit;
    my $type = $c->{'request'}->{'parameters'}->{'type'} || 0;
    $c->stash->{title}          = 'Extended Information';
    $c->stash->{infoBoxTitle}   = 'Nagios Process Information';
    $c->stash->{page}           = 'extinfo';
    $c->stash->{template}       = 'extinfo_type_'.$type.'.tt';
}


=head1 AUTHOR

Sven Nierlein, 2009, <nierlein@cpan.org>

=head1 LICENSE

This library is free software, you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
