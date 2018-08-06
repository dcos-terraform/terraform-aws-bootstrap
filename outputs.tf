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
  description = "Output the OS user if default AMI is used"
  value       = "${module.dcos-tested-oses.user}"
}
