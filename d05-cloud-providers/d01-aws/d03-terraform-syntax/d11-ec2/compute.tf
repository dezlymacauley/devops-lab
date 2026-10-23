/* 
    I got the `ami` from this link:
    https://cloud-images.ubuntu.com/locator/ec2/

    Here are the details of the instance that I selected:
    Zone:           eu-north-1 
    Name:           Noble Numbat
    Version:        24.04 LTS
    Arch:           amd64
    Instance Type:  hvm:ebs-ssd-gp3
    Release:        20261004
    AMI-ID:         ami-09d835910a77f135c
    AKI-ID:         hvm

    You'd get this from AWS console
  */

 //____________________________________________________________________________
 
 // NOTE: If you only want to delete this resource without deleting the
 // rest of your infastructure. Run this command.

 // Method 1: Comment out the resource, then run `terraform apply`

 // Method 2: Run this command:
 // `terraform destroy -target=aws_instance.web_ec2`

 //____________________________________________________________________________

resource "aws_instance" "web_ec2" {

  tags = {
    Name = "${local.project_name}: web_ec2"
  }

  subnet_id = aws_subnet.public_subnet.id

  ami = "ami-09d835910a77f135c"

  instance_type = "t3.micro"

  associate_public_ip_address = true

  root_block_device {
    delete_on_termination = true
    volume_size           = 10
    volume_type           = "gp3"
  }

}
