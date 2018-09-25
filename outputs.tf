output "instance" {
  description = "List of instances IDs created by this module"
  value       = "${module.dcos-bootstrap-instance.instances[0]}"
}

output "public_ip" {
  description = "List of public ip addresses created by this module"
  value       = "${module.dcos-bootstrap-instance.public_ips[0]}"
}

output "private_ip" {
  description = "List of private ip addresses created by this module"
  value       = "${module.dcos-bootstrap-instance.private_ips[0]}"
}

output "os_user" {
  description = "The OS user to be used"
  value       = "${module.dcos-bootstrap-instance.os_user}"
}

output "prereq-id" {
  description = "Returns the ID of the prereq script (if user_data or ami are not used)"
  value       = "${module.dcos-bootstrap-instance.prereq-id}"
}
