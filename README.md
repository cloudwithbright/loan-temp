## MLOps Workshop Template

## Note
This template assume you already have an aws account.

* Setup Authentication with Github Action and AWS using OIDC.

* Copy and past the created `role name` and replace it in `.github/workflows/setup.yml` file line number 23 which looks like the following.

```yml
AUTH_GITHUBACTION_WITH_AWS_IAM_ROLE_NAME: ml-project-002 # Replace with Role Name
```

* Generate new token in your Github Account with repo, workflow, write:packages, delete:packages and notification permisions selected. Make sure to copy the generated token and save it somewhere

* In your github repository -> settings -> Actions secrets and variables -> Actions -> Secrets, create secrets with the following variable names.
```bash

#Replace value with Github token created
MY_GITHUB_PASSWORD

# Replace value with your Github repository username
MY_GITHUB_USERNAME

#Replace value with your AWS account ID
YOUR_AWS_ACCOUNT_ID
```

* In .github/workflow/setup.yml file, line number 15, change the value of region to your region name
```bash
AWS_REGION: "us-east-1" # Provide region or leave it as default.
```

* In .github/workflows/setup.yml file, line number 13, make sure the value of `ACTION='apply'`.

* Initialize your directory, commit and push the sources code to main branch

**Note:** If you won't to delete all resources, change the value of `ACTION='destroy'`, commit and push to the setup branch to destroy all resources.
