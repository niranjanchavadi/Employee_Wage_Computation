  
#!/bin/bash -x
isPresent=1
empCheck=$((RANDOM%2))
if [ $empCheck -eq $isPresent ]
then
	echo Employee is present
else
	echo Employee is Absent
fi
