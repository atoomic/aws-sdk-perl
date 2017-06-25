package Paws::API::ServiceToClass;
  use strict;
  use warnings;

  our $services_to_classes = {
    acm => 'ACM',
    athena => 'Athena',
    apigateway => 'ApiGateway',
    autoscaling => 'AutoScaling',
   'application-autoscaling' => 'ApplicationAutoScaling',
    appstream => 'AppStream',
    batch => 'Batch',
    budgets => 'Budgets',
    clouddirectory => 'CloudDirectory',
    cloudformation => 'CloudFormation',
    cloudfront => 'CloudFront',
    cloudhsm => 'CloudHSM',
    cloudsearch => 'CloudSearch',
    cloudsearchdomain => 'CloudSearchDomain',
    cloudtrail => 'CloudTrail',
    cloudwatch => 'CloudWatch',
    codebuild => 'CodeBuild',
    codecommit => 'CodeCommit',
    codedeploy => 'CodeDeploy',
    codepipeline => 'CodePipeline',
    codestar => 'CodeStar',
   'cognito-identity' => 'CognitoIdentity',
   'cognito-idp' => 'CognitoIdp',
   'cognito-sync' => 'CognitoSync',
    config => 'Config',
    cur => 'CUR',
    datapipeline => 'DataPipeline',
    dax => 'DAX',
    devicefarm => 'DeviceFarm',
    discovery => 'Discovery',
    directconnect => 'DirectConnect',
    dms => 'DMS',
    ds => 'DS',
    dynamodb => 'DynamoDB',
    dynamodbstreams => 'DynamoDBStreams',
    ec2 => 'EC2',
    ecr => 'ECR',
    efs => 'EFS',
    elasticache => 'ElastiCache',
    elasticbeanstalk => 'ElasticBeanstalk',
    elastictranscoder => 'ElasticTranscoder',
    elb => 'ELB',
    elbv2 => 'ELBv2',
    elasticloadbalancing => 'ELB',
    ecs => 'ECS',
    elasticmapreduce => 'EMR',
    emr => 'EMR',
    es => 'ES',
    email => 'SES',
    events => 'CloudWatchEvents',
    firehose => 'Firehose',
    gamelift => 'GameLift',
    glacier => 'Glacier',
    greengrass => 'Greengrass',
    health => 'Health',
    iam => 'IAM',
    iot => 'IoT',
   'iot-data' => 'IoTData',
    inspector => 'Inspector',
    importexport => 'ImportExport',
    kinesis => 'Kinesis',
    kinesisanalytics => 'KinesisAnalytics',
    kms => 'KMS',
    lambda => 'Lambda',
   'lex-models' => 'LexModels',
   'lex-runtime' => 'LexRuntime',
    lightsail => 'Lightsail',
    logs => 'CloudWatchLogs',
    machinelearning => 'MachineLearning',
    marketplacecommerceanalytics => 'MarketplaceCommerceAnalytics',
   'marketplace-entitlement' => 'MarketplaceEntitlement',
    meteringmarketplace => 'MarketplaceMetering',
    monitoring => 'CloudWatch',
    mturk => 'MTurk',
    opsworks => 'OpsWorks',
    opsworkscm => 'OpsWorksCM',
    organizations => 'Organizations',
    pinpoint => 'Pinpoint',
    polly => 'Polly',
    rds => 'RDS',
    rekognition => 'Rekognition',
    redshift => 'RedShift',
    resourcegroupstaggingapi => 'ResourceTagging',
    route53 => 'Route53',
    route53domains => 'Route53Domains',
    s3 => 'S3',
    ses => 'SES',
    servicecatalog => 'ServiceCatalog',
    shield => 'Shield',
    signin => 'Signin',
    simpledb => 'SimpleDB',
    sms => 'SMS',
    swf => 'SimpleWorkflow',
    ssm => 'SSM',
    stepfunctions => 'StepFunctions',
    snowball => 'Snowball',
    sns => 'SNS',
    sqs => 'SQS',
    storagegateway => 'StorageGateway',
    sts => 'STS',
    support => 'Support',
    sdb => 'SDB',
    waf => 'WAF',
   'waf-regional' => 'WAFRegional',
    workdocs => 'WorkDocs',
    workspaces => 'WorkSpaces',
    xray => 'XRay',
  };
  
  sub service_to_class {
    my $service = shift;
    my $class = $services_to_classes->{ $service };
    die "No class for $service" if (not defined $class);
    return $class;
  }

  sub services {
    keys %$services_to_classes;
  }

  sub classes {
    grep { defined $_ } values %$services_to_classes;
  }
1;
