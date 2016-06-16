## @licence MIT <http://opensource.org/licenses/MIT>                                                                                                              
## @author Copyright (C) 2016`                                                                                                                                    
                                                                                                                                                                  
usage ()                                                                                                                                                          
{                                                                                                                                                                 
        echo "                                                                                                                                                    
#                                                                                                                                                                 
#  Usage: use $0 to remove an OpenVPN client config for a single user passed as the first parameter                                                               
#                                                                                                                                                                 
#       * this script requires a minimum of one (1) existing OpenVPN user as it's single parameter                                                                
#                                                                                                                                                                 
#       * this script finds the the user cert files but does not delete them                                                                                      
#       * - you must add the word "delete" as the 2nd parameter to remove these files                                                                             
#                                                                                                                                                                 
"                                                                                                                                                                 
}                                                                                                                                                                 
                                                                                                                                                                  
if [ "$#" == "0" ]
        then usage
        exit 1
else
        echo "Searching the pki directory for:  $1" 
        RESULTS=`find ./ -name "*${1}*"`

        echo "#### " 
        echo "$RESULTS"
        echo "#### " 

        echo "*** Deleting these user files ***"         
        rm -i $RESULTS                                    
fi                                 

