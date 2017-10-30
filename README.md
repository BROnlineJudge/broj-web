# BR Online Judge Web Client

* Rails 5.0.2
* Ruby 2.4.0

https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rvm-on-debian-8

$ gem install bundler
$ rvm use ruby-2.4.0@rails5.0 --create

```sh
$ bundle install
$ gem install execjs
$ sudo -u postgres createuser brojweb
$ sudo -u postgres psql
alter user brojweb with encrypted password '<password>';
alter user brojweb CREATEDB;

The password must be the same as in 'brojweb/config/database.yml'.

$ bundle exec rake db:migrate:reset
$ rails s
```
In a VM the command must be

$ rails s -b 0.0.0.0

The port 3000 must be forwarded to some port on host (e.g. 1234).

```sh
$ rspec
$ rake cucumber
```
