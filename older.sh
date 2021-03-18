!#/bin/bash
# save as older.sh
# returns oldest file with details
find /home/ubuntu/BUSA8090TUTES/week3/touchcommands/ -type f -printf '%T+ %p\n' | sort | head -n 1
