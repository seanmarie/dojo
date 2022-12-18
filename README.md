This is my dojo implementation, a simple GO app, hosted using IaC

Dockerfile:
- created with multi-stage build
- First stage build using Alpine
- Second stage deploy using distroless

./build.sh:
- build script to run docker build for each stage
- Used script to tag each stages docker image

/terraform:
- Terraform code to authenticate with Digital Ocean
- lucy.tf added to test deployment of DO Droplet

.envrc:
- Use direnv to set the following environment variables for DO Token and SSH private key location
```
export TF_VAR_do_token=digital_ocean_token
export TF_VAR_pvt_key=~/.ssh/id_rsa
```
