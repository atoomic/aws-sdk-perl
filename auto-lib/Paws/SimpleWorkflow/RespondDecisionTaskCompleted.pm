
package Paws::SimpleWorkflow::RespondDecisionTaskCompleted;
  use Moose;
  has Decisions => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::Decision]', traits => ['NameInRequest'], request_name => 'decisions' );
  has ExecutionContext => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'executionContext' );
  has TaskToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'taskToken' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RespondDecisionTaskCompleted');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::RespondDecisionTaskCompleted - Arguments for method RespondDecisionTaskCompleted on Paws::SimpleWorkflow

=head1 DESCRIPTION

This class represents the parameters used for calling the method RespondDecisionTaskCompleted on the 
Amazon Simple Workflow Service service. Use the attributes of this class
as arguments to method RespondDecisionTaskCompleted.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RespondDecisionTaskCompleted.

As an example:

  $service_obj->RespondDecisionTaskCompleted(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Decisions => ArrayRef[L<Paws::SimpleWorkflow::Decision>]

  The list of decisions (possibly empty) made by the decider while
processing this decision task. See the docs for the decision structure
for details.

=head2 ExecutionContext => Str

  User defined context to add to workflow execution.

=head2 B<REQUIRED> TaskToken => Str

  The C<taskToken> from the DecisionTask.

C<taskToken> is generated by the service and should be treated as an
opaque value. If the task is passed to another process, its
C<taskToken> must also be passed. This enables it to provide its
progress and respond with results.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RespondDecisionTaskCompleted in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

