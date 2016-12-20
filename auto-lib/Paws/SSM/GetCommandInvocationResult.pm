
package Paws::SSM::GetCommandInvocationResult;
  use Moose;
  has CommandId => (is => 'ro', isa => 'Str');
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str');
  has ExecutionElapsedTime => (is => 'ro', isa => 'Str');
  has ExecutionEndDateTime => (is => 'ro', isa => 'Str');
  has ExecutionStartDateTime => (is => 'ro', isa => 'Str');
  has InstanceId => (is => 'ro', isa => 'Str');
  has PluginName => (is => 'ro', isa => 'Str');
  has ResponseCode => (is => 'ro', isa => 'Int');
  has StandardErrorContent => (is => 'ro', isa => 'Str');
  has StandardErrorUrl => (is => 'ro', isa => 'Str');
  has StandardOutputContent => (is => 'ro', isa => 'Str');
  has StandardOutputUrl => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has StatusDetails => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::GetCommandInvocationResult

=head1 ATTRIBUTES


=head2 CommandId => Str

The parent command ID of the invocation plugin.


=head2 Comment => Str

The comment text for the command.


=head2 DocumentName => Str

The name of the SSM document that was executed. For example,
AWS-RunShellScript is an SSM document.


=head2 ExecutionElapsedTime => Str

Duration since C<ExecutionStartDateTime>.


=head2 ExecutionEndDateTime => Str

The date and time the plugin was finished executing. Date and time are
written in ISO 8601 format. For example, August 28, 2016 is represented
as 2016-08-28. If the plugin has not started to execute, the string is
empty.


=head2 ExecutionStartDateTime => Str

The date and time the plugin started executing. Date and time are
written in ISO 8601 format. For example, August 28, 2016 is represented
as 2016-08-28. If the plugin has not started to execute, the string is
empty.


=head2 InstanceId => Str

The ID of the managed instance targeted by the command. A managed
instance can be an Amazon EC2 instance or an instance in your hybrid
environment that is configured for Systems Manager.


=head2 PluginName => Str

The name of the plugin for which you want detailed results. For
example, aws:RunShellScript is a plugin.


=head2 ResponseCode => Int

The error level response code for the plugin script. If the response
code is C<-1>, then the command has not started executing on the
instance, or it was not received by the instance.


=head2 StandardErrorContent => Str

The first 8,000 characters written by the plugin to stderr. If the
command has not finished executing, then this string is empty.


=head2 StandardErrorUrl => Str

The URL for the complete text written by the plugin to stderr. If the
command has not finished executing, then this string is empty.


=head2 StandardOutputContent => Str

The first 24,000 characters written by the plugin to stdout. If the
command has not finished executing, if C<ExecutionStatus> is neither
C<Succeeded> nor C<Failed>, then this string is empty.


=head2 StandardOutputUrl => Str

The URL for the complete text written by the plugin to stdout in Amazon
S3. If an Amazon S3 bucket was not specified, then this string is
empty.


=head2 Status => Str

The status of the parent command for this invocation. This status can
be different than C<StatusDetails>.

Valid values are: C<"Pending">, C<"InProgress">, C<"Delayed">, C<"Success">, C<"Cancelled">, C<"TimedOut">, C<"Failed">, C<"Cancelling">
=head2 StatusDetails => Str

A detailed status of the command execution for an invocation.
C<StatusDetails> includes more information than C<Status> because it
includes states resulting from error and concurrency control
parameters. C<StatusDetails> can show different results than C<Status>.
For more information about these statuses, see Monitor Commands (Linux)
or Monitor Commands (Windows). C<StatusDetails> can be one of the
following values:

=over

=item *

Pending E<ndash> The command has not been sent to the instance.

=item *

In Progress E<ndash> The command has been sent to the instance but has
not reached a terminal state.

=item *

Delayed E<ndash> The system attempted to send the command to the
target, but the target was not available. The instance might not be
available because of network issues, the instance was stopped, etc. The
system will try to deliver the command again.

=item *

Success E<ndash> The command or plugin was executed successfully. This
is a terminal state.

=item *

Delivery Timed Out E<ndash> The command was not delivered to the
instance before the delivery timeout expired. Delivery timeouts do not
count against the parent commandE<rsquo>s C<MaxErrors> limit, but they
do contribute to whether the parent command status is C<Success> or
C<Incomplete>. This is a terminal state.

=item *

Execution Timed Out E<ndash> The command started to execute on the
instance, but the execution was not complete before the timeout
expired. Execution timeouts count against the C<MaxErrors> limit of the
parent command. This is a terminal state.

=item *

Failed E<ndash> The command wasn't executed successfully on the
instance. For a plugin, this indicates that the result code was not
zero. For a command invocation, this indicates that the result code for
one or more plugins was not zero. Invocation failures count against the
C<MaxErrors> limit of the parent command. This is a terminal state.

=item *

Canceled E<ndash> The command was terminated before it was completed.
This is a terminal state.

=item *

Undeliverable E<ndash> The command can't be delivered to the instance.
The instance might not exist or might not be responding. Undeliverable
invocations don't count against the parent commandE<rsquo>s
C<MaxErrors> limit and don't contribute to whether the parent command
status is C<Success> or C<Incomplete>. This is a terminal state.

=item *

Terminated E<ndash> The parent command exceeded its C<MaxErrors> limit
and subsequent command invocations were canceled by the system. This is
a terminal state.

=back



=head2 _request_id => Str


=cut

1;