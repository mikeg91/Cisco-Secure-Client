#!/bin/bash
#
#########################
#
# Created by mikeg of MacAdmins Slack
#
# Script used to create Choices file for script
# If there is an item installed, change the digit in
# the following line of the item.
# disabled/don't install <integer>0</integer>
# enabled/will install <integer>1</integer>
# 
# Use the following command to export the choices file
# installer -pkg /Volumes/$TAB-UNTIL-FULL-PATH-TO-INSTALLER-POST-ATTACH-DMG.pkg -showChoiceChangesXML > ~/Desktop/$NAMEitSOMETHING.xml
#
# You need to delete the other options of dictionaries, enabled visible as selected seems to be the one that matters.
#
##### History #####
#
# v1.1 Oct 25 2024 - mikeg
# Options below were generated from cisco-secure-client-macos-5.1.6.103-predeploy-k9.dmg
#
# v1.0 Sept 11 2024 - mikeg
# Created script, added context, included command to create list
#
#########################
#
mkdir -p "/Library/Application Support/JAMF/Waiting Room/"
DATA='<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<array>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_anyconnect_vpn</string>
    </dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_fireamp</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_dart</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_secure_firewall_posture</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_iseposture</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_nvm</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>1</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_secure_umbrella</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_thousandeyes</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_duo</string>
	</dict>
	<dict>
		<key>attributeSetting</key>
		<integer>0</integer>
		<key>choiceAttribute</key>
		<string>selected</string>
		<key>choiceIdentifier</key>
		<string>choice_zta</string>
	</dict>
</array>
</plist>'
echo "$DATA" > "/Library/Application Support/JAMF/Waiting Room/CiscoChoices.xml"
