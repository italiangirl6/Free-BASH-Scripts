#!\bin\bash
read -p "Enter File path: " targetVar                            
shredMessage=`echo "Shredding - $targetVar" `                          echo $shredMessage
shred -v -n 1 -z -u $targetVar
echo ""
echo "File Securly Deleted."
echo ""
echo -n "Wipe History (y/n)? "
read answer
if echo "$answer" | grep -iq "^y" ;then ln -sf /dev/null ~/.bash_history
    echo History Cleared.
else
    echo No
fi
