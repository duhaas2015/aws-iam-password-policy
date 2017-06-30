# Creating AWS IAM Password Policies in Terraform

This module will allow you to create a full IAM password policy which is applied to allow your IAM users.

## How to use the modue

Simple source the module from your terraform code and pass in the required variables.

```
module "password-policy" {
  source = "../../modules/aws-iam-password-policy"

  region            = "eu-west-1"
  minimum_length    = 16
  require_lowercase = true
  require_uppercase = true
  require_numbers   = true
  require_symbols   = true
  allow_user_change = true
  hard_expiry       = false
  maximum_age       = 30
  reuse_history     = 24
}
```

## What are the variables?

The module has 9 variables which do the following:

1. Region - which aws region you want the resource to be built in. (Default: eu-west-1)
2. Minimum length - The shortest length a password can be (Default: 16 characters)
3. Require lowercase - Must the password contain lowercase characters (Default: True)
4. Require uppercase - Must the password contain uppercase characters (Default: True)
5. Require numbers - Must the password contain numbers (Default: True)
6. Require symbols - Must the password contain symbols (Default: True)
7. User Change - Whether to allow users to change their own password (Default: True)
8. Harx Expiry - Whether users are prevented from setting a new password after their password has expired (i.e. require administrator reset) (Default: False)
9. Reuse History - The number of previous passwords that users are prevented from reusing. (Default: 24)
