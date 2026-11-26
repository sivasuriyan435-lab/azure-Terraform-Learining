rg_name           = "rg_test"
location          = "East US"
vnet_name         = "terra-vnet"
address_space     = ["10.0.0.0/16"]

web_subnet_name   = "public_subnet"
web_subnet_prefix = ["10.0.1.0/24"]

app_subnet_name   = "private_subnet"
app_subnet_prefix = ["10.0.2.0/24"]

db_subnet_name    = "database_subnet"
db_subnet_prefix  = ["10.0.3.0/24"]
