package Aws::CloudSearch::AnalysisSchemeStatus {
  use Moose;
  has Options => (is => 'ro', isa => 'Aws::CloudSearch::AnalysisScheme', required => 1);
  has Status => (is => 'ro', isa => 'Aws::CloudSearch::OptionStatus', required => 1);
}
1
