#!/usr/bin/bash
#supaya pembeli mudah memilih menu
echo "===WARUNG P4==="
echo "1. Cireng isi - Rp2500"
echo "2. Gehu pedas - RP3000"
echo "3. Es Teler - Rp10000"
echo "4. Es Campur - Rp5000"

#menentukan berapa item yang ingin dibeli
echo -n "Berapa item yang ingin dibeli?"
read jumlah_item

total_=0

#Loop untuk mengulangi proses input berdasarkan jumlah input
for ((i=1; i<=jumlah_item; i++))
do
	echo "item kr-$i;"
	echo -n "pilihan menu (1-4): "
	read menu
	echo -n "jumlah porsi: "
	read porsi

	#menghitung subtotal berdasarkan menu
	case $menu in
		1) subtotal=$((porsi * 2500));;
		2) subtotal=$((porsi * 3000));;
		3) subtotal=$((porsi * 10000));;
		4) subtotal=$((porsi * 5000));;
		*) echo "menu tidak valid!"; exit 1;;
	esac

	echo "subtotal: Rp$subtotal"
	total_belanja=$((total_belanja + subtotal))
done

#menampilkan total belanja dan kembalian
echo "total belanja: Rp$total_belanja"
echo -n "masukkan jumlah uang:"
read uang

kembalian=$((uang - total_belanja))

if [ $kembalian -ge 0 ]; then
	echo "kembalian: Rp$kembalian"
else
	echo "uang tidak cukup!"
fi
echo "Terima kasih telah berbelanja!"
