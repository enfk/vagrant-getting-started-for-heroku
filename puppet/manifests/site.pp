
node default {
  class { 'postgresql::server': }

  # https://forge.puppetlabs.com/jdowning/rbenv
  class { 'rbenv': }
  rbenv::plugin { 'sstephenson/ruby-build': }
  rbenv::build { '2.0.0-p353': global => true }
}

