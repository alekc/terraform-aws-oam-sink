variable "allowed_source_accounts" {
  description = "AWS Account ids that will be allowed to send Metric and Log data to the monitoring account"
  type        = list(string)
  default     = []
}
variable "allowed_source_organizations" {
  description = "AWS Organization ids that will be allowed to send Metric and Log data to the monitoring account"
  type        = list(string)
  default     = []
}
variable "allowed_oam_resource_types" {
  description = "Allowed Metric Resource types that will be allowed to send Metric and Log data to the monitoring account"
  type        = list(string)
  default = [
    "AWS::CloudWatch::Metric",
    "AWS::ApplicationInsights::Application",
    "AWS::Logs::LogGroup",
    "AWS::XRay::Trace",
  ]
}
variable "name" {
  type        = string
  description = "Name used for sink"
  default     = "ObservabilitySink"
}
