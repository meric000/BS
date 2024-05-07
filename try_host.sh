#!/bin/bash 
# <Description of this shell script>
# <Your name> 
# <Date>

# ------------------------------------------------------------
# This function shows the help text for this bash script
usage() { 
echo "
$0 [OPTIONS] [<hostname>|<IP-Adresse>]
Ask the user for her or his name and display a greeting 
OPTIONS: 
   -h: Display this help
   -s <sec>: intervall for ping
"
}

# This function asks the user for his name
doPing(){
ping -c 1 $1 > /dev/null;
if [ $? -eq 0 ]; then
    echo "Ping war erfolgreich"
else 
    echo "Ping Fehlgeschlagen"

fi 
}
# ---------------------- main --------------------------------
# check parameters 
if [ $# -gt 5 ]; then
    usage
    exit 1
fi

intervall=10


if [[ "$1" == "-s" ]]; then
   intervall=$2
    shift 2
fi


while getopts ":hs:" option; do
    case $option in
        "-h")
            usage
            exit 0
            ;;
        *)
        echo "Falscher Input"
	    exit
        ;;
       
    esac
done

shift 2



while true; do
    doPing "$1"
    sleep "$intervall"
done
exit 0
# ---------------------- end --------------------------------- # 