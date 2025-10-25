# variable "project_name" {
#   type        = string
#   description = "Name of the project"
#   default     = "zust-a1A"
#   validation {
#     condition     = can(regex("^zust-[a-zA-Z0-9]+$", var.project_name)) && length(var.project_name) <=8
#     error_message = "Project name must start with 'zust-' and contain lowercase letters only. Its length must be less than 8"
#   }
# }

# variable "client_secret" {
#   type        = string
#   description = "Client secret for authentication"
#   sensitive   = true
#   #default = "Anil@9908."
#   validation {
#     condition     = length(var.client_secret) >= 5 && can(regex("^[A-Za-z0-9@.]+$", var.client_secret))
#     error_message = "Secret must be at least 5 alphanumeric characters"
#   }
# }

# variable "environment_contains" {
#   type        = string
#   description = "Environment name"
#   default     = "dev"
#   validation {
#     condition     = contains(["dev", "stage", "prod"], var.environment_contains)
#     error_message = "Environment must be one of: dev, stage, prod"
#   }
# }

# variable "location" {
#   description = EOF <<
#   "azwe - West Europe region
#   azne - North Europe
#   EOF"
#   type = string
#   default = "eastus2"
# }

# EAST US 2

# eastus2 - split(upper(var.location)) -> EAST  US 2

# variable "location_short_name" {
#   description = "shortname"
#   type = map(string)
#   default = {
#     "azwe" = "West Europe"
#     "azne" = "North Europe"
#   }
# }
# az
# location = var.location[var.location_short_name]


# variable "environment_regex" {
#   type        = string
#   description = "Environment name"
#   default     = "dev"
#   validation {
#     condition     = can(regex("^(dev|stage|prod)$", var.environment_regex))
#     error_message = "Environment must be dev, stage, or prod"
#   }
# }


# variable "tag_team" {
#   type = string
#   default     = "team-abcd"
#   validation {
#     condition     = can(regex("^team-[a-z]{2,5}$", var.tag_team))
#     error_message = "Tag must follow format team-xyz (2–5 lowercase letters)"
#   }
# }

# variable "ip_address" {
#   type = string
#   default = "10.10.1.112"
#   validation {
#     condition     = can(regex("^\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}$", var.ip_address))
#     error_message = "Must be a valid IPv4 address (e.g., 192.168.1.1)"
#   }
# }

# variable "deployment_date" {
#   type = string
#   default = "2025-10-22"
#   validation {
#     condition     = can(regex("^\\d{4}-\\d{2}-\\d{2}$", var.deployment_date))
#     error_message = "Date must be in YYYY-MM-DD format"
#   }
# }