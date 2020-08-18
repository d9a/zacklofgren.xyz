generate:
	mkdir -p blog
	find pages -type f -name '*.cfg' -print0 | sort -zr | xargs -0 saait -o blog

view:
	$(BROWSER) blog/index.html

sync:
	rsync -av blog/ d9a@www.zacklofgren.xyz:/var/www/blog.zacklofgren.xyz/
	rsync -av root/ d9a@www.zacklofgren.xyz:/var/www/www.zacklofgren.xyz/
