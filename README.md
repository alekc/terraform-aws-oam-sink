# terraform-aws-oam-link
A terraform module which can be used to create a Observability Access Manager link

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~>5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~>5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_oam_sink.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_sink) | resource |
| [aws_oam_sink_policy.monitoring_account_oam_sink_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/oam_sink_policy) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_allowed_oam_resource_types"></a> [allowed\_oam\_resource\_types](#input\_allowed\_oam\_resource\_types) | Allowed Metric Resource types that will be allowed to send Metric and Log data to the monitoring account | `list(string)` | <pre>[<br>  "AWS::CloudWatch::Metric",<br>  "AWS::ApplicationInsights::Application",<br>  "AWS::Logs::LogGroup",<br>  "AWS::XRay::Trace"<br>]</pre> | no |
| <a name="input_allowed_source_accounts"></a> [allowed\_source\_accounts](#input\_allowed\_source\_accounts) | AWS Account ids that will be allowed to send Metric and Log data to the monitoring account | `list(string)` | `[]` | no |
| <a name="input_allowed_source_organizations"></a> [allowed\_source\_organizations](#input\_allowed\_source\_organizations) | AWS Organization ids that will be allowed to send Metric and Log data to the monitoring account | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name used for sink | `string` | `"ObservabilitySink"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sink_id"></a> [sink\_id](#output\_sink\_id) | The ID of the OAM Sink |
<!-- END_TF_DOCS -->
