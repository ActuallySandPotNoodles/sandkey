ARCH=$(uname -m)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
if [[ "$ARCH" == x86_64* ]]; then
wget https://github.com/ActuallySandPotNoodles/diginum/releases/download/Reease-1.0.0/diginum -O /usr/bin/sandkey
fi
if [[ "$ARCH" == aarch64* ]]; then
wget https://github.com/ActuallySandPotNoodles/diginum/releases/download/Reease-1.0.0/diginum_aarch64 -O /usr/bin/sandkey
fi
chmod 775 /usr/bin/sandkey
mkdir /usr/share/sandpotnoodles
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sandkey/refs/heads/main/sandkey.png -O /usr/share/sandpotnoodles/sandkey.png
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sandkey/refs/heads/main/sandkey.desktop -O /usr/share/applications/sandkey.desktop
