#CREAR CONTROL
##cd /root/ipk/ && rm control.tar.gz data.tar.gz && cd /root/ipk/control && tar -czf control.tar.gz * && mv control.tar.gz /root/ipk/ && cd /root/ipk/data && tar -czf data.tar.gz * && mv data.tar.gz /root/ipk/  && cd .. && ar r picons.ipk control.tar.gz data.tar.gz  debian-binary 
######CARPETA DATA
#tar -czf data.tar.gz *
#EMPAQUETAR
#ar r picons.ipk control.tar.gz data.tar.gz  debian-binary 

#!/bin/sh
echo "iniciando Control  ..."
echo "la version actual es ..."
fecha=`date +%d-%b`
grep "version" /root/ipk/control/control -i 

echo "Introduce tu version : "
read v3r

sed -i 2d /root/ipk/control/control



echo "iniciando Astra  ..."

cd /root/ipk/ 

echo "eliminando  ..."

rm control.tar.gz data.tar.gz

echo "Empaquetando Control  ..."

cd /root/ipk/control 
tar -czf control.tar.gz * 

echo "Moviendo Control"

mv control.tar.gz /root/ipk/ 

echo "Empaquetando Data  ..."

cd /root/ipk/data 
tar -czf data.tar.gz * 

echo "Moviendo Data"

mv data.tar.gz /root/ipk/  

echo "Empaquetando ipk"

cd .. 
ar r picons.ipk control.tar.gz data.tar.gz  debian-binary 

echo "Copiando a www"

cp /root/ipk/picons.ipk  /var/www/
cp /root/ipk/control/control /var/www/
