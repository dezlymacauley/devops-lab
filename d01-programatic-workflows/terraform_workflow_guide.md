# Terraform Workflow Guide
_______________________________________________________________________________

Create a directory and enter it
```bash
mkdir terraform-workflow && cd terraform-workflow
```
_______________________________________________________________________________

Use `mise` to add the following tools to the workflow
```bash
mise use eza@latest
mise use terraform@latest
mise use "github:hashicorp/terraform-ls"@latest
mise use aws-cli@latest
```
_______________________________________________________________________________

Create the following files
```bash
touch .env .env_example .gitignore 
mkdir terraform-files
touch terraform-files/new.tf

printf '%s\n' \
  '# Terraform Initialization' \
  '.terraform/' \
  '' \
  '# Terraform State' \
  '*.tfstate*' \
  '' \
  '# Environment Variables' \
  '.env*' \
  '!.env_example' >> .gitignore

printf '%s\n' \
  '# vim: ft=env' \
  'AWS_DEFAULT_REGION="us-east-1"' \
  'AWS_ACCESS_KEY_ID="add the value"' \
  'AWS_SECRET_ACCESS_KEY="add the value"' >> .env_example
```
_______________________________________________________________________________

Update the `mise.toml` file to look like this
```toml
[env]
_.file = ".env"   
#______________________________________________________________________________

[tools]
aws-cli = { version = "latest", symlink_bins = "true" }
eza = "latest"
"github:hashicorp/terraform-ls" = "latest"
terraform = "latest"
#______________________________________________________________________________

[shell_alias]
structure = "eza --tree --git-ignore --all"
#______________________________________________________________________________
```
_______________________________________________________________________________

Add your environment variables to to the `.env` file
_______________________________________________________________________________

Run AWS `Security Token Service` command to confirm that you are logged into
the correct AWS account.
```bash
aws sts get-caller-identity
```
_______________________________________________________________________________
