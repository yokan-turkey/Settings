sudo apt-get update
sudo apt install -y vim git curl

# rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

# ruby
sudo apt-get install -y libssl-dev libreadline-dev zlib1g-dev
sudo apt-get install -y g++ make
RUBY_CONFIGURE_OPTS=--disable-install-doc rbenv install rbenv install 2.5.1
rbenv rehash
rbenv global 2.5.1

# rails
gem install rails
