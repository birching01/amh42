#!/bin/bash
PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

clear;

CopyrightLogo='
                                      AMH ++
                                    2014-2016
                https://github.com/birching01/amh42 All Rights Reserved
===================================================================================';
echo "$CopyrightLogo";



function ConfirmInstall()
{
    echo -e "[Notice] Confirm Install AMH? please select: (1~4)"
    select selected in 'Install AMH' 'Install AMH ++ （CN）' 'Install AMH ++ (USA)' 'Exit'; do break; done;
    [ "$selected" == 'Exit' ] && echo 'Exit Install.' && exit;
    if [ "$selected" == 'Install AMH' ]; then
   wget http://amh.sh/file/AMH/4.2/amh.sh && chmod 775 amh.sh && ./amh.sh 2>&1 | tee amh.log;
    elif [ "$selected" == 'Install AMH ++ （CN）' ]; then
	wget https://raw.githubusercontent.com/birching01/amh42/master/amhcn.sh && chmod 775 amhcn.sh && ./amhcn.sh 2>&1 | tee amhcn.log;
    elif [ "$selected" == 'Install AMH ++ (USA)' ]; then
	wget https://raw.githubusercontent.com/birching01/amh42/master/amhusa.sh && chmod 775 amhusa.sh && ./amhusa.sh 2>&1 | tee amhusa.log;
	else
		return;
	fi;   
	echo "[OK] You Selected: ${selected}";
}
ConfirmInstall;
