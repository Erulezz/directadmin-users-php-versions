#!/bin/bash

for phpconfig in `ls -1 /usr/local/directadmin/data/users/*/nginx_php.conf`;
do

	dirname=`dirname ${phpconfig}`;

	main=`head -3 $dirname/nginx_php.conf | tail -1`;
	main_version=`head -13 $dirname/nginx_php.conf | tail -1`;
	second=`head -17 $dirname/nginx_php.conf | tail -1`;
	second_version=`head -27 $dirname/nginx_php.conf | tail -1`;

	echo "PHP1 socket:";
	echo "$main_version" | xargs;
	echo "PHP2 socket:";
	echo "$second_version" | xargs;

	echo "--------------------------";

done;

exit 0;
