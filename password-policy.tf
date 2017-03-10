##################################################################################################################
#                                                                                                                #
# Manages Password Policy for the AWS Account.                                                                   #
#                                                                                                                #
# Note: There is only a single policy allowed per AWS account. An existing policy will be lost when using this   #
# resource as an effect of this limitation.                                                                      #
#                                                                                                                #
# Further reading: https://www.terraform.io/docs/providers/aws/r/iam_account_password_policy.html                #
#                                                                                                                #
##################################################################################################################

resource "aws_iam_account_password_policy" "strict" {
  minimum_password_length        = "${var.minimum_length}"
  require_lowercase_characters   = "${var.require_lowercase}"
  require_uppercase_characters   = "${var.require_uppercase}"
  require_numbers                = "${var.require_numbers}"
  require_symbols                = "${var.require_symbols}"
  allow_users_to_change_password = "${var.allow_user_change}"
  hard_expiry                    = "${var.hard_expiry}"
  max_password_age               = "${var.maximum_age}"
  password_reuse_prevention      = "${var.reuse_history}"
}



