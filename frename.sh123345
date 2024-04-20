#!/bin/bash 
# <Description of this shell script>
# <Your name> 
# <Date>

# ------------------------------------------------------------
# This function shows the help text for this bash script
usage() { 
echo "
$0 [OPTIONS] [<user name>]
Ask the user for her or his name and display a greeting 
OPTIONS: 
   -h: Display this help
"
}

# This function asks the user for his name
ask_for_attachment_String() {
    echo "Please enter a name for file:" 
    read attachment_name

    rename_file_in_dir
}
rename_file_in_dir(){
    for file in *; do
    # Überprüfe, ob es sich um eine Datei handelt
    if [ -f "$file" ]; then
        # Ausgabe des Dateinamens
       # newName = "$file$attachment_name"
        mv "$file" "$file$attachment_name"
        
    fi
done
}
# ---------------------- main --------------------------------
# check parameters 
if [ $# -gt 1 ]; then
    usage
    exit 1
fi

case $1 in
    "-h")
        usage
        exit 0
        ;;
    "")
        ask_for_attachment_String #echo enter attachment string 
        ;;
    *)
        attachment_name=$1
esac

exit 0

# ---------------------- end ---------------------------------
