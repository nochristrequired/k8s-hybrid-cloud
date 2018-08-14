##########################################################################################
# GCP Vars
# Project and Credentials must be configured via GCP Console
# https://console.cloud.google.com/projectcreate
# https://console.cloud.google.com/apis/credentials
# 
GCP_project     = "k8s-hybrid-cloud"
GCP_credentials = "/Users/braddown/.gcp/k8s-hybrid-cloud-8d6594f8105d.json"
GCP_region      = "us-west1"
GKE_name        = "hybrid-cloud"
GKE_zone        = "us-west1-a"
GKE_additional_zones = [
    "us-west1-b",
    "us-west1-c",
  ]
GKE_master_auth = [{
    username = "magic7s"
    password = "magic7s1234567890"
  }]

##########################################################################################
# AWS Vars
AWS_region               = "us-west-2"
AWS_worker_groups        = [
    { 
        "asg_desired_capacity" = "2",
        "key_name"             = "braddown-ciscolaptop"
  #     "asg_max_size"         = "10",
  #     "asg_min_size"         = "2",
  #     "instance_type"        = "m4.xlarge",
  #     "name"                 = "worker_group_a",
  #     "subnets"              = "${join(",", module.vpc.private_subnets)}",
    }]




##########################################################################################