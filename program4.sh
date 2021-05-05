clear

echo "Nhap so n:"
read n

ketqua=1

for((i=2;i<=$n;i++))
	do
		ketqua=`expr $ketqua + $i`
	done

echo "Tong tu 1 den $n la: $ketqua"