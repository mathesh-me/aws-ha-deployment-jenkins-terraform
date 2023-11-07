## Deploy Resources

- After configuring the pipeline job.
- Click on the `Build Now` option to deploy the AWS infrastructure.
- I configured my pipeline code with two options.
- One is to deploy the AWS infrastructure and the other is to destroy the application to the AWS infrastructure.
- You can see the `Build with Parameters` option in the pipeline job. It will ask you to choose the option to deploy or destroy the AWS infrastructure.
- Choose the `Deploy` option and click on the `Build` button.
- The pipeline job will start deploying the AWS infrastructure.
- Once the pipeline job is completed, the AWS infrastructure will be deployed.
- The pipeline job will also output the `Load Balancer DNS Name`.
- Copy the `Load Balancer DNS Name` and paste it in a browser to access the application.
- The application will be accessible from the Internet.

![result](https://github.com/mathesh-me/high-availabilty-deployment-terraform/assets/144098846/b5add2bd-e0ef-4cd0-8ec8-420932af301d)

- The application will be deployed to the AWS infrastructure automatically whenever a change is made to the application code.
- You can see the below Image , it is the output for Deploying and Destroying Resources:

 ![aws-jenkins-3](https://github.com/mathesh-me/aws-ha-deployment-jenkins-terraform/assets/144098846/0bfd6d01-1991-4322-ab35-5be22050425b)

