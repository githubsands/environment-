HEADPHONES='"dc-d3-a2-8c-6a-c8"'
USAGE="Usage: [-o disconnect device c/d -p turn bluetooth on/off]" 
while getopts "o:d:h" opt; do
    case ${opt} in
        o ) OPT=$OPTARG ;;
        d ) P=$OPTARG ;;
        h ) H="H" ;;
        \? ) echo $USAGE && exit 1;;
    esac
done

if [[ "$H" ]]; then
    clear
    echo ${USAGE}
    exit 0
fi

# check p flag
CHECK_BLUETOOTH() {
if [ -z "$P" ]; then
    return
fi 

if [ "$P" != "on" ] && [ "$P" != "off" ]; then
    ONOFFHELP='d allowed are on/off'
    echo ${ONOFFHELP}
    exit 1
fi

if [[ "$P" == "on" ]]; then
    blueutil -p 1
    echo "bluetooth turned on"
    exit 0
fi

if [[ "$P" == "off" ]]; then
    blueutil -p 0
    echo "bluetooth turned off"
    exit 0
fi
}

# check o flag
CHECK_DEVICE() {
if [ -z "$OPT" ]; then
    return
fi 

if [ "$OPT" != "c" ] && [ "$OPT" != "d" ] && [ "$OPT" != "n" ]; then
    CONNECTHELP='o options allowed are c and d'
    echo ${CONNECTHELP}
    exit 1
fi 

if [[ $OPT == "n" ]]; then
    bluetoothconnect ${HEADPHONES} --notify
    echo "bluetooth device notified"
    exit 0
fi

if [[ $OPT == "c" ]]; then 
   bluetoothconnector -${OPT} ${HEADPHONES}
   echo "device connected"
   exit 0
fi

if [ $OPT == "d" ]; then 
   bluetoothconnector -${OPT} ${HEADPHONES}
   echo "device disconnected"
   exit 0
fi


}

CHECK_BLUETOOTH
CHECK_DEVICE
