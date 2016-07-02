output "ec2_oregon" {
  value = <<EOT

public ip:  ${aws_instance.ec2_oregon.public_ip}
private ip: ${aws_instance.ec2_oregon.private_ip}

EOT
}

output "vyos_tokyo" {
  value = <<EOT

public ip:  ${aws_instance.vyos_tokyo.public_ip}
private ip: ${aws_instance.vyos_tokyo.private_ip}
EOT
}
