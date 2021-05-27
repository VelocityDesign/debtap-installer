# Get current directory
return_to_dir=$(pwd)
# Move to the user's HOME directory
cd ~

# Alert the user of the actions taken
echo "What this script will do:"
echo "   - Download the Debtab script via HTTPS from the official Github Repository's master branch"
echo "   - Ask for sudo permissions to access /usr/bin"
echo "   - Move the downloaded file to /usr/bin"
echo "   - Refresh the PATH using 'hash -r'"

# Check to see if sudo permissions are needed
if [$USER != "root"]
then
  echo "Please enter your pasword to grant sudo permissions"
  # Get sudo permissions
  sudo cd ~
  # Move into the /usr/bin
  sudo cd /usr/bin/
  # Download the DEBTAP file into /usr/bin
  sudo curl -O https://raw.githubusercontent.com/helixarch/debtap/master/debtap
else
  # Go to /usr/bin
  cd /usr/bin/
  # Download the file
  curl -O https://raw.githubusercontent.com/helixarch/debtap/master/debtap
fi
# Alert the user that installation succeeded 
echo "Debtap Installed!"

# Return to previous working directory
cd $return_to_dir
