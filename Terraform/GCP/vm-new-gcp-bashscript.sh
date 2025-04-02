#!/bin/bash

# Copy the service account key to the workspace
cp /d/devops/terraform/GCP/prime-haven-453221-q7-3cc1d310b3ad.json /c/ProgramData/Jenkins/.jenkins/workspace/TestAgain/Terraform/GCP/

# Navigate to the Terraform directory
cd /c/ProgramData/Jenkins/.jenkins/workspace/TestAgain/Terraform/GCP/

# Initialize Terraform
terraform init

# Validate the Terraform configuration
terraform validate

# Ask for manual approval before applying the plan
echo "Terraform is ready to apply changes."
read -p "Do you want to proceed with terraform apply? (yes/no): " choice

if [[ "$choice" == "yes" || "$choice" == "y" ]]; then
  # Apply the Terraform plan
  terraform apply
else
  echo "Terraform apply aborted."
fi
