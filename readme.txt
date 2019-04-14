1. 可以使用git clone https://github.com/jjdkq/tq2440.git将github仓库中的内容克隆到本地文件夹(clone之后的URL可以在github仓库的"Clone or download"中找到；
2. git无法添加空文件夹；
3. 如果出现类似于下面这种错误：
error: The following untracked working tree files would be overwritten by merge:
	d/a/text.txt
	d/text.txt
解决办法是：删除当前文件夹下的d/a/text.txt和d/text.txt(有时候可能要删除.git文件夹)，然后再执行./tst.sh

