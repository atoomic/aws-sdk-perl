
package Paws::MigrationHub::DeleteProgressUpdateStream;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool');
  has ProgressUpdateStreamName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteProgressUpdateStream');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHub::DeleteProgressUpdateStreamResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHub::DeleteProgressUpdateStream - Arguments for method DeleteProgressUpdateStream on L<Paws::MigrationHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteProgressUpdateStream on the
L<AWS Migration Hub|Paws::MigrationHub> service. Use the attributes of this class
as arguments to method DeleteProgressUpdateStream.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteProgressUpdateStream.

=head1 SYNOPSIS

    my $mgh = Paws->service('MigrationHub');
    my $DeleteProgressUpdateStreamResult = $mgh->DeleteProgressUpdateStream(
      ProgressUpdateStreamName => 'MyProgressUpdateStream',
      DryRun                   => 1,                          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/migrationhub/>

=head1 ATTRIBUTES


=head2 DryRun => Bool

Optional boolean flag to indicate whether any effect should take place.
Used to test if the caller has permission to make the call.



=head2 B<REQUIRED> ProgressUpdateStreamName => Str

The name of the ProgressUpdateStream.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteProgressUpdateStream in L<Paws::MigrationHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

