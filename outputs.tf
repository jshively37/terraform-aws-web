output "webserver_public_dns" {
  value = aws_instance.webserver.public_dns
}

output "webserver_public_ip" {
  value = aws_instance.webserver.public_ip
}
