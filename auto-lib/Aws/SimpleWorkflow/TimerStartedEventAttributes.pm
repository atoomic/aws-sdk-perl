package Aws::SimpleWorkflow::TimerStartedEventAttributes {
  use Moose;
  has control => (is => 'ro', isa => 'Str');
  has decisionTaskCompletedEventId => (is => 'ro', isa => 'Num', required => 1);
  has startToFireTimeout => (is => 'ro', isa => 'Str', required => 1);
  has timerId => (is => 'ro', isa => 'Str', required => 1);
}
1
