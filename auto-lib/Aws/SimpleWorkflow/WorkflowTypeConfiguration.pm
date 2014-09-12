package Aws::SimpleWorkflow::WorkflowTypeConfiguration {
  use Moose;
  has defaultChildPolicy => (is => 'ro', isa => 'Str');
  has defaultExecutionStartToCloseTimeout => (is => 'ro', isa => 'Str');
  has defaultTaskList => (is => 'ro', isa => 'Aws::SimpleWorkflow::TaskList');
  has defaultTaskStartToCloseTimeout => (is => 'ro', isa => 'Str');
}
1
