
#!/bin/bash -eux
if [[ $UPDATE  =~ true || $UPDATE =~ 1 || $UPDATE =~ yes ]]; then
    echo "==> Applying updates"

    # NOTE: CUrrently a kernel upgrade breaks vm and vb tools installations
    # Forcibly clean yum
    # [ -d "/var/cache/yum" ] && rm -rf /var/cache/yum/*
    # Pull in all available updates
    # yum makecache
    # yum -y upgrade

    yum -y update

    # reboot
    echo "Rebooting the machine..."
    reboot
    sleep 60
fi