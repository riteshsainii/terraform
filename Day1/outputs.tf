output "instance_ips" {
  value = values(aws_instance.server)[*].public_ip
}