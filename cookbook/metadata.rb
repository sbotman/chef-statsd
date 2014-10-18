name             'chef-statsd'
maintainer       'Sander Botman'
maintainer_email 'sander.botman@gmail.com'
license          'Apache 2.0'
description      'Installs/Configures Chef-StatsD'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.3.0'

%w(redhat centos ubuntu).each do |os|
  supports os
end
