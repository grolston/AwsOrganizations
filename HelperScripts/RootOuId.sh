#!/bin/bash

## Get Org Root OU ID
AWS_ORG_ROOT=$(aws organizations list-roots --query 'Roots[].Id' --output text )