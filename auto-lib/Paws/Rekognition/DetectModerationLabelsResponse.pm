
package Paws::Rekognition::DetectModerationLabelsResponse;
  use Moose;
  has ModerationLabels => (is => 'ro', isa => 'ArrayRef[Paws::Rekognition::ModerationLabel]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Rekognition::DetectModerationLabelsResponse

=head1 ATTRIBUTES


=head2 ModerationLabels => ArrayRef[L<Paws::Rekognition::ModerationLabel>]

Array of detected Moderation labels and the time, in millseconds from
the start of the video, they were detected.


=head2 _request_id => Str


=cut

1;