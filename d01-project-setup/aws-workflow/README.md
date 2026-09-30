# ☁️ Floci AWS Workflow
_______________________________________________________________________________

Create the directory and enter it
```bash
mkdir floci-aws-workflow && cd floci-aws-workflow
```
_______________________________________________________________________________

Install the AWS CLI
```bash
mise use aws-cli@latest  
```
_______________________________________________________________________________

Install the Floci CLI
```bash
mise use github:floci-io/floci-cli@latest
```
_______________________________________________________________________________

Your `mise.toml` file should now look like this
```toml
[tools]
aws-cli = { version = "latest", symlink_bins = "true" }
"github:floci-io/floci-cli" = "latest"
```
_______________________________________________________________________________

Update your `mise.toml` file so that it looks like this
```toml
[env]
# AWS Settings
AWS_ENDPOINT_URL = "http://localhost.floci.io:4566"
AWS_DEFAULT_REGION = "us-east-1"
AWS_ACCESS_KEY_ID = "test"
AWS_SECRET_ACCESS_KEY = "test"

# Floci Settings

# Saves your changes without compromising speed
FLOCI_STORAGE_MODE = "hybrid"               
FLOCI_STORAGE_PERSISTENT_PATH = "{{env.HOME}}/.floci-aws-data"

[tools]
aws-cli = { version = "latest", symlink_bins = "true" }
"github:floci-io/floci-cli" = "latest"

[shell_alias]
run = "floci start --persist $FLOCI_STORAGE_PERSISTENT_PATH"
floci-status= "floci status"
stop = "floci stop"
```
_______________________________________________________________________________
