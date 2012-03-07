# This is only show "Hello World" rack app

## setup

~~~
ruby setup
$ git clone git://github.com/sstephenson/rbenv.git .rbenv
$ echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
$ echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
$ exec $SHELL
$ source .bash_profile 

git clone 
bundle install 
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
$ passenger-install-apache2-module 

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
$ unicorn -I ./ -p 3000
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

