# ci-iam-module

create a CI user and group attaches a policy to assume a CI role

```bash
.
└── ci-iam
    ├── Readme.md
    ├── example
    │   ├── main.tf
    │   └── tfplan.txt
    ├── main.tf
    ├── outputs.tf
    ├── tfplan.txt
    ├── variables.tf
    └── versions.tf
```

cd ci-iam-module
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
| <a name="requirement_terraform"></a> | >= 1.0 |
| <a name="requirement_aws"></a>  | >= 4.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="name"></a> | Name to be used for user/group/policy/role | `string` | n/a | yes |




## Outputs

| Name | Description |
|------|-------------|
| <a name="role_arn"></a> | The ARN of the Role that is created |
| <a name="policy_arn"></a> | The ARN of the Policy that is created |
| <a name="group_name"></a> | The Name of the Group that is created |
| <a name="user_name"></a> | The Name of the user that is created |

