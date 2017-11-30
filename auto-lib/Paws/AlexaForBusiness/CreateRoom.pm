
package Paws::AlexaForBusiness::CreateRoom;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ProfileArn => (is => 'ro', isa => 'Str');
  has ProviderCalendarId => (is => 'ro', isa => 'Str');
  has RoomName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::AlexaForBusiness::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoom');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AlexaForBusiness::CreateRoomResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AlexaForBusiness::CreateRoom - Arguments for method CreateRoom on L<Paws::AlexaForBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoom on the 
Alexa For Business service. Use the attributes of this class
as arguments to method CreateRoom.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoom.

As an example:

  $service_obj->CreateRoom(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, user-specified identifier for this request that ensures
idempotency.



=head2 Description => Str

The description for the room.



=head2 ProfileArn => Str

The profile ARN for the room.



=head2 ProviderCalendarId => Str

The calendar ARN for the room.



=head2 B<REQUIRED> RoomName => Str

The name for the room.



=head2 Tags => ArrayRef[L<Paws::AlexaForBusiness::Tag>]

The tags for the room.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoom in L<Paws::AlexaForBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
