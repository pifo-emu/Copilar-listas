for var in $(wget -q http://Tu_host/control -O - | grep Version | cut -f2 -d ' '  ) 
do
echo $var   
done

for var2 in $(opkg info enigma2-plugin-picon-lista-astra | grep Version | cut -f2  -d ' ' )
do
echo $var2 
done

if [ $var = $var2 ]; then

      echo "No Necesita actualizar"
     	wget -qO - "http://127.0.0.1/web/servicelistreload?mode=0" > /dev/null 2>&1
	    wget -qO - "http://127.0.0.1/web/servicelistreload?mode=1" > /dev/null 2>&1
     
 else 

    	echo "Necesita actualizar"
		  opkg install --force-reinstall --force-overwrite http://tu_host/picons.ipk
    	wget -qO - "http://127.0.0.1/web/servicelistreload?mode=0" > /dev/null 2>&1
	    wget -qO - "http://127.0.0.1/web/servicelistreload?mode=1" > /dev/null 2>&1
fi






echo "Ya hemos terminado"


exit 0
