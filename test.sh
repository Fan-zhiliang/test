#! /bin/bash
#随机密码
#x=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
#for i in {1..8}
#do
#num=$[RANDOM%62]
#tmp=${x:num:1}
#pass=${pass}$tmp
#done
#echo $pass

###############################################################################
###############################################################################
###############################################################################

#批量修改文件扩展名

#for i in `ls *.$1`
#do
#	mv $i ${i%.*}.$2
#done

###############################################################################

#创建默认密码用户

#read -p "请输入用户名:" user
#[ -z $user ] && exit
#read -p "请输入密码:"
#pass=${pass:-123456}

#useradd $user
#echo "$pass" | passwd --stdin $user  &>/dev/null
#echo "$user登陆密码为默认密码'123456'."




###############################################################################


#整数求和，不输入数字则默认求和到100

#while循环

#read -p "请输入一个正整数:" x
#x=${x:-100}
#i=1;SUM=0
#while [ $i -le $x ]
#do
#	let SUM+=i
#	let i++
#done
#echo "从1到$x的总和是:$SUM"



#for循环
#read -p "请输入一个正整数:" x
#x=${x:-100}
#SUM=0
#for i in `seq $x`
#do	
#	SUM=$[SUM+i]
#done
#echo "从1到$x的总和是:$SUM"


###############################################################################


#expect及SSH测试环境


#expect << EOF
#spawn ssh root@172.25.0.10
#expect "password" {send "redhat\n"}
#expect "#" {send "touch /xx.xx\n"}
#expect "#" {send "exit\n"}
#EOF










###############################################################################

#shell_1-4练习





#shell_1-4(4)

#read -p "请输入第一个数字:" num1
#read -p "请输入第二个数字:" num2
#read -p "请输入第三个数字:" num3
#if [ $num1 -gt $num2 ];then
#	tmp=$num1
#	num1=$num2
#	num2=$tmp
#fi

#if [ $num1 -gt $num3 ];then
#	tmp=$num1
#	num1=$num3
#	num3=$tmp
#fi

#if [ $num2 -gt $num3 ];then
#	tmp=$num2
#	num2=$num3
#	num3=$tmp
#fi
#echo "排序后数据为$num1,$num2,$num3"


###############################################################################

#shell_1-4(6)

#game=(石头 剪刀 布)
#num=$[RANDOM%3]
#computer=${game[$num]}
#echo "请根据下列提示选择你的出拳手势"
#echo "1.石头"
#echo "2.剪刀"
#echo "3.布"

#read -p "请选择1-3:" person

#case $person in
#1)
#	if [ $num -eq 0 ];then
#		echo "平局"
#	elif [ $num -eq 1 ];then
#		echo "你赢了"
#	else
#		echo "计算机赢"
#	fi;;
#2)
#	if [ $num -eq 0 ];then
#		echo "计算机赢"
#	elif [ $num -eq 1 ];then
#		echo "平局"
#	else
#		echo "你赢了"
#	fi;;
#3)
#	if [ $num -eq 0 ];then
#		echo "你赢了"
#	elif [ $num -eq 1 ];then
#		echo "计算机赢"
#	else
#		echo "平局"
#	fi;; 

#*)
#	echo "必须输入1-3的数字"
#esac


###############################################################################





#shell_1-4(7)




#for i in {1..254}
#do
#	ping -c3 -i0.1 -W1 192.168.4.$i &> /dev/null
#	if [ $? -eq 0 ];then
#		echo "Host 192.168.4.$i is up"
#
#	else
#		echo "Host 192.168.4.$i is down"
#	fi
#done


###############################################################################




#shell_1-4(8)


#for i in `seq 9`
#do
#	for j in `seq $i`
#	do
#		echo -ne "$i*$j=$[i*j]\t"
#	done
#	echo
#done

#九九乘法表


###############################################################################



#shell_1-4(9)



#grep "genuineintel" /proc/cpuinfo &> /dev/null
#if [ $? -eq 0 ];then
#	echo "Intel cpu"
#else
#	echo "AMD cpu"
#fi






###############################################################################



#shell_1-4(10)

#while :
#do
#clear
#	ifconfig |grep "rx pack"
#	ifconfig |grep "tx pack"
#done





###############################################################################

#shell_1-4(11)


#for i in `cat user.txt`
#do
#	useradd $i
#	echo "123456" | passwd --stdin $i
#done




###############################################################################


#shell_1-4(12)


#for i in "ls *.$1"
#do
#	mv $i ${i%.*}.$2
#done




###############################################################################



#shell_1-4(13)


#expect <<EOF
#spawn ssh 192.168.4.254
#expect "password" {send "密码\r"}
#expect "#"	  {send "yum -y install httpd\r"}
#ecpect "#"	  {send "exit\r"}
#EOF



###############################################################################


#awk 找到使用bash作登录Shell的本地用户
#列出这些用户的shadow密码记录
#按每行“用户名 --> 密码记录”保存到getupwd.log

A=`awk -F: '/bash$/{print $1}' /etc/passwd`
for i in $A
do
	grep "$i" /etc/shadow | awk -F: '{print $1,$2}'
done
















