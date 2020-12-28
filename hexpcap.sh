#!/bin/bash --posix

for (( k=0; k<= 1000; k++ ))
do
A=$[ $RANDOM % 9]

B=$[ $RANDOM % 9]
C=$[ $RANDOM % 9]

D=$[ $RANDOM % 9]
E=$[ $RANDOM % 9]
F=$[ $RANDOM % 9]

G=$[ $RANDOM % 9]

H=$[ $RANDOM % 9]
I=$[ $RANDOM % 9]
J=$[ $RANDOM % 9]
K=$[ $RANDOM % 9]

L=$[ $RANDOM % 9]

randomz=$[ $RANDOM % 1000]
for (( z = 0 ;  z <= $randomz;  z++  ))
do
> binary.file



count=1
random_file_size=20
hex_value="00"
dec_value=0
seed=17
file_size=$(echo -n $(wc -c < /bin/csh))

# This could produce an error if inputted value is not a number!


for (( p = 0 ;  p <= 10;  p++  ))
do




rand=$[ $RANDOM % 300]


for ((  i = 0 ;  i <= rand ;  i++  ))
do
subscript=$[ $RANDOM % 32767 + 9999]
	hex_value=$(hexdump -n1 -s$subscript -v -e '1/1 "%02x"' /bin/csh)
	dec_value=$(hexdump -n1 -s$subscript -v -e '1/1 "%u"' /bin/csh)
	subscript=$[ ( $subscript + $dec_value + $seed ) ]
	if [ $subscript -ge $file_size ]; then subscript=$[ $RANDOM % 32767 + 9999]; fi
	echo -e -n '\x'"$hex_value" >> binary.file
done
if [ $p -eq 10 ] 
then
datenz=$(date '+%d%m%y')
hexdump -C binary.file
echo -e -n "$(hexdump -C binary.file)\n\n" >> malformed/$A$B$C$D$E$F$G$H$I$J$K$L".txt"

fi
subscript=$[ $RANDOM % 32767 + 9999]
done
done
text2pcap malformed/$A$B$C$D$E$F$G$H$I$J$K$L".txt" malformed/"$A$B$C$D$E$F$G$H$I$J$K$L"".pcap"
rm malformed/$A$B$C$D$E$F$G$H$I$J$K$L".txt"

done
