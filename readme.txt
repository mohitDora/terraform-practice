<BLOCK> <PARAMETERS> {
    ...ARGUMENTS
}

terraform init
terraform plan
terraform validate
terraform apply -auto-approve
terraform destroy

terraform refresh -> refresh the state and sync with the provider
terraform list -> list all the resources
terraform import aws_instance id -> import the resource state from aws

We never upload the .tfstate in github. So multiple user can have different .tfstate file this may lead to conflict.

to prevent from state conflict, we will upload the .tfstate in s3 and when someone access one lock_id will generate in dynamodb and at that time interval no other can change it.

terraform workspace new <name>
terraform workspace select <name>
terraform workspace list -> list all the workspaces
terraform workspace show -> show the current workspace. Default workspace is Default
terraform workspace delete <name>

master(prod) -> default workspace
dev -> dev workspace
