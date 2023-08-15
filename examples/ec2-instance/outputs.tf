output "private_node_ip" {
  description = "IP address of privete node"
  value = aws_instance.private_node.private_ip
}


