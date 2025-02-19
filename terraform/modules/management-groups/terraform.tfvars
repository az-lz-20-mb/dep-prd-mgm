root_id   = "44a926b2-f8ee-464b-b28a-5e6124f2bb56"
root_name = "Tenant Root Group"
mg_prefix = "mg"
default_location = "germanywestcentral"
deploy_core_landing_zones = false

landing_zones = {
  "lz20" = {
    parent          = "root"
    archetype_id    = "mg-lz20"
    subscription_ids = [] 
    access_control = {}
    parameters      = {}
  }

  "mprod-security" = {
    parent          = "lz20"  
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  "mprod" = {
    parent          = "lz20"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  "qua" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  "prd" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  "mprod-decomissioned" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

  "mprod-shared" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
  }

   # New groups under mg-mprod-shared
  "Identity" = {
    parent          = "mprod-shared"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
    display_name   = "Identity"
  }

  "Connectivity" = {
    parent          = "mprod-shared"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
    display_name   = "Connectivity"
  }

  "Management" = {
    parent          = "mprod-shared"
    archetype_id    = "mprod-security"
    subscription_ids = []
    access_control = {}
    parameters      = {}
    display_name   = "Management"
  }
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
  "prd" = {
    parent          = "mprod"
    archetype_id    = "mprod-security"
    subscription_ids = []
  }
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

