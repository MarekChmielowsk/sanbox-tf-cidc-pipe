# sanbox-tf-cidc-pipe
Sandbox CD/CI Terraform pipeline

For Sandbox project

Setup

1) Create Service Account (GPC console -> IAM and admin -> Service account -> +Create Service Account)
2) Assign the roles: Editor (and required permission based on TF config)
3) Create account key (GCP console ... Service account -> select created account -> top menu Keys -> Add Key -> json format)
4) Download the service account key to GitHub secrets as GCP_CREDENTIALS. ( top menu Settings / Secrets and Variables / Actions -> New repository secret
5) Use in workflow *.yaml in the following way: env:
        GOOGLE_CREDENTIALS: ${{ secrets.GCP_CREDENTIALS }}
6) Check in GCP if Cloud Resource Manager API is enabled
7) Create bucket "project_id-pr-project_number-tfstate" to store terraform state, enable versioning (2 levels is OK)
8) Update bucket name in terraform.tf backend gcs

Operation in GitHub

1) Create branches main/terraform/develop
2) Commits to develop does NOT start workflow - allows multiple / in multiple files changes without starting terraflow
3) Opening pull request e.g. on merge develop -> terraform branch -> triggers GitHub terraform plan
4) review Actions - terraform plan before accepting pull request and merge to terraform branch
5) Several pull requests can be merge to terraform branch without triggering terraform apply (but there are several plans for review)
6) To apply to GCP -> create pull request on terraform baranch -> to main branch => commit/or merge to main branch triggers terraform apply 
7) To clear all resources except terraform storage bucket ->  commit/ merge to main branch with "[Destroy_ALL]" in commit message
