package Aws::EC2::VpcPeeringConnection {
  use Moose;
  has AccepterVpcInfo => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnectionVpcInfo', traits => ['Unwrapped'], xmlname => 'accepterVpcInfo');
  has ExpirationTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'expirationTime');
  has RequesterVpcInfo => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnectionVpcInfo', traits => ['Unwrapped'], xmlname => 'requesterVpcInfo');
  has Status => (is => 'ro', isa => 'Aws::EC2::VpcPeeringConnectionStateReason', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VpcPeeringConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcPeeringConnectionId');
}
1
