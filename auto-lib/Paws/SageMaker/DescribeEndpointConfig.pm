
package Paws::SageMaker::DescribeEndpointConfig;
  use Moose;
  has EndpointConfigName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEndpointConfig');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SageMaker::DescribeEndpointConfigOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DescribeEndpointConfig - Arguments for method DescribeEndpointConfig on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEndpointConfig on the 
Amazon SageMaker Service service. Use the attributes of this class
as arguments to method DescribeEndpointConfig.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEndpointConfig.

As an example:

  $service_obj->DescribeEndpointConfig(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> EndpointConfigName => Str

The name of the endpoint configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEndpointConfig in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
