#!/bin/bash
echo "Installing gpg2, pass..." 
sudo apt install gnupg2 pass -y
echo "Creating gpg key..."
echo "See tutorial at https://medium.com/@chasinglogic/the-definitive-guide-to-password-store-c337a8f023a1"
# gpg2 --full-gen-key

echo "Setting up pass"
pass init ari.abramowitz1@gmail.com
pass git init
echo ">> Format your fingercheck login credentials as follows: 'person@email.com::password'"
pass insert fingercheck/dm-punch

