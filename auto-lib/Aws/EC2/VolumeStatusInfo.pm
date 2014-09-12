package Aws::EC2::VolumeStatusInfo {
  use Moose;
  has Details => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeStatusDetails]', traits => ['Unwrapped'], xmlname => 'details');
  has Status => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
}
1
