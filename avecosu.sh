#!/bin/sh

for dir in */; do
	cd ${dir}
	echo "Now work in ${dir}"
	if [ -d ".svn" ]; then
		svn update
	fi
	if [ -d ".git" ]; then
		git pull
	fi
	if [ -d ".hg" ]; then
		hg pull -u
	fi
	cd ../
	echo "Jobs in ${dir} is done"
done
