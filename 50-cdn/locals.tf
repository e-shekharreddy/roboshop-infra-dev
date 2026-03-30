locals {
    common_tags ={
        project = var.project
        environment = var.environment
        terraform = true
    }
  CachingDisabled = data.aws_cloudfront_cache_policy.CachingDisabled.id
  CachingOptimized = data.aws_cloudfront_cache_policy.CachingOptimized.id
  acm_certificate_arn = data.aws_ssm_parameter.acm_certificate_arn.value

}