package Aws::EC2::NetworkInterfaceAttachmentChanges {
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str');
  has DeleteOnTermination => (is => 'ro', isa => 'Bool');
}
1
