# Root management group details
root_id   = "44a926b2-f8ee-464b-b28a-5e6124f2bb56"
root_name = "Tenant Root Group"
mg_prefix = "mg"
default_location = "germanywestcentral"
deploy_core_landing_zones = false

# Landing zones configuration
landing_zones = {
  "lz20" = {
    parent          = "root"
    archetype_id    = "mg-lz20"
    subscription_ids = [] 
    access_control = {}
    parameters      = {}
  }

  # Management group for security
  "mprod-security" = {
    parent          = "lz20"  
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  # Management group for mprod
  "mprod" = {
    parent          = "lz20"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  # QUA environments & stages
  "qua" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  # PROD environments and stages
  "prd" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  # Decommissioned production group
  "mprod-decomissioned" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  # Shared production group - understood as CAF Platform equivalent
  "mprod-shared" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  # New groups under mg-mprod-shared, following CAF Platform model
  "identity" = {
    parent          = "mprod-shared"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
    display_name   = "Identity"
  }

  "connectivity" = {
    parent          = "mprod-shared"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
    display_name   = "Connectivity"
  }

  "management" = {
    parent          = "mprod-shared"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
    display_name   = "Management"
  }

  # QUA team-specific sub-groups
  "qua-avdtm" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-dra" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-sqldb" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-blktm" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-dtg" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-wintel" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-budgetteam" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-mdt" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-zrb" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-devops" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-net" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "qua-zua" = {
    parent          = "qua"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }

  # Production team-specific sub-groups
  "prd-avdtm" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-dra" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-net" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-blktm" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-dtg" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-sqldb" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-CAT" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-finops" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-wintel" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-devops" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-mdt" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-zrb" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
  "prd-zua" = {
    parent          = "prd"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
}
