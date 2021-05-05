clear
echo "Nhap so thu muc can tao: "
read n
for((i=1;i<=n;i++))
do
	mkdir "user_$i"
	if test $? -eq 0
	then
		echo "Da tao thu muc: user_$i"
	else
		echo "Khong the tao thu muc: user_$i"
	fi
done