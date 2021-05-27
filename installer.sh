return_to_dir=$(pwd)
cd ~
if [$USER != "root"] then
echo "Please enter your pasword to grant sudo permissions"
sudo cd ~
sudo cd /usr/bin/
curl -O https://raw.githubusercontent.com/helixarch/debtap/master/debtap
fi
