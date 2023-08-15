### pre-commit installation on `amazon-linux`
```

```

### 001_directories.yaml
The clowdhaus/terraform-composite-actions/directories action will return a list of directories that contain a versions.tf, 
where the presence of a versions.tf file is loosely representative of a Terraform project root directory. 
This is useful for running a set of commands in each Terraform root directory under a given project.
- link: https://github.com/clowdhaus/terraform-composite-actions#directories

### 002_minMax.yaml
GitHub action used to evaluate the Terraform minimum and maximum versions permitted
- link: https://github.com/clowdhaus/terraform-min-max

### 003_preCommitMinVersion.yaml
The `clowdhaus/terraform-composite-actions/pre-commit` action will install the following tools which are intended to support 
the `pre-commit` hooks used within Terraform modules:
- https://github.com/clowdhaus/terraform-composite-actions#pre-commit
- https://github.com/antonbabenko/pre-commit-terraform#terraform_tflint