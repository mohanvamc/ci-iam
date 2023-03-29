# ci-iam module

create a CI user and group attaches a policy to assume a CI role

Folder Structure 
```bash
.
└── ci-iam
    ├── Readme.md
    ├── example
    │   ├── main.tf
    │   └── tfplan.txt
    ├── main.tf
    ├── outputs.tf
    ├── variables.tf
    └── versions.tf
```

# RUN 
To run this code you need to execute:

cd example
```bash
$ terraform init
$ terraform plan
$ terraform apply
```

## Requirements

| Name | Version |
|------|---------|
| requirement_terraform | >= 1.0 |
| name="requirement_aws | >= 4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | Name to be used for user/group/policy/role | `string` | prod-ci | yes |




## Outputs

| Name | Description |
|------|-------------|
| role_arn | The ARN of the Role that is created |
| policy_arn | The ARN of the Policy that is created |
| group_name | The Name of the Group that is created |
| user_name | The Name of the user that is created |

