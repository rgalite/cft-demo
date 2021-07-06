# Bootstrap

## Introduction

This repository is based on the terraform-example-foundation [bootstrap step](https://github.com/terraform-google-modules/terraform-example-foundation/tree/master/0-bootstrap).

## Purpose

The bootstrap kit creates the required infra to enable for a git driven deployment.

## What it does

* Creates a GCP project `seed` that will only manage a GCS bucket to store the terraform state.

* Creates a GCP project `cloudbuild` that includes a CI/CD chain to enable projects automatic creation.

## Usage

* Copy the `terraform.example.tfvars` file to `terraform.tfvars` and fill in the required variables.

* Run the following commands:
  * `terraform init`
  * `terraform plan`
  * `terraform apply` then approve the changes by hitting the key `Y`.

* Run `terraform output gcs_bucket_tfstate` to get the bucket where terraform will persist your infrastructure state.

* Copy `backend.tf.example` file to `backend.tf` and fill in the bucket info.

* Run `terraform init` and agree to copy state to GCS.

* Run `terraform apply` to make sure the state is synced with GCS correctly.
