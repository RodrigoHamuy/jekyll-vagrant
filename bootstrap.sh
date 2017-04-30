#update packages
apt-get -y update

#add repository for ruby2
apt-get -y install python-software-properties
apt-add-repository -y ppa:brightbox/ruby-ng

#get 2.1 from newly added repository
apt-get -y update

#install ruby with build tools so we can use gems
apt-get -y install build-essential
apt-get -y install ruby2.1
apt-get -y install ruby2.1-dev

#install github pages requirements (jekyll)
sudo gem update --system
sudo gem install github-pages

# apt-get -y install nodejs
# apt-get -y install npm

# Install the latest version of Node
cd ~
curl -sL https://deb.nodesource.com/setup_6.x -o nodesource_setup.sh
bash nodesource_setup.sh
apt-get install nodejs
apt-get install build-essential

# Install Jekyll
gem install jekyll bundler pygments

# required to run browser-sync
npm install -g gulp
