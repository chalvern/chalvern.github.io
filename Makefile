all:
	jekyll build
	rm -rf ../my-blog/*
	cp -r ./_site/* ../my-blog

