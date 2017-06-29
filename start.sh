mocoProcessList=`lsof -i :8091 | awk -F" " '{print $2}' |grep -v PID | tr '\n' ' '`


if [ -n "$mocoProcessList"  ] ;then
 kill -9 $mocoProcessList
fi

java -jar moco-runner-0.11.0-standalone.jar start -p 8091 -g combine.json >> moco.log 2>&1 &

echo " moco is start and running on port 8091."
