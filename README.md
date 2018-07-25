# Example ECR Resource

## Permissions
_Not sure of the exact permission set, but PowerUser didn't cut it_
- `AmazonEC2ContainerRegistryFullAccess`

## Run
```sh
terraform init
terraform plan -var-file secrets.tfvars -var repository=mycontainer
terraform apply -var-file secrets.tfvars -var repository=mycontainer
```
_The output of apply will give you the registry URL_

## Push images using `docker`
You must log in to the registry, like `docker login -u AWS -p <access_key> <registry_url>`. Luckily, you can get the whole command with access key using the AWS CLI:

```sh
$(aws --profile=myprofile ecr get-login --no-include-email)
docker tag mycontainer <registry_url>/mycontainer
docker push <registry_url>/mycontainer
```

## AWS CLI setup
```sh
aws configure --profile=myprofile
# Enter in the key id and secret, optionally default region and output format
```
