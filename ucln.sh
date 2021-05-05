clear 
function ucln(){
	a=$1
	b=$2
	while [ $a -ne $b ]
	do
		if [ $a -gt $b ];then
			a=$(($a-$b))	
		else
			b=$(($a-$b))
		fi
	done
	return a
}

	echo "Nhap vao so a:"
	read a
	echo "Nhap vao so b:"
	read b
	uc = $(ucln $a $b)
	echo "Uoc chung cua hai so la: $uc"