output "ec2_public_ip" {
  value = [
    module.myapp-webserver.myapp-server.public_ip,
    module.myapp-webserver.myapp-server-two.public_ip,
    module.myapp-webserver.myapp-server-three.public_ip,
    module.myapp-webserver.myapp-server-four.public_ip,
  ]
}
