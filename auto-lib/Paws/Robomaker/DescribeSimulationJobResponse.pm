
package Paws::Robomaker::DescribeSimulationJobResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has FailureBehavior => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureBehavior');
  has FailureCode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureCode');
  has IamRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'iamRole');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has MaxJobDurationInSeconds => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxJobDurationInSeconds');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has OutputLocation => (is => 'ro', isa => 'Paws::Robomaker::OutputLocation', traits => ['NameInRequest'], request_name => 'outputLocation');
  has RobotApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::RobotApplicationConfig]', traits => ['NameInRequest'], request_name => 'robotApplications');
  has SimulationApplications => (is => 'ro', isa => 'ArrayRef[Paws::Robomaker::SimulationApplicationConfig]', traits => ['NameInRequest'], request_name => 'simulationApplications');
  has SimulationTimeMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'simulationTimeMillis');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has VpcConfig => (is => 'ro', isa => 'Paws::Robomaker::VPCConfigResponse', traits => ['NameInRequest'], request_name => 'vpcConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::DescribeSimulationJobResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the simulation job.


=head2 ClientRequestToken => Str

Unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.


=head2 FailureBehavior => Str

The failure behavior for the simulation job.

Valid values are: C<"Fail">, C<"Continue">
=head2 FailureCode => Str

The failure code of the simulation job if it failed:

=over

=item InternalServiceError

Internal service error

=item RobotApplicationCrash

Robot application exited abnormally (segfault, etc.)

=item SimulationApplicationCrash

Simulation application exited abnormally (segfault, etc.)

=item BadPermissionsRobotApplication

Robot application bundle could not be downloaded

=item BadPermissionsSimulationApplication

Simulation application bundle could not be downloaded

=item BadPermissionsS3Output

Unable to publish outputs to customer-provided S3 bucket

=item BadPermissionsCloudwatchLogs

Unable to publish logs to customer-provided CloudWatch Logs resource

=item SubnetIpLimitExceeded

Subnet IP limit exceeded

=item ENILimitExceeded

ENI limit exceeded

=item BadPermissionsUserCredentials

Unable to use the Role provided

=item InvalidBundleRobotApplication

Robot bundle cannot be extracted (invalid format, bundling error, etc.)

=item InvalidBundleSimulationApplication

Simulation bundle cannot be extracted (invalid format, bundling error,
etc.)

=item RobotApplicationVersionMismatchedEtag

Etag for RobotApplication does not match value during version creation

=item SimulationApplicationVersionMismatchedEtag

Etag for SimulationApplication does not match value during version
creation

=back


Valid values are: C<"InternalServiceError">, C<"RobotApplicationCrash">, C<"SimulationApplicationCrash">, C<"BadPermissionsRobotApplication">, C<"BadPermissionsSimulationApplication">, C<"BadPermissionsS3Output">, C<"BadPermissionsCloudwatchLogs">, C<"SubnetIpLimitExceeded">, C<"ENILimitExceeded">, C<"BadPermissionsUserCredentials">, C<"InvalidBundleRobotApplication">, C<"InvalidBundleSimulationApplication">, C<"RobotApplicationVersionMismatchedEtag">, C<"SimulationApplicationVersionMismatchedEtag">
=head2 IamRole => Str

The IAM role that allows the simulation instance to call the AWS APIs
that are specified in its associated policies on your behalf.


=head2 LastUpdatedAt => Str

The time, in milliseconds since the epoch, when the simulation job was
last updated.


=head2 MaxJobDurationInSeconds => Int

The maximum job duration in seconds. The value must be 8 days (691,200
seconds) or less.


=head2 Name => Str

The name of the simulation job.


=head2 OutputLocation => L<Paws::Robomaker::OutputLocation>

Location for output files generated by the simulation job.


=head2 RobotApplications => ArrayRef[L<Paws::Robomaker::RobotApplicationConfig>]

A list of robot applications.


=head2 SimulationApplications => ArrayRef[L<Paws::Robomaker::SimulationApplicationConfig>]

A list of simulation applications.


=head2 SimulationTimeMillis => Int

The simulation job execution duration in milliseconds.


=head2 Status => Str

The status of the simulation job.

Valid values are: C<"Pending">, C<"Preparing">, C<"Running">, C<"Restarting">, C<"Completed">, C<"Failed">, C<"RunningFailed">, C<"Terminating">, C<"Terminated">, C<"Canceled">
=head2 VpcConfig => L<Paws::Robomaker::VPCConfigResponse>

The VPC configuration.


=head2 _request_id => Str


=cut
