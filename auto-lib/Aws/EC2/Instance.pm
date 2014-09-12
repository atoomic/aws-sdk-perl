package Aws::EC2::Instance {
  use Moose;
  has AmiLaunchIndex => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'amiLaunchIndex');
  has Architecture => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'architecture');
  has BlockDeviceMappings => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceBlockDeviceMapping]', traits => ['Unwrapped'], xmlname => 'blockDeviceMapping');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'clientToken');
  has EbsOptimized => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'ebsOptimized');
  has Hypervisor => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'hypervisor');
  has IamInstanceProfile => (is => 'ro', isa => 'Aws::EC2::IamInstanceProfile', traits => ['Unwrapped'], xmlname => 'iamInstanceProfile');
  has ImageId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'imageId');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceLifecycle => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceLifecycle');
  has InstanceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceType');
  has KernelId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'kernelId');
  has KeyName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'keyName');
  has LaunchTime => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'launchTime');
  has Monitoring => (is => 'ro', isa => 'Aws::EC2::Monitoring', traits => ['Unwrapped'], xmlname => 'monitoring');
  has NetworkInterfaces => (is => 'ro', isa => 'ArrayRef[Aws::EC2::InstanceNetworkInterface]', traits => ['Unwrapped'], xmlname => 'networkInterfaceSet');
  has Placement => (is => 'ro', isa => 'Aws::EC2::Placement', traits => ['Unwrapped'], xmlname => 'placement');
  has Platform => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'platform');
  has PrivateDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateDnsName');
  has PrivateIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'privateIpAddress');
  has ProductCodes => (is => 'ro', isa => 'ArrayRef[Aws::EC2::ProductCode]', traits => ['Unwrapped'], xmlname => 'productCodes');
  has PublicDnsName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'dnsName');
  has PublicIpAddress => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ipAddress');
  has RamdiskId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'ramdiskId');
  has RootDeviceName => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceName');
  has RootDeviceType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'rootDeviceType');
  has SecurityGroups => (is => 'ro', isa => 'ArrayRef[Aws::EC2::GroupIdentifier]', traits => ['Unwrapped'], xmlname => 'groupSet');
  has SourceDestCheck => (is => 'ro', isa => 'Bool', traits => ['Unwrapped'], xmlname => 'sourceDestCheck');
  has SpotInstanceRequestId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'spotInstanceRequestId');
  has SriovNetSupport => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'sriovNetSupport');
  has State => (is => 'ro', isa => 'Aws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has StateReason => (is => 'ro', isa => 'Aws::EC2::StateReason', traits => ['Unwrapped'], xmlname => 'stateReason');
  has StateTransitionReason => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'reason');
  has SubnetId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'subnetId');
  has Tags => (is => 'ro', isa => 'ArrayRef[Aws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has VirtualizationType => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'virtualizationType');
  has VpcId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpcId');
}
1
