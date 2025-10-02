1. Cofigure the resources with terraform
2. Create service connection
3. write pipeline by using terraform
4. role assigning
5. deployment with init,validate(IF needed), plan, apply.


## Service Connection Scripts
```bash
##Service connection name is display name.

az ad sp list --display-name "<service-connection-name>" --query "[].appId" -o tsv


#Assigning the role to save the .tfstate file in container and can be accessed while using selfhost agent.
#App ID is (clint or application_id) in service principle.
## Giving SP the rights to manage blobs in the storage account. 
##RBAC Role Based Access Control. that allows to manage the resources.
## scope ensures the permission applies only to the chosen Storage Account.

az role assignment create --assignee <APP_ID> --role "Storage Blob Data Contributor" --scope /subscriptions/<SUB_ID>/resourceGroups/<RG_NAME>/providers/Microsoft.Storage/storageAccounts/<STORAGE_ACCOUNT>


## at the end we have to run group list via cli to ensure the resouces are created.

az group list -o table