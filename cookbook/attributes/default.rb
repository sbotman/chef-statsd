#
# Cookbook Name:: chef-statsd
# Attribute:: default
#
# Copyright 2014, Sander Botman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['chef-statsd']['version']     = '0.3.0'
default['chef-statsd']['install_dir'] = '/opt/chef-statsd'

if kernel['machine'] =~ /x86_64/
  default['chef-statsd']['url'] = "https://github.com/sbotman/statsd-go/releases/download/#{node['chef-statsd']['version']}/statsd-go-linux-amd64.tar.gz"
  default['chef-statsd']['md5'] = 'dc36f822352edab3af43330ecfd3ae9d'
  default['chef-statsd']['sha'] = '75f6051d1dfc2deca1fac2f6b7dbda258c44d716'
else
  default['chef-statsd']['url'] = "https://github.com/sbotman/statsd-go/releases/download/#{node['chef-statsd']['version']}/statsd-go-linux-386.tar.gz"
  default['chef-statsd']['md5'] = '5b6c473a40e6dc0a1720e589716da6f4'
  default['chef-statsd']['sha'] = '989862d11d4da30955551a26b90c6647d1c909ef'
end

# These options are used for the 'Default' section
default['chef-statsd']['config']['logfile'] = '/var/log/chef-statsd.log'
default['chef-statsd']['config']['listen']  = '127.0.0.1'
default['chef-statsd']['config']['port']    = 9466

# There options are used for the 'Ganglia' section
# 
# Don't have this, so room for improvement :)
#

# These options are used for the 'Graphite' section
default['chef-statsd']['config']['graphite']['server'] = ''
default['chef-statsd']['config']['graphite']['port']   = 2003

default['chef-statsd']['params'] = [ "-address=\"#{node['chef-statsd']['config']['listen']}:#{node['chef-statsd']['config']['port']}\" ", 
                                     "-graphite=\"#{node['chef-statsd']['config']['graphite']['server']}:#{node['chef-statsd']['config']['graphite']['port']}\" ",
                                     "-timers-prefix=\"stats.timers\" ",
                                     "-stats-prefix=\"stats.\" ",
                                     "-counters-prefix=\"stats.counters.\" ",
                                     "-percent-threshold=90 " 
                                   ]
