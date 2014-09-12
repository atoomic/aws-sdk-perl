package Aws::EC2::DhcpConfiguration {
  use Moose;
  has Key => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'key');
  has Values => (is => 'ro', isa => 'ArrayRef[Defined]', traits => ['Unwrapped'], xmlname => 'valueSet');
}
1
