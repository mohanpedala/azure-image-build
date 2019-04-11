## Azure create linux VM image using packer

* Pre-req:
  - Azure CLI
  - Packer

### Set Environment Variables
1. Gather `subscription_id`, `client_id`, `client_secret`, `tenant_id` using the below commands.
  ```bash
  $ az account show --query "{ subscription_id: id }"
  $ az ad sp create-for-rbac --query "{ client_id: appId, client_secret: password, tenant_id: tenant }"
  ```
2. Set the Environment Variables in your bash/zsh profile as shown below
  ```bash
  export CLIENT_ID=**********
  export CLIENT_SECRET=**********
  export TENANT_ID=**********
  export SUBSCRIPTION_ID=**********
  ```
  Note: Replace the `*` with the values in step 1.

3. Run the below command to build the image
  ```bash
  $ packer build ubuntu-hardening.json
  ```
