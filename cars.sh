#! /bin/bash
# cars.sh
# Connor Caruthers

num="0"

while [[ "$num" -lt "3" ]]
do
	echo -n "Type 1 to enter a new car, 2 to list the cars, or 3 to quit: "
	read -r num
	case "$num" in
		"1" )
			echo -n "Enter the car's year: "; read -r year
			echo -n "Enter the car's make: "; read -r make
			echo -n "Enter the car's model: "; read -r model
			string="$year:$make:$model"
			echo "$string" >> My_old_cars;;
		"2" )
			sort My_old_cars;;
		"3" )
			echo "Goodbye!";;
	esac 
done
