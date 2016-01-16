#/bin/bash!

sudo parted -s /dev/sdc rm 1
sudo parted -s /dev/sdc mkpart primary fat32 8192 31115263

