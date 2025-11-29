resource "aws_security_group" "allow_ssh_terraform"{
    name = "allo-SSH"
    description ="allow port number 22 access"

    egress{

        from_port = 0
        to_port   = 0
        protocol  = "TCP"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress{

        from_port = 22
        to_port   = 22
        protocol  = "TCL"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    tags{
        Name ="Allow_ SSH"
    }
    
   
}

 resource "aws_instance" "terra1" {
     ami= "0f5ee92e2d63afc18"  
     instance_type = "t3.micro"  
     vpc_security_group_ids =[aws_security_group.allow_ssh_terraform.id]
    }


