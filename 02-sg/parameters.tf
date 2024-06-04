

### storing the DB Security group ID in SSM Parameter store in AWS, which we created in main.tf under 02-sg
resource "aws_ssm_parameter" "db_sg_id" {
  name  = "/${var.project_name}/${var.environment}/db_sg_id"
  type  = "String"
  value = module.db.sg_id
}

### storing the backend Security group ID in SSM Parameter store in AWS, which we created in main.tf under 02-sg
resource "aws_ssm_parameter" "backend_sg_id" {
  name  = "/${var.project_name}/${var.environment}/backend_sg_id"
  type  = "String"
  value = module.backend.sg_id
}

### storing the frontend Security group ID in SSM Parameter store in AWS, which we created in main.tf under 02-sg
resource "aws_ssm_parameter" "frontend_sg_id" {
  name  = "/${var.project_name}/${var.environment}/frontend_sg_id"
  type  = "String"
  value = module.frontend.sg_id
}

### storing the bastion Security group ID in SSM Parameter store in AWS, which we created in main.tf under 02-sg
resource "aws_ssm_parameter" "bastion_sg_id" {
  name  = "/${var.project_name}/${var.environment}/bastion_sg_id"
  type  = "String"
  value = module.bastion.sg_id
}

### storing the ansible Security group ID in SSM Parameter store in AWS, which we created in main.tf under 02-sg
resource "aws_ssm_parameter" "ansible_sg_id" {
  name  = "/${var.project_name}/${var.environment}/ansible_sg_id"
  type  = "String"
  value = module.ansible.sg_id
}
