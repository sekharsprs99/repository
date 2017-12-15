#!/bin/bash
TOKEN=`cat token`
export OS_TOKEN=$TOKEN
export OS_URL="http://controller:35357/v3"
export OS_IDENTITY_API_VERSION=3
vars_prompt: 
       - name: password-prompt
         prompt: enter password
         private: no 
openstack user create --domain default \
  --{{password-prompt}} admin

