
package Paws::Glue::CreateJob;
  use Moose;
  has AllocatedCapacity => (is => 'ro', isa => 'Int');
  has Command => (is => 'ro', isa => 'Paws::Glue::JobCommand', required => 1);
  has Connections => (is => 'ro', isa => 'Paws::Glue::ConnectionsList');
  has DefaultArguments => (is => 'ro', isa => 'Paws::Glue::GenericMap');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionProperty => (is => 'ro', isa => 'Paws::Glue::ExecutionProperty');
  has LogUri => (is => 'ro', isa => 'Str');
  has MaxRetries => (is => 'ro', isa => 'Int');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Timeout => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::CreateJobResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::CreateJob - Arguments for method CreateJob on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateJob on the 
AWS Glue service. Use the attributes of this class
as arguments to method CreateJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateJob.

As an example:

  $service_obj->CreateJob(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 AllocatedCapacity => Int

The number of AWS Glue data processing units (DPUs) to allocate to this
Job. From 2 to 100 DPUs can be allocated; the default is 10. A DPU is a
relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the AWS
Glue pricing page (https://aws.amazon.com/glue/pricing/).



=head2 B<REQUIRED> Command => L<Paws::Glue::JobCommand>

The JobCommand that executes this job.



=head2 Connections => L<Paws::Glue::ConnectionsList>

The connections used for this job.



=head2 DefaultArguments => L<Paws::Glue::GenericMap>

The default arguments for this job.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that AWS Glue itself consumes.

For information about how to specify and consume your own Job
arguments, see the Calling AWS Glue APIs in Python
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html)
topic in the developer guide.

For information about the key-value pairs that AWS Glue consumes to set
up your job, see the Special Parameters Used by AWS Glue
(http://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html)
topic in the developer guide.



=head2 Description => Str

Description of the job being defined.



=head2 ExecutionProperty => L<Paws::Glue::ExecutionProperty>

An ExecutionProperty specifying the maximum number of concurrent runs
allowed for this job.



=head2 LogUri => Str

This field is reserved for future use.



=head2 MaxRetries => Int

The maximum number of times to retry this job if it fails.



=head2 B<REQUIRED> Name => Str

The name you assign to this job definition. It must be unique in your
account.



=head2 B<REQUIRED> Role => Str

The name or ARN of the IAM role associated with this job.



=head2 Timeout => Int

The job timeout in minutes. The default is 2880 minutes (48 hours).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateJob in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

