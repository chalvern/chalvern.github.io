all:
	jekyll build
	rm -rf ../my-blog/*
	echo "jingwei.link" > ../my-blog/CNAME
	cp -r ./_site/* ../my-blog

