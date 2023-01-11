build: ## Generate the website from the markdown.
	hugo > /dev/null 2>&1
clean:
	rm -r ./dist/*
post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	hugo new posts/$(POST_NAME).md ; sed -i 's/title:.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
help: ## Show help
	@grep -E '^[a-zA-Z0-9 -]+:.*#'  Makefile | sort | while read -r l; do printf "\033[1;32m$$(echo $$l | cut -f 1 -d':')\033[00m:$$(echo $$l | cut -f 2- -d'#')\n"; done
hello: ## hello my friend
	echo "Hello :)"
package: ##package create a file named "awesome-website.zip" containing the binary "awesome-api" and the directory "dist/".
	zip -r awesome-website.zip ./dist awesome-api
lint: ##updated to lint the file
	markdownlint --fix DEPLOY.md