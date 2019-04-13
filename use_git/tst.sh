#########################################################################
# File Name: tst.sh
# Author: zhoubo
# mail: 1508540876@qq.com
# Created Time: 2019年04月13日 星期六 13时59分32秒
#########################################################################
#!/bin/bash

git init						#创建一个版本库(会生成.git文件夹)
git rm -rf --cached driver/IO*	#删除github仓库中的driver/IO*文件夹,注意:--cached不能省略
git rm --cached text.txt		#删除github仓库中的text.txt文件,注意:--cached不能省略

#touch text.txt
#echo tq2440-driver >> text.txt
#git add text.txt				#将text.txt添加到github仓库

git commit -m "first commit"	#将改动提交到版本库
#添加远程库(origin之后的内容是github中项目库的URL<可以在项目库页面的"Clone or download"中找到)
git remote add origin https://github.com/jjdkq/tq2440-driver.git
#将origin主机的master主机与当前分之合并
git pull origin master
#将文件上传到github
git push -u origin master

