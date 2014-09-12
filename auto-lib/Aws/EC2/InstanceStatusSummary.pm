package Aws::EC2::InstanceStatusSummary {
  use Moose;
  has Details => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}
1
