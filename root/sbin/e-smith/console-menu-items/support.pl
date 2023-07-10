package esmith::console::support;
use strict;
use warnings;
use esmith::console;
use Locale::gettext;

sub new
{
    my $class = shift;
    my $self = {
            name  => gettext('View support and licensing information'),
            order => 60,
    };
    bless $self, $class;
    return $self;
}

sub name
{
    return $_[0]->{name};
}

sub order
{
    return $_[0]->{order};
}

sub doit
{
    #------------------------------------------------------------
    # SUPPORT:
    #------------------------------------------------------------
    my ($self, $console, $db) = @_;
    my $licenseFile = esmith::util::getLicenseFile();
    my ($rc, $choice) = $console->textbox
    (
        title => gettext('Support and licensing information'),
        file => $licenseFile,
    );
    return;
}

return esmith::console::support->new;

