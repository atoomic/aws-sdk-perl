
package Paws::CloudFront::GetStreamingDistributionConfig2014_11_06 {
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetStreamingDistributionConfig');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2014-11-06/streaming-distribution/{Id}/config');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::GetStreamingDistributionConfigResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetStreamingDistributionConfigResult');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::GetStreamingDistributionConfigResult

=head1 ATTRIBUTES

=head2 B<REQUIRED> Id => Str

  

The streaming distribution's id.











=cut

