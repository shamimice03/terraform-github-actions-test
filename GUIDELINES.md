## pre-commit installation on `Ubuntu`

- Python Installation guide - [ubuntu](https://phoenixnap.com/kb/how-to-install-python-3-ubuntu)
```bash
# check version - must be python3 
 python -V
# Python 3.7.16
```

```bash
# run following commands
python3 -m pip install --upgrade pip
pip3 install --no-cache-dir pre-commit
pip3 install --no-cache-dir checkov
curl -L "$(curl -s https://api.github.com/repos/terraform-docs/terraform-docs/releases/latest | grep -o -E -m 1 "https://.+?-linux-amd64.tar.gz")" > terraform-docs.tgz && tar -xzf terraform-docs.tgz terraform-docs && rm terraform-docs.tgz && chmod +x terraform-docs && sudo mv terraform-docs /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/tenable/terrascan/releases/latest | grep -o -E -m 1 "https://.+?_Linux_x86_64.tar.gz")" > terrascan.tar.gz && tar -xzf terrascan.tar.gz terrascan && rm terrascan.tar.gz && sudo mv terrascan /usr/bin/ && terrascan init
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E -m 1 "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && sudo mv tflint /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/aquasecurity/tfsec/releases/latest | grep -o -E -m 1 "https://.+?tfsec-linux-amd64")" > tfsec && chmod +x tfsec && sudo mv tfsec /usr/bin/
sudo apt install -y jq && \
curl -L "$(curl -s https://api.github.com/repos/infracost/infracost/releases/latest | grep -o -E -m 1 "https://.+?-linux-amd64.tar.gz")" > infracost.tgz && tar -xzf infracost.tgz && rm infracost.tgz && sudo mv infracost-linux-amd64 /usr/bin/infracost && infracost register
curl -L "$(curl -s https://api.github.com/repos/minamijoyo/tfupdate/releases/latest | grep -o -E -m 1 "https://.+?_linux_amd64.tar.gz")" > tfupdate.tar.gz && tar -xzf tfupdate.tar.gz tfupdate && rm tfupdate.tar.gz && sudo mv tfupdate /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/minamijoyo/hcledit/releases/latest | grep -o -E -m 1 "https://.+?_linux_amd64.tar.gz")" > hcledit.tar.gz && tar -xzf hcledit.tar.gz hcledit && rm hcledit.tar.gz && sudo mv hcledit /usr/bin/
```

## pre-commit installation on `centos`
```bash
# run following commands
python3 -m pip install --upgrade pip
pip3 install --no-cache-dir pre-commit
pip3 install --no-cache-dir checkov
curl -L "$(curl -s https://api.github.com/repos/terraform-docs/terraform-docs/releases/latest | grep -o -E -m 1 "https://.+?-linux-amd64.tar.gz")" > terraform-docs.tgz && tar -xzf terraform-docs.tgz terraform-docs && rm terraform-docs.tgz && chmod +x terraform-docs && sudo mv terraform-docs /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/tenable/terrascan/releases/latest | grep -o -E -m 1 "https://.+?_Linux_x86_64.tar.gz")" > terrascan.tar.gz && tar -xzf terrascan.tar.gz terrascan && rm terrascan.tar.gz && sudo mv terrascan /usr/bin/ && terrascan init
curl -L "$(curl -s https://api.github.com/repos/terraform-linters/tflint/releases/latest | grep -o -E -m 1 "https://.+?_linux_amd64.zip")" > tflint.zip && unzip tflint.zip && rm tflint.zip && sudo mv tflint /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/aquasecurity/tfsec/releases/latest | grep -o -E -m 1 "https://.+?tfsec-linux-amd64")" > tfsec && chmod +x tfsec && sudo mv tfsec /usr/bin/
sudo yum install -y jq && \
curl -L "$(curl -s https://api.github.com/repos/infracost/infracost/releases/latest | grep -o -E -m 1 "https://.+?-linux-amd64.tar.gz")" > infracost.tgz && tar -xzf infracost.tgz && rm infracost.tgz && sudo mv infracost-linux-amd64 /usr/bin/infracost && infracost register
curl -L "$(curl -s https://api.github.com/repos/minamijoyo/tfupdate/releases/latest | grep -o -E -m 1 "https://.+?_linux_amd64.tar.gz")" > tfupdate.tar.gz && tar -xzf tfupdate.tar.gz tfupdate && rm tfupdate.tar.gz && sudo mv tfupdate /usr/bin/
curl -L "$(curl -s https://api.github.com/repos/minamijoyo/hcledit/releases/latest | grep -o -E -m 1 "https://.+?_linux_amd64.tar.gz")" > hcledit.tar.gz && tar -xzf hcledit.tar.gz hcledit && rm hcledit.tar.gz && sudo mv hcledit /usr/bin/
```

#### Run `pre-commit on local machine
```bash
pre-commit run -a
```

> Ref: https://github.com/antonbabenko/pre-commit-terraform#how-to-install

***

## 001_directories.yaml
The clowdhaus/terraform-composite-actions/directories action will return a list of directories that contain a versions.tf, 
where the presence of a versions.tf file is loosely representative of a Terraform project root directory. 
This is useful for running a set of commands in each Terraform root directory under a given project.
- link: https://github.com/clowdhaus/terraform-composite-actions#directories

## 002_minMax.yaml
GitHub action used to evaluate the Terraform minimum and maximum versions permitted
- link: https://github.com/clowdhaus/terraform-min-max

## 003_preCommitMinVersion.yaml
The `clowdhaus/terraform-composite-actions/pre-commit` action will install the following tools which are intended to support 
the `pre-commit` hooks used within Terraform modules:
- https://github.com/clowdhaus/terraform-composite-actions#pre-commit
- https://github.com/antonbabenko/pre-commit-terraform#terraform_tflint

## 004_preCommitMaxVersion.yaml
Before executing we need to run pre-commit in local machine: `.pre-commit-config.yaml` needed

#### Note: `Terraform-docs`:
In `README.md` file following line must be added: 

```bash
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
```

> Ref: https://github.com/antonbabenko/pre-commit-terraform#terraform_docs

#### Target:
```
> pre-commit run -a

Terraform fmt............................................................Passed
Terraform validate.......................................................Passed
Terraform docs...........................................................Passed
Terraform validate with tflint...........................................Passed
check for merge conflicts................................................Passed

```

#### Link: 
- https://github.com/pre-commit/pre-commit-hooks
- https://github.com/antonbabenko/pre-commit-terraform

***

## 005_release.yaml and 006_release_v2.yaml

- `releaserc.json` file contains the configurations needed for release.
- Plugin-list: https://semantic-release.gitbook.io/semantic-release/v/beta/extending/plugins-list
- `Conventional Commits` 
   - https://www.conventionalcommits.org/en/v1.0.0/
   - https://medium.com/agoda-engineering/automating-versioning-and-releases-using-semantic-release-d16c5672fbe1
   - https://gist.github.com/qoomon/5dfcdf8eec66a051ecd85625518cfd13
   
     <details>
        <summary> Details </summary>
            When using `Conventional Commits` , only  `type` and  `description` are mandatory, while the rest is optional. 
            The value of type is important and needs to be only one of the following:
            
            ```
            feat: A new feature
            fix: A bug fix
            docs: Documentation only changes
            style: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
            refactor: A code change that neither fixes a bug nor adds a feature
            perf: A code change that improves performance
            test: Adding missing or correcting existing tests
            chore: Changes to the build process or auxiliary tools and libraries, such as documentation generation
            Below are some sample commits made using this specification -
            ```
            
            Exmaples:
            ```
            feat(logging): added logs for failed signups
            fix(homepage): fixed image gallery
            test(homepage): updated tests
            docs(readme): added new logging table information
            ```
     </details>

- `commit-analyzer` 
   - https://www.npmjs.com/package/@semantic-release/commit-analyzer
   - Example:
      ```bash
      git commit -m "fix(variable-data): fixed variable default value"
      ```
