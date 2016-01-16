#/bin/bash!
sudo mount /dev/sdc1 /USB
sudo sed -i 's/\#hdmi_force_hotplug=1/hdmi_force_hotplug=1/g' /USB/config.txt
sudo sed -i 's/\#hdmi_drive=2/hdmi_drive=2/g' /USB/config.txt
sudo sed -i 's/\#hdmi_group=1/hdmi_group=1/g' /USB/config.txt
sudo sed -i 's/\#hdmi_mode=1/hdmi_mode=1/g' /USB/config.txt
sudo umount /USB
