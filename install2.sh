#! /bin/bash
#测试是否是root用户
test=$(env | grep "USER" | cut -d "=" -f 2)
if [ "$test" == "root" ]
       then
        echo "Current user is root."
       else
        echo "Current user is not root"
        exit
fi
#清空 输出logo
clear;
CopyrightLogo='
                                      AMH ++
                                    2014-2016
               https://github.com/birching01/amh42 All Rights Reserved
===================================================================================';
echo "$CopyrightLogo";
#地点
echo "Please select your VPS location: "
        read -p "Please choose cn/usa" -t 30 loc
        case $loc in
            "cn")
			     echo "you choose is cn"
				 wget  https://raw.githubusercontent.com/birching01/amh42/master/amhcn.sh && chmod 775 amhcn.sh && ./amhcn.sh 2>&1 | tee amhcn.log;
				 ;;
			"usa")
			     echo "you choose is usa"
				 wget  https://raw.githubusercontent.com/birching01/amh42/master/amhusa.sh && chmod 775 amhusa.sh && ./amhusa.sh 2>&1 | tee amhusa.log;
                 ;;
			*)
			     echo "you choose is error"
				 ;;
        esac