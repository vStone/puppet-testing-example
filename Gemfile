source :rubygems
gem 'rake'
gem 'puppet-lint'
gem 'rspec'
gem 'rspec-puppet'

puppetversion = ENV.key?('PUPPET_VERSION') ? "~> #{ENV['PUPPET_VERSION']}" : ['>= 2.7']
gem 'puppet', puppetversion
gem 'puppetlabs_spec_helper'
