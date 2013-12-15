source :rubygems
 2 
 3 if ENV.key?('PUPPET_VERSION')
 4   puppetversion = "= #{ENV['PUPPET_VERSION']}"
 5 else
 6   puppetversion = ['>= 2.7']
 7 end
 8 
 9 gem 'rake'
10 gem 'puppet-lint'
11 gem 'rspec-puppet'
12 gem 'puppet', puppetversion