State file in Terraform is where Terraform records the information of the infrastructure it has created.
State file is important because it helps Terraform update and manage existing infrastructure instead of creating new instances or resources.
Advantages of using the state file include updating existing infrastructure and destroying infrastructure in a controlled manner.
One drawback of the state file is that it records sensitive information, such as passwords, by default.
Storing the state file on a personal laptop or any vulnerable device can compromise the security of sensitive information in the state file.
Real-world scenarios involve multiple DevOps engineers collaborating on a Terraform project.
Storing the entire Terraform logic, including the state file, in a Version Control System can compromise sensitive information.
If the state file is not pushed to the Version Control System, Terraform may not know about updates and can delete the corresponding infrastructure.
Using a remote backend solves the drawbacks of storing the state file in a Version Control System.
With a remote backend, the state file is automatically updated in the external resource (e.g., S3 bucket) when applying Terraform configurations.
Storing the state file in a separate remote backend, such as an S3 bucket, enhances security and prevents sensitive information from being exposed in a Version Control System.
Multiple remote backends can be used, such as S3 or Azure storage, depending on the cloud provider being used.
With a remote backend workflow, DevOps engineers can clone the GitHub repository, make changes locally, verify them with `terraform apply`, and raise a pull request to update the remote state file stored in the S3 bucket.
Before running `terraform init`, there will be no state file available. After running `terraform apply`, the state file will be created and populated with resource information.
The populated state file contains information about the created resources, such as the instance ID, public and private IP addresses.
Storing the state file in a Version Control System is not recommended due to security risks and the potential for forgetting to push updates to the state file.
Terraform can show the state file using the `terraform show` command.
Deleting the state file can cause Terraform to lose track of the created resources.
Using a remote backend like S3 requires creating a `backend.tf` file with the necessary backend configuration.
Copying and pasting backend configuration from the HashiCorp documentation or using extensions can simplify the process.
S3 bucket creation can be done manually or with Terraform, ensuring unique bucket names.
The S3 bucket name and region are required in the backend configuration.
Initializing the project with the backend configuration will create the S3 bucket.
The state file will be created and stored in the S3 bucket instead of locally.
The state file can be stored in an S3 bucket instead of locally.
Using a remote backend allows storing the state file in S3 and accessing it from there.
Modifying the code no longer requires handling the state file manually.
Terraform uses locking mechanism to prevent conflicts when multiple people try to update the same project simultaneously.
DynamoDB can be used as a locking mechanism for Terraform projects.
Adding the DynamoDB lock details to the backend configuration enables Terraform to handle locking.