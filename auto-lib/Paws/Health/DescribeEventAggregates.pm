
package Paws::Health::DescribeEventAggregates;
  use Moose;
  has AggregateField => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'aggregateField' , required => 1);
  has Filter => (is => 'ro', isa => 'Paws::Health::EventFilter', traits => ['NameInRequest'], request_name => 'filter' );
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeEventAggregates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Health::DescribeEventAggregatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Health::DescribeEventAggregates - Arguments for method DescribeEventAggregates on L<Paws::Health>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeEventAggregates on the
L<AWS Health APIs and Notifications|Paws::Health> service. Use the attributes of this class
as arguments to method DescribeEventAggregates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeEventAggregates.

=head1 SYNOPSIS

    my $health = Paws->service('Health');
    my $DescribeEventAggregatesResponse = $health->DescribeEventAggregates(
      AggregateField => 'eventTypeCategory',
      Filter         => {
        availabilityZones => [ 'MyavailabilityZone', ... ],    # OPTIONAL
        endTimes => [
          {
            from => '1970-01-01T01:00:00',                     # OPTIONAL
            to   => '1970-01-01T01:00:00',                     # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        entityArns => [
          'MyentityArn', ...    # max: 1600
        ],                      # min: 1, max: 100; OPTIONAL
        entityValues => [
          'MyentityValue', ...    # max: 256
        ],                        # min: 1, max: 100; OPTIONAL
        eventArns => [
          'MyeventArn', ...       # max: 1600
        ],                        # min: 1, max: 10; OPTIONAL
        eventStatusCodes => [
          'open', ...             # values: open, closed, upcoming
        ],                        # min: 1, max: 6; OPTIONAL
        eventTypeCategories => [
          'issue',
          ... # values: issue, accountNotification, scheduledChangemin: 3, max: 255
        ],    # min: 1, max: 10; OPTIONAL
        eventTypeCodes => [
          'MyeventType', ...    # min: 3, max: 100
        ],                      # min: 1, max: 10; OPTIONAL
        lastUpdatedTimes => [
          {
            from => '1970-01-01T01:00:00',    # OPTIONAL
            to   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],                                    # min: 1, max: 10; OPTIONAL
        regions => [ 'Myregion', ... ],       # min: 1, max: 10; OPTIONAL
        services => [
          'Myservice', ...                    # min: 2, max: 30
        ],                                    # min: 1, max: 10; OPTIONAL
        startTimes => [
          {
            from => '1970-01-01T01:00:00',    # OPTIONAL
            to   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],                                    # min: 1, max: 10; OPTIONAL
        tags => [
          {
            'MytagKey' => 'MytagValue',       # key: max: 127, value: max: 255
          },
          ...                                 # max: 50
        ],                                    # max: 50; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MynextToken',    # OPTIONAL
    );

    # Results:
    my $EventAggregates = $DescribeEventAggregatesResponse->EventAggregates;
    my $NextToken       = $DescribeEventAggregatesResponse->NextToken;

    # Returns a L<Paws::Health::DescribeEventAggregatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/health/DescribeEventAggregates>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AggregateField => Str

The only currently supported value is C<eventTypeCategory>.

Valid values are: C<"eventTypeCategory">

=head2 Filter => L<Paws::Health::EventFilter>

Values to narrow the results returned.



=head2 MaxResults => Int

The maximum number of items to return in one batch, between 10 and 100,
inclusive.



=head2 NextToken => Str

If the results of a search are large, only a portion of the results are
returned, and a C<nextToken> pagination token is returned in the
response. To retrieve the next batch of results, reissue the search
request and include the returned token. When all results have been
returned, the response does not contain a pagination token value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeEventAggregates in L<Paws::Health>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

