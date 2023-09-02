provider "aws"{
	region = "ap-south-1"
}

terraform {
	backend "s3" {
		bucket = "tf-test-bucket-new"
		key = "terraform.tfstate"
		region = "ap-south-1"
	}

}

resource "aws_instance" "tf_new_inst"{
	subnet_id = "subnet-0be54c832e7655725"
	ami = "ami-008b85aa3ff5c1b02"
	instance_type = "t2.micro"
	tags = {
		Name = "tf_new_inst"
		Env = "new_dev_inst"
	}
}
