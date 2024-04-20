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
"
}

# This function asks the user for his name
ask_for_name() {
    echo "Please enter your name:" 
    read user_name
}
doPing(){
ping -c 1 $1
if [ $? -eq 0 ]; then
    echo "Ping war erfolgreich"
else 
    echo "Ping Fehlgeschlagen"

fi 
}
# ---------------------- main --------------------------------
# check parameters 
if [ $# -gt 1 ]; then
    usage
    exit 1
fi
intervall=10



while getopts ":hs:" option; do
    case $option in
        "-h")
            usage
            exit 0
            ;;
        "-s")
            intervall=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            exit 1
            ;;
    esac
done

while true; do
    doPing "$1"
    sleep "$intervall"
done
exit 0
# ---------------------- end --------------------------------- # 