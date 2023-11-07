## Steps for configuring webhook for the pipeline
- Go to the Jenkins server
- Click on the 'maven-pipeline' in the dashboard
- Click on 'Configure' in the left side of the dashboard
- Scroll down to the 'Build Triggers' section
- Select 'GitHub hook trigger for GITScm polling'
- Click 'Save'
- Go to the GitHub repository
- Click on 'Settings' in the right side of the repository
- Click on 'Webhooks' in the left side of the repository
- Click on 'Add webhook'
- Give the Payload URL as
```
http://<Jenkins-IP>:8080/github-webhook/
```
- Give the Content type as 'application/json'
- Give the Secret as 'mysecret'
- Select 'Just the push event' in the 'Which events would you like to trigger this webhook?' section
- Click 'Add webhook'
- Now if you make any changes in the GitHub repository the pipeline will automatically start building the project.