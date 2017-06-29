mocoProcessList=`lsof -i :8091 | awk -F" " '{print $2}' |grep -v PID | tr '\n' ' '`

echo -n $mocoProcessList
if [ -n "$mocoProcessList"  ] ;then
 kill -9 $mocoProcessList
fi

echo " is killed."
