# tfe_postgreSQL_queries

This repository contains queries to gather specific information from a PostgreSQL environment that is used by Terraform Enterprise. 

Each file contains a description what kind of information is showed when executing the query. These are just examples to get you started quickly but by no means complete. 


## Connect to PostgreSQL

- Login to the PostgreSQL database
```
sudo docker exec -ti terraform-enterprise /bin/bash
psql postgres://$TFE_DATABASE_USER:$TFE_DATABASE_PASSWORD@$TFE_DATABASE_HOST/$TFE_DATABASE_NAME?$TFE_DATABASE_PARAMETERS
```
# correct search path
```
set search_path to terraform_enterprise,rails,registry,vault,task_worker;
```

### If mounted disk configuration
```
psql -U $TFE_DATABASE_USER
or
psql -U hashicorp
```