# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "network" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dmarcocci.aws.lab5@dxc.com"
    AccountName  = "network"
    # Syntax for top-level OU
    # ManagedOrganizationalUnit = "Foundation"
    # Syntax for nested OU
    ManagedOrganizationalUnit = "Infrastructure (ou-xxxxxxxx)"
    SSOUserEmail              = "dmarcocci.aws.lab1@dxc.com"
    SSOUserFirstName          = "Daniele"
    SSOUserLastName           = "Marcocci"
  }

  account_tags = {
    "ABC:Owner"       = "owner@example.com"
    "ABC:Environment" = "Prod"
    "ABC:Project"     = "LandingZone"
  }

  change_management_parameters = {
    change_requested_by = "John Doe"
    change_reason       = "network account creation"
  }

  custom_fields = {
  }

  account_customizations_name = "network"
}
