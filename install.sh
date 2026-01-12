ARCH=$(uname -m)
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root"
   exit 1
fi
if [[ "$ARCH" == x86_64* ]]; then
wget https://github.com/ActuallySandPotNoodles/sandkey/releases/download/1.0.0/sandkey-x86-64 -O /usr/bin/sandkey
fi
if [[ "$ARCH" == aarch64* ]]; then
wget https://github.com/ActuallySandPotNoodles/sandkey/releases/download/1.0.0/sandkey-aarch64 -O /usr/bin/sandkey
fi
chmod 775 /usr/bin/sandkey
mkdir /usr/share/sandpotnoodles
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sandkey/refs/heads/main/SandKey.png -O /usr/share/sandpotnoodles/sandkey.png
wget https://raw.githubusercontent.com/ActuallySandPotNoodles/sandkey/refs/heads/main/sandkey.desktop -O /usr/share/applications/sandkey.desktop
