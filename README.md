# sanbox-tf-cidc-pipe
Sandbox CD/CI Terraform pipeline

In Google Sandbox project

1) Create Service Account.
2) Assign the roles: Editor (and required permission based on TF config)
3) Download the service account key to GitHub secrets as GCP_CREDENTIALS
4) Use in workflow *.yaml in the following way: env:
        GOOGLE_CREDENTIALS: ${{ secrets.GCP_CREDENTIALS }}
5) Check if Cloud Resource Manager API is enabled
6) Create bucket "project_id-pr-project_number-tfstate" to store terraform state, enable versioning (2 levels is OK)
7) Update bucket name in terraform.tf

Operation

1) Opening pull request triggers terraform plan
2) To apply -> commit/ merge to main with "[Apply_Changes]" message
3) To clear all except terraform storage bucket ->  -> commit/ merge to main with "[Destroy_ALL]" message
