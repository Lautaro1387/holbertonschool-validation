build: ## Generate the website from the markdown.
	hugo > /dev/null 2>&1
clean: ## Cleanup the content of the directory dist/.
	rm -r ./dist/*
post: ## Create a new blog post whose filename and title come from the environment variables POST_TITLE and POST_NAME.
	hugo new posts/$(POST_NAME).md ; sed -i 's/title:.*/title: "$(POST_TITLE)"/' content/posts/$(POST_NAME).md
help: ## Show help
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
hello: ## hello my friend
	echo "Hello :)"
package: ## package create a file named "awesome-website.zip" containing the binary "awesome-api" and the directory "dist/".
	zip -r awesome-website.zip ./dist awesome-api
lint: ## updated to lint the file
	markdownlint --fix DEPLOY.md