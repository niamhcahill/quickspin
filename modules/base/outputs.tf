# Outputs
# Chef Server
output "chef_server_url" {
  value            = "https://${aws_route53_record.chef_server.fqdn}"
}

# Automate Server
output "a2_server_url" {
  value            = "https://${aws_route53_record.a2_server.fqdn}"
}

# BLDR Server
output "bldr_server_fqdn" {
    value = concat(aws_route53_record.bldr_server.*.fqdn, [null])[0]
}
