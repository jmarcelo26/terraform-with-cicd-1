# exit script upon any non-zero exit code
set -o errexit

source ./workflows/script.sh

# initialization of terraform
terraform get
terraform init -input=false 

# format checking of terraform
terraform fmt -recursive
