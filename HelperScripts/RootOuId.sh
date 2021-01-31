#!/bin/bash

## Get Org Root OU ID to leverage for deploy CloudFormation StackSets
AWS_ORG_ROOT=$(aws organizations list-roots --query 'Roots[].Id' --output text )