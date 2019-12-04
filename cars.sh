#!/bin/bash
#cars.sh
# William Curtiss 

while ["$userinput" -ne 3]

do
	echo "Type the number 1 to enter a new car, type the number 2 to display the list of cars, and type the number 3 to quit and exit the program."

	read -r userinput

	case "$userinput" in
		1)echo "Type the year of the car "
		read -r year
		echo "Type the make of the car "
		read -r make
		echo "Type the model "
		read -r model
		echo "$year:$make:$model" >> ~/bin/cars/My_old_cars;;
		2)sort My_old_cars | awk '{ print }';;
		3);;
		*)echo "What is that type again"
	esac
done
echo "Thats it"

