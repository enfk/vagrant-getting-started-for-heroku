# Vagrant Getting Started for Heroku
Simple Hello World Sinatra app on Vagrant ready for deploying to Heroku

## About
This is to vagrant up and deploy to Heroku in a few commands includes...
* Vagrantfile
* ubuntu 12.04 (precise)
* Puppet provision
* Apache
* PostgreSQL
* Ruby (rbenv)
* Sinatra (Hello World app)
* Heroku toolbelt

## How to Set Up and Deploy in 3 Steps
1. Install [VirtualBox](https://www.virtualbox.org/) and [Vagrant](http://www.vagrantup.com/)
2. Setup Vagrant and Start Hello World Web App

   ```bash
   # On host machine
   git clone https://github.com/enfk/vagrant-getting-started-for-heroku.git
   cd vagrant-getting-started-for-heroku
   vagrant up
   vagrant ssh
   # On guest machine
   cd /vagrant/
   bundle
   foreman start
   ```

   Open [http://localhost:5000/](http://localhost:5000/) on host machine to confirm it's working.
3. Deploy to Heroku as follows - [Getting Started with Ruby on Heroku](https://devcenter.heroku.com/articles/getting-started-with-ruby)

## References
http://garylarizza.com/blog/2013/02/01/repeatable-puppet-development-with-vagrant/
https://github.com/hashicorp/puppet-bootstrap

## Installed puppet modules
```
$ puppet module install puppetlabs/apache --target-dir /vagrant/puppet/modules/
$ puppet module install puppetlabs/postgresql --target-dir /vagrant/puppet/modules/
$ puppet module install jdowning/rbenv --target-dir /vagrant/puppet/modules/
```
