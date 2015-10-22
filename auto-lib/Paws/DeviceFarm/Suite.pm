package Paws::DeviceFarm::Suite;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', xmlname => 'arn', request_name => 'arn', traits => ['Unwrapped','NameInRequest']);
  has Counters => (is => 'ro', isa => 'Paws::DeviceFarm::Counters', xmlname => 'counters', request_name => 'counters', traits => ['Unwrapped','NameInRequest']);
  has Created => (is => 'ro', isa => 'Str', xmlname => 'created', request_name => 'created', traits => ['Unwrapped','NameInRequest']);
  has Message => (is => 'ro', isa => 'Str', xmlname => 'message', request_name => 'message', traits => ['Unwrapped','NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', xmlname => 'name', request_name => 'name', traits => ['Unwrapped','NameInRequest']);
  has Result => (is => 'ro', isa => 'Str', xmlname => 'result', request_name => 'result', traits => ['Unwrapped','NameInRequest']);
  has Started => (is => 'ro', isa => 'Str', xmlname => 'started', request_name => 'started', traits => ['Unwrapped','NameInRequest']);
  has Status => (is => 'ro', isa => 'Str', xmlname => 'status', request_name => 'status', traits => ['Unwrapped','NameInRequest']);
  has Stopped => (is => 'ro', isa => 'Str', xmlname => 'stopped', request_name => 'stopped', traits => ['Unwrapped','NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', xmlname => 'type', request_name => 'type', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::Suite

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::Suite object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::Suite object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Represents a collection of one or more tests.

=head1 ATTRIBUTES

=head2 Arn => Str

  The suite's ARN.

=head2 Counters => L<Paws::DeviceFarm::Counters>

  The suite's result counters.

=head2 Created => Str

  When the suite was created.

=head2 Message => Str

  A message about the suite's result.

=head2 Name => Str

  The suite's name.

=head2 Result => Str

  The suite's result.

Allowed values include:

=over

=item *

ERRORED: An error condition.

=item *

FAILED: A failed condition.

=item *

SKIPPED: A skipped condition.

=item *

STOPPED: A stopped condition.

=item *

PASSED: A passing condition.

=item *

PENDING: A pending condition.

=item *

WARNED: A warning condition.

=back


=head2 Started => Str

  The suite's start time.

=head2 Status => Str

  The suite's status.

Allowed values include:

=over

=item *

COMPLETED: A completed status.

=item *

PENDING: A pending status.

=item *

PROCESSING: A processing status.

=item *

RUNNING: A running status.

=item *

SCHEDULING: A scheduling status.

=back


=head2 Stopped => Str

  The suite's stop time.

=head2 Type => Str

  The suite's type.

Must be one of the following values:

=over

=item *

BUILTIN_FUZZ: The built-in fuzz type.

=item *

BUILTIN_EXPLORER: For Android, an app explorer that will traverse an
Android app, interacting with it and capturing screenshots at the same
time.

=item *

APPIUM_JAVA_JUNIT: The Appium Java JUnit type.

=item *

APPIUM_JAVA_TESTNG: The Appium Java TestNG type.

=item *

CALABASH: The Calabash type.

=item *

INSTRUMENTATION: The Instrumentation type.

=item *

UIAUTOMATION: The uiautomation type.

=item *

UIAUTOMATOR: The uiautomator type.

=item *

XCTEST: The XCode test type.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

