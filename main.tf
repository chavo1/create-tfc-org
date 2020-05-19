resource tfe_organization myorg {
  name  = var.organization
  email = "mike@example.com"
}

resource tfe_oauth_client myorg {
  organization     = tfe_organization.myorg.name
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.github_token
  service_provider = "github"
} 
