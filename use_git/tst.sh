#########################################################################
# File Name: tst.sh
# Author: zhoubo
# mail: 1508540876@qq.com
# Created Time: 2019年04月13日 星期六 13时59分32秒
#########################################################################
#!/bin/bash

rm -r .git
git init						#创建一个版本库(会生成.git文件夹)
git rm -rf --cached driver/IO*	#删除github仓库中的driver/IO*文件夹,注意:--cached不能省略
git rm --cached text.txt		#删除github仓库中的text.txt文件,注意:--cached不能省略

#touch text.txt
#echo tq2440-driver >> text.txt
#git add text.txt				#将text.txt添加到github仓库
#git add b c            #将b、c两个文件夹添加到github仓库
#git add d/text.txt			#将d文件夹下的text.txt文件添加到github仓库

git commit -m "first commit"	#将改动提交到版本库
#添加远程库(origin之后的内容是github中项目库的URL<可以在项目库页面的"Clone or download"中找到)
git remote add origin https://github.com/jjdkq/tq2440.git

#下面两句用于设置要克隆的github仓库的具体文件
git config core.sparsecheckout true
echo "d" >> .git/info/sparse-checkout		#克隆d文件夹
#将github仓库中的d文件夹克隆到当前文件夹下(如果没有前面两句的话则是克隆github仓库的所有文件到当前文件夹下)
git pull origin master

#将文件上传到github
git push -u origin master
