# ec2azmigration
EC2 AZ Migration


run shell script `migrateaz.sh` and provide required input and that will call yaml file.

else run below yaml directly. 

Note: remove all variable and put actual value if running direct ansible yaml


```AWS_PROFILE=myaccesskey ansible-playbook ec2azmigrate.yaml -i localhost, --extra-vars "tag1=$ename tag2=$aname tag3=$aoname tag4=$envname tag5=$bowner tag6=$iown tag7=$bunit tag8=$steam tag9=$bill tag10=$osname tag11=$dname tag12=$sapp tag13=$bcon tag14=$depa tag15=$ccenter ecid=$eid moffering=$oid ezone=$daz zsubnet=$dsub" -vvv```
