#!/bin/bash
#
#########################
#
# Created by mikeg of MacAdmins Slack
#
# Simple script to create the org info file that 
# is used to license Cisco Secure client. You can put your info
# in the script an it will place it where it's needed for the main 
# script.
#
##### History #####
#
# v1.0 Sept 11 2024 - mikeg
# Created script, added context, included command to create list
#
#########################
#
# Replace the X's with your organizations info
#
DATA='{
    "organizationId" : "XXXXX",
    "fingerprint" : "XXXXXX",
    "userId" : "XXXXXX"
}
'
echo "$DATA" > "/Library/Application Support/JAMF/Waiting Room/OrgInfo.json"
