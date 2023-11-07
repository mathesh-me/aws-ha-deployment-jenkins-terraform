## Configure the Pipeline Job

- In the Jenkins Dashboard, click on the `New Item` option.
- Enter the name of the pipeline job as `terraform-pipeline`.
- Select the `Pipeline` option and click on the `OK` button.
- Scroll down to the `Pipeline` section and select the `Pipeline script from SCM` option.
- Select `Git` from the `SCM` dropdown.
- Enter the repository URL as
```
https://github.com/mathesh-me/aws-ha-deployment-jenkins-terraform.git
```
- Give the `Branch Specifier` as `*/main`.
- Click on the `Save` button.