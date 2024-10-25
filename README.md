# Cisco-Secure-Client

These scripts are designed to install the Cisco Secure Client on a Mac. This is optimized for the Umbrella Module but can be used as a base for other modules in the CSC product. This install process uses three scripts to create the OrgInfo JSON and the choices file for the installer, while converting the unmodified DMG from Cisco to read/write and then moving the files into it, and converting it back to read only prior to installing. 

The scripts are commented and should provide insight into how it works.

These scripts are designed for use with Jamf Pro but can work with other MDM's with some modification.

Cisco is known to change the choices in the installer so you must verify the choices file if the install fails.

## Tips on how to deploy with Jamf Pro

- Modify the Org info and Choices script with the appropriate info and install choices. 
- Upload the scripts to Jamf and create three policies for the scripts.
  - In the ```Cisco-Secure-Client-Installer.sh``` script, Line 111 & 112 include Jamf Policy triggers that are set. You will have to either use the triggers already set of ```CiscoChoices``` and ```CiscoJSON``` for their respective policies or choose your own.
- The policies for the Choices and Org Info files should be set to only be triggered by their manual trigger and scoped to all computers and all users.
- Ensure your dmg file names are correct when mounted and unmounted. 
