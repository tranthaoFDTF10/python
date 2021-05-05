clear 
function ucln(){
	
}
function input(){
	clear
	echo "Nhap vao so a:"
	read a
	echo "Nhap vao so b:"
	read b
	uc = $(ucln $a $b)
	if [ $a -eq 0 ];then
		if [ $b -eq 0 ];then
			echo "Phuong trinh vo so nghiem"
		else
			echo "Phuong trinh vo nghiem"
		fi
	fi
	
	if [ $a -ne 0 ];then
		if [ $b -ne 0 ];then
			echo "Phuong trinh: $a x + $b = 0"
			a =$($a/$uc)
			b =$($b/$uc)
			x=(-$b"/"$a)
			echo "=> co nghiem la $x"
		fi
	fi
}
input