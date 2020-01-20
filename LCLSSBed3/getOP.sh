
#!/bin/shell

#### getops optstring variable

while getopts ae:f:hd:s:qx: option
do
        case "${option}"
        in
                
		a) echo "found  a option"
		echo done ;;

                e) ADMIN=${OPTARG};;
                d) DOMAIN=${OPTARG};;
                f) SERVERFILE=$OPTARG;;
                s) WHOIS_SERVER=$OPTARG;;
                q) QUIET="TRUE";;
                x) WARNDAYS=$OPTARG;;
                \?) usage
                    exit 1;;
        esac
done
