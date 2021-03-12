#!/bin/bash

# chkconfig: 2345 20 80

echo 'Select your network card Do not take ifcfg'

echo 'The list of network cards is as follows'

echo 'onsite demonstration：your network name：ens33'

ls /etc/sysconfig/network-scripts

read -p "your network name:" ifc

case $1 in

        'help'|'HELP')

        echo "start     ----->>>>>> up is network.service"

        echo "stop      ----->>>>>> down is network.service"

        echo "restart   ----->>>>>> first down network.service secondly up network.service"

        echo "reload    ----->>>>>> Reload the network card data"

        ;;

        'stop'|'STOP')

         nmcli c down $ifc

         ;;

        'start'|'START')

        nmcli c up $ifc

        ;;

        'restart'|'RESTART')

        nmcli c down $ifc

        nmcli c up $ifc

        ;;

        'reload'|'RELOAD')

        nmcli c reload $ifc

        ;;

        *)

        echo 'Usage:service network stop|restart|start|reload'

esac
