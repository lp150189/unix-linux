#!/bin/bash

# until-count: display a series of number

until [ $count -gt 5 ]; do
	echo $count
	count=$((count+1))
done
echo "Finished"
