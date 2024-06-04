
### storing the VPC ID in SSM Parameter store in AWS
resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project_name}/${var.environment}/vpc_id"
  type  = "String"
  value = module.vpc.vpc_id
}

# ["id1", "id2"] - terraform format
# id1, id2 - aws ssm format
### storing the public subnet IDs in SSM Parameter store in AWS
resource "aws_ssm_parameter" "public_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/public_subnet_ids"
  type  = "StringList"
  value = join("," , module.vpc.public_subnet_ids) #converting list to stringList, using join function.
}

### storing the private subnet IDs in SSM Parameter store in AWS
resource "aws_ssm_parameter" "private_subnet_ids" {
  name  = "/${var.project_name}/${var.environment}/private_subnet_ids"
  type  = "StringList"
  value = join("," , module.vpc.private_subnet_ids) #converting list to stringList, using join function.
}

### storing the DB subnet group name in SSM Parameter store in AWS
resource "aws_ssm_parameter" "db_subnet_group_name" {
  name  = "/${var.project_name}/${var.environment}/db_subnet_group_name"
  type  = "String"
  value = module.vpc.database_subnet_group_name
}
