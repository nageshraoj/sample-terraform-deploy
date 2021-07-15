data "aws_ami" "demoami" {
   most_recent = true
   owners = [ "amazon" ]
   filter {
     name = "name"
     values = [ "amzn2-ami-hvm-*" ]
   }
   filter {
     name = "virtualization-type"
     values = [ "hmv" ]
   }
   filter {
     name = "root-device-type"
     values = [ "ebs" ]
   }
   filter {
     name = "architecture"
     values = [ "x86_64" ]
   }
}