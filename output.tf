output "MASTER" {
  value = "${aws_instance.master.private_ip}"
}

output "WORKER1" {
 value = "${aws_instance.worker1.private_ip}"
}

output "WORKER2" {
  value = "${aws_instance.worker2.private_ip}"
}