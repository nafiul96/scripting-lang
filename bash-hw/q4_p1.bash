cd $1
echo -n "Current shell is: "
$SHELL
echo -n "Current directory is : "
pwd
echo "Home directory is : $HOME"
echo ""
echo "— 5 most recently modified non-empty subdirectories—"
ls -lt | grep -size 0 | head -5
echo ""
echo "— Files in last 45 minutes"
find -maxdepth 1 -type f -mmin +0 -mmin -45

echo ""
for i in {1..70}; do echo -n "="; done
echo ""