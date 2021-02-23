#!/bin/bash

RED="\033[1;31m"
GREEN="\033[1;32m"
NOCOLOR="\033[0m"
BLUE="\033[0;34m"
Yellow='\033[0;33m'
Cyan='\033[0;36m'

echo -e "${BLUE}**************AWS*****************${NOCOLOR}"
echo ""

echo -e "${GREEN}AWS EC2 AZ Migration Script${NOCOLOR}"

echo ""

echo -e "${RED}Please Read Instruction and Run script${NOCOLOR}"
echo -e "${BLUE}*************************************************${NOCOLOR}"
echo ""
echo "Makesure EC2 is in Stopped state"
echo ""
echo "Security groups will be copied automatically from source EC2"
echo ""
echo ""
echo -e "${BLUE}*************************************************${NOCOLOR}"

echo ""
read -p 'EC2 Instance ID: ' eid
read -p 'EC2 Offering: ' oid
read -p 'Destination AZ: ' daz
read -p 'Subnet ID: ' dsub
read -p 'Tag - Name: ' ename
read -p 'Tag - Tag1: ' aname
read -p 'Tag - Tag2: ' aoname
read -p 'Tag - Tag3: ' envname
read -p 'Tag - Tag4: ' bowner
read -p 'Tag - Tag5: ' iown
read -p 'Tag - Tag6: ' bunit
read -p 'Tag - Tag7: ' steam
read -p 'Tag - Tag8: ' bill
read -p 'Tag - Tag9: ' osname
read -p 'Tag - Tag10: ' dname
read -p 'Tag - Tag11: ' sapp
read -p 'Tag - "Tag 12": ' bcon
read -p 'Tag - Tag13: ' depa
read -p 'Tag - Tag14: ' ccenter

echo ""

echo -en "${Yellow}Do you want to deploy EC2 in ($daz) AZ? (yes/no):${NOCOLOR}"
read choice

if [ "$choice" ==  "yes" ] ; then
        AWS_PROFILE=myaccesskey ansible-playbook ec2azmigration.yaml -i localhost, --extra-vars "tag1=$ename tag2=$aname tag3=$aoname tag4=$envname tag5=$bowner tag6=$iown tag7=$bunit tag8=$steam tag9=$bill tag10=$osname tag11=$dname tag12=$sapp tag13=$bcon tag14=$depa tag15=$ccenter ecid=$eid moffering=$oid ezone=$daz zsubnet=$dsub" -vvv
else
        echo ""
        echo -e "${Cyan}Selected No. Bye!!!!!!${NOCOLOR}"
fi
