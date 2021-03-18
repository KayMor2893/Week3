# save as time-signal.sh
# gives a time signal based on test
time=$(date +%M)
count=20
count2=40
if test $time -lt $count; then
        echo -e "\a"
        sleep 0         # sleep for one second
elif test $time -gt $count && $time -lt $count2; then
        echo -e "\a"
        sleep 0
else
        echo -e "\a"
        sleep 1
        echo -e "\a"
fi
