chon=1
while test $chon -eq 1
	do
	clear
	echo "Nhap so cho bang cuu chuong: "
	read num
	echo "-----Bang cuu chuong $num-----"
	for((i=1;i<=10;i++))
		do
			echo "$i x $num = `expr $i \* $num`"
		done
	echo "Nhan phim 1 de tiep tuc. Phim bat ki de ket thuc "
	read chon
done