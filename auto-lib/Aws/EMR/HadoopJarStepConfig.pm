package Aws::EMR::HadoopJarStepConfig {
  use Moose;
  has Args => (is => 'ro', isa => 'ArrayRef[Str]');
  has Jar => (is => 'ro', isa => 'Str', required => 1);
  has MainClass => (is => 'ro', isa => 'Str');
  has Properties => (is => 'ro', isa => 'ArrayRef[Aws::EMR::KeyValue]');
}
1
