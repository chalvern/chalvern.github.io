# 从仓库提交内容获取得到注释
GitRawLog := $(shell git log -n1 --oneline)
GitComment := $(wordlist 2, 100, $(GitRawLog))

all:
	git push
	jekyll build
	rm -rf ../my-blog/*
	cp -r ./_site/* ../my-blog
	@echo $(GitComment)
	@echo "blog pushing ......."
	cd ../my-blog && git add .
	cd ../my-blog && git commit -m "$(GitComment)"
	cd ../my-blog && git push
