echo "Enter file name:"
read filename
echo "File permissions for $filename"
ls -l "$filename"
echo "Do you want to change the permission ?(yes/no)"
read decision
if [ $decision = "yes" ] ; then
echo "Enter user permission ( r or w or x or -):"
read user
echo "Enter group permission ( r or w or x or -):"
read group
echo "Enter other permission ( r or w or x or -):"
read other

chmod_value="u=$user,g=$group,o=$other"

chmod "$chmod_value" "$filename"

echo "Updated File permissions for $filename"
ls -l "$filename"



else
echo "File permissions for $filename not changed"

fi