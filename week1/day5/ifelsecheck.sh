
#!/bin/bash
echo "checking system health..."

FREE_SPACE=$(df -h / | tail -1 | awk '{print $5}' | tr -d '%')

echo "your disk is $FREE_SPACE% fill"

if [ $FREE_SPACE -gt 80 ];then
    echo "WARNING - Disk is almost full!"
else
    echo "OK - Disk space is healthy"
fi
