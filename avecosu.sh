current=`pwd`
for dir in `find . -name .git -type d` ;do
	cd $dir/../
	echo "now in " `pwd`
	git pull
	cd $current
done
for dir in `find . -name .svn -type d` ; do
	cd $dir/../
	echo "now in " `pwd`
	svn update
	cd $current
done
for dir in `find . -name .hg -type d`;  do
	cd $dir/../
	echo "now in " `pwd`
	hg pull -u
	cd $current
done
