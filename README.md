## Azure create linux VM image using packer

### Set Environment Variables
* Set the Environment Variables in your bash/zsh profile as shown below
  ```bash
  export CLIENT_ID=**********
  export CLIENT_SECRET=**********
  export TENANT_ID=**********
  export SUBSCRIPTION_ID=**********
  ```
  Note replace the `*` with your appropritate values.

* Run the below command to build the image
  ```bash
  $ packer build ubuntu-hardening.json
  ```
