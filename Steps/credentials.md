## Stroring AWS Credentials in Jenkins

### Prerequisites

- AWS Account
- IAM User with appropriate permissions to create resources.
- Jenkins installed and configured for your CI/CD pipeline.

### Steps

1. Login to Jenkins.
2. Click on **Manage Jenkins**.
3. Click on **Manage Credentials**.
4. Click on **Global credentials (unrestricted)**.
5. Click on **Add Credentials**.
6. Select **Secret text** from the **Kind** dropdown.
7. Enter **AWS_ACCESS_KEY_ID** in the **ID** field.
8. Enter the **AWS Access Key ID** in the **Secret** field.
9. Enter **AWS_SECRET_ACCESS_KEY** in the **ID** field.
10. Enter the **AWS Secret Access Key** in the **Secret** field.

