package Paws::MediaConvert::HlsEncryptionSettings;
  use Moose;
  has ConstantInitializationVector => (is => 'ro', isa => 'Str', request_name => 'constantInitializationVector', traits => ['NameInRequest']);
  has EncryptionMethod => (is => 'ro', isa => 'Str', request_name => 'encryptionMethod', traits => ['NameInRequest']);
  has InitializationVectorInManifest => (is => 'ro', isa => 'Str', request_name => 'initializationVectorInManifest', traits => ['NameInRequest']);
  has SpekeKeyProvider => (is => 'ro', isa => 'Paws::MediaConvert::SpekeKeyProvider', request_name => 'spekeKeyProvider', traits => ['NameInRequest']);
  has StaticKeyProvider => (is => 'ro', isa => 'Paws::MediaConvert::StaticKeyProvider', request_name => 'staticKeyProvider', traits => ['NameInRequest']);
  has Type => (is => 'ro', isa => 'Str', request_name => 'type', traits => ['NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConvert::HlsEncryptionSettings

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::MediaConvert::HlsEncryptionSettings object:

  $service_obj->Method(Att1 => { ConstantInitializationVector => $value, ..., Type => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::MediaConvert::HlsEncryptionSettings object:

  $result = $service_obj->Method(...);
  $result->Att1->ConstantInitializationVector

=head1 DESCRIPTION

Settings for HLS encryption

=head1 ATTRIBUTES


=head2 ConstantInitializationVector => Str

  This is a 128-bit, 16-byte hex value represented by a 32-character text
string. If this parameter is not set then the Initialization Vector
will follow the segment number by default.


=head2 EncryptionMethod => Str

  


=head2 InitializationVectorInManifest => Str

  


=head2 SpekeKeyProvider => L<Paws::MediaConvert::SpekeKeyProvider>

  


=head2 StaticKeyProvider => L<Paws::MediaConvert::StaticKeyProvider>

  


=head2 B<REQUIRED> Type => Str

  



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::MediaConvert>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

