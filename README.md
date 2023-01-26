# sanbox-tf-cidc-pipe
Sandbox CD/CI Terraform pipeline

In Google Sandbox project

1) Create Service Account.
2) Assign the roles: Editor (and required permission based on TF config)
3) Download the service account key.
4) Check if Cloud Resource Manager API is enabled
5) Create bucket "project_id-pr-project_number-tfstate" to store terraform state, enable versioning (2 levels is OK)
6) Update bucket name in terraform.tf

Operation

1) Opening pull request triggers terraform plan
2) To apply -> commit/ merge to main with "[Apply_Changes]" message
3) To clear all except terraform stora bucket ->  -> commit/ merge to main with "[Destroy_ALL]" message
