# This is only show "Hello World" rack app

## setup

~~~
root
# yum install git 
# yum install libyaml libyaml-devel
# yum install zlib-devel
# yum install openssl-devel
# yum install curl-devel

ruby setup
$ git clone git://github.com/sstephenson/rbenv.git .rbenv
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ exec $SHELL
$ mkdir src
$ cd src
$ wget ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p125.tar.gz
$ tar zxf ruby-1.9.3-p125.tar.gz 
$ cd ruby-1.9.3-p125
$ ./configure —prefix=$HOME/.rbenv/versions/1.9.3-p125
$ make 
$ make install
$ cd 
$ rbenv global 1.9.3-p125
$ source .bash_profile 

$ git clone git://github.com/SpringMT/hello_world_rack.git
$ cd hello_world_rack 
$ bundle install
$ bundle exec  passenger-install-apache2-module 
~~~

## rackup test

~~~
$ cd ~/hello_world_rack
$ rackup -I . -p 3000
access http://localhost:3000
~~~

## passenger
* passenger need apache 

~~~~

Edit httpd.conf
Mac /private/etc/apache2/httpd.conf
Linux /etc/http/conf/httpd.conf

add berow text at httpd.conf
Include $HOME/hello_world_rack/*.conf
Please rewrite $HOME properly based on your env.

and rewrite passenger.conf properly
~~~~

## unicorn

~~~
$ cd ~/hello_world_rack
bundle exec unicorn -I ./ -p 3000 -D -c unicorn.rb 
access http://localhost:3000
~~~

## nginx

~~~
brew install nginx or yum install nginx

Edit nginx.conf for properly
Mac /usr/local/etc/nginx/nginx.conf
Linux 

~~~


## performance test

~~~
ab -c 10 -n 100 [PATH] 
~~~

