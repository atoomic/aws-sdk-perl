package Aws::EC2::Volume {
  use Moose;
  has Attachments => (is => 'ro', isa => 'ArrayRef[Aws::EC2::VolumeAttachment]', traits => ['Unwrapped'], xmlname => 'attachmentSet');
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'createTime');
  has Encrypted => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'encrypted');
  has Iops => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'iops');
  has Size => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'size');
  has SnapshotId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'snapshotId');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'status');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VolumeId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeId');
  has VolumeType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'volumeType');
}
1
