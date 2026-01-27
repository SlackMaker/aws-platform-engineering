#!/bin/bash
set -e

terraform fmt -recursive
terraform init
terraform plan
