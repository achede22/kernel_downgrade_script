
#!/bin/bash

# HD 
#2018

#### LINUX KERNEL DOWNGRADE (IF APPLICABLE)
# - To list all the menu entries that will be displayed at system boot, issue the following command:

awk -F\' '$1=="menuentry " {print i++ " : " $2}' /etc/grub2.cfg
# 0 : Red Hat Enterprise Linux Server (3.10.0-327.18.2.el7.x86_64) 7.2 (Maipo)
# 1 : Red Hat Enterprise Linux Server (3.10.0-327.10.1.el7.x86_64) 7.2 (Maipo)
# 2 : Red Hat Enterprise Linux Server, with Linux 0-rescue- b2c5e6a1c5ea4cb5be82100bd7dc3469

#### To verify what is the current kernel running from /etc/default/grub )
 grub2-editenv list
  # saved_entry=1
  
 uname -r
  #3.10.0-327.10.1.el7.x86_64
  
  
 #Run the below command to set kernel which you want to keep as default.
  grub2-set-default 0

 reboot

# And add below line in /etc/yum.conf to avoid kernel upgrade in future.
echo "exclude=kernel*" >> /etc/yum.conf

