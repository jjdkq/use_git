1. 可以使用git clone https://github.com/jjdkq/tq2440.git将github仓库中的内容克隆到本地文件夹(clone之后的URL可以在github仓库的"Clone or download"中找到；
2. git无法添加空文件夹；
3. 如果出现类似于下面这种错误：
error: The following untracked working tree files would be overwritten by merge:
	d/a/text.txt
	d/text.txt
解决办法是：删除当前文件夹下的d/a/text.txt和d/text.txt(有时候可能要删除.git文件夹)，然后再执行./tst.sh
4. 如果要在添加一个文件到仓库的某一个文件夹下，可以使用下面的模板：
#!/bin/bash

#在d文件夹下添加text.txt文件

rm -r .git
git init						#创建一个版本库(会生成.git文件夹)

git add d/text.txt					#添加d/text.txt
git commit -m "first commit"	#将改动提交到版本库
#添加远程库(origin之后的内容是github中项目库的URL<可以在项目库页面的"Clone or download"中找到)
git remote add origin https://github.com/jjdkq/use_git.git

#下面两句用于设置要克隆的github仓库的具体文件
git config core.sparsecheckout true
echo "d" >> .git/info/sparse-checkout		#克隆d文件夹
#将github仓库中的d文件夹克隆到当前文件夹下(如果没有前面两句的话则是克隆github仓库的所有文件到当前文件夹下)
git pull origin master

#将文件上传到github
git push -u origin master

如果出现类似于第3条所示的错误，则按照第3条所列的解决办法执行即可。
