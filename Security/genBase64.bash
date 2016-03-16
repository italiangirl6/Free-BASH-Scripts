#!\bin\bash

echo "1)Encode Base64"
echo "2)Decode Base64"
read numberInput
if [ "$numberInput" = "1" ]; then
   read -p "Enter variable to Encode: " targetVar
	    encodedTest=`echo "$targetVar" | base64`
   echo $encodedTest
else
    if [ "$numberInput" = "2" ]; then
    read -p "Enter Value to Decode: " targetVar
	    encodedTest=`echo "$targetVar" | base64 -d`
	echo $encodedTest
    else
        echo "You did not enter a proper number exiting script. . ."
    fi
fi
