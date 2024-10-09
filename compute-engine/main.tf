terraform {
    required_providers {
        google = {
            source = "hashicorp/google"
            version = "4.49.0"
        }
    }
}

provider "google" {
    credentials = file(var.credentials_file)
    project = var.project
    region = "us-central1"
    zone = "us-central1-a"
}

module "vpc_network" {
    source = "./modules/vpc"
}

# resource "google_storage_bucket" "artifact_bucket" {
#     name = "model-artifact-bucket"
#     location = "US"
#     force_destroy = true

#     uniform_bucket_level_access = true
# }

module "training_worker" {
    source = "./modules/worker"

    ssh_file         = var.ssh_file
    ssh_file_private = var.ssh_file_private
    # bucket_url       = var.bucket_url
    git_ssh_url      = var.git_ssh_url
    git_clone_dir    = var.git_clone_dir
}