#!/bin/bash
#This script creates a report of our disk configuration

FILENAME=`hostname`
echo "Disk report saved to $FILENAME.report"

echo -e "/n LVM Configuration: \n\n" >>$file.report
lvscan >>$FILENAME.report

echo -e "\n\n Partition Configuration: \n\n" >>$file.report
fdisk -l | head -17 >>$FILENAME.report

echo -e "\n\n Mounted Filesystems: \n\n" >>$file.report

df -hT | grep -v tmp >>$FILENAME.report

echo -e "\n\n RAID Configuration: \n\n" >>$FILENAME.report
mdadm --detail /dev/md0  >>$FILENAME.report

