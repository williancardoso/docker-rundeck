#!/usr/bin/env bash

# variables set by plugin properties:
: ${RD_CONFIG_HOST:?"account plugin property not specified"}
: ${RD_CONFIG_USER:?"region plugin property not specified"}
: ${RD_CONFIG_PASSWORD:?"url plugin property not specified"}


echo '
{
  "madmartigan.local": {
    "tags": "local,server",
    "osFamily": "unix",
    "username": "greg",
    "osVersion": "10.10.3",
    "osArch": "x86_64",
    "description": "${RD_CONFIG_HOST} - ${RD_CONFIG_USER} - ${RD_CONFIG_PASSWORD} - Rundeck server node",
    "hostname": "madmartigan.local",
    "nodename": "madmartigan.local",
    "osName": "Mac OS X"
  },
  "test": {
    "tags": "alphabet, soup",
    "osFamily": "unix",
    "ssh-key-storage-path": "keys/testkey1.pem",
    "username": "vagrant",
    "osVersion": "10.10.3",
    "osArch": "x86_64",
    "description": "Rundeck server node",
    "hostname": "192.168.33.12",
    "nodename": "test",
    "osName": "Mac OS X"
  }
}
'

exit $?
