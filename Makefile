
clear:
	rm -r _site
	rm -r .sass-cache

install-deb:
	sudo apt-get update && sudo apt-get install ruby-full build-essential zlib1g-dev rsync && \
	echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc && \
	echo 'export GEM_HOME="$$HOME/gems"' >> ~/.bashrc && \
	echo 'export PATH="$$HOME/gems/bin:$$PATH"' >> ~/.bashrc && \
	ruby -v
	gem -v
	sudo gem install jekyll -v 4.2.2 bundler redcarpet
	bundle install 

build:
	bundle exec jekyll build

serve:
	bundle exec jekyll serve --trace
