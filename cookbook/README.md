chef-statsd
===========
Gathers your chef API statistics for chef enterprise.

Requirements
------------

### Platform:

* Linux

### Infrastructure

* Graphite server

Usage
-----

Add the default recipe to the runlist of all front-end chef enterprise servers.

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['version']</tt></td>
    <td>String</td>
    <td>Package version</td>
    <td><tt>0.3.0</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['install_dir']</tt></td>
    <td>String</td>
    <td>Installation path</td>
    <td><tt>/opt/chef-statds</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['url']</tt></td>
    <td>String</td>
    <td>Download URL</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['md5']</tt></td>
    <td>String</td>
    <td>Download md5</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['sha']</tt></td>
    <td>String</td>
    <td>Download sha</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['config']['logfile']</tt></td>
    <td>String</td>
    <td>Program logfile</td>
    <td><tt>/var/log/chef-statsd.log</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['config']['listen']</tt></td>
    <td>String</td>
    <td>IP to listen on</td>
    <td><tt>127.0.0.1</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['config']['port']</tt></td>
    <td>Integer</td>
    <td>Port to listen on</td>
    <td><tt>9466</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['config']['graphite']['server']</tt></td>
    <td>String</td>
    <td>IP of graphite server</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['config']['graphite']['port']</tt></td>
    <td>Integer</td>
    <td>Port of graphite server</td>
    <td><tt>2003</tt></td>
  </tr>
  <tr>
    <td><tt>['chef-statsd']['params']</tt></td>
    <td>Array</td>
    <td>Program parameters</td>
    <td><tt>computed</tt></td>
  </tr>
</table>

Recipes
-------

### chef-statsd::default

Installs the statsd client and configuration

Versioning
----------
This cookbook uses [Semantic Versioning 2.0.0](http://semver.org/)  

    Given a version number MAJOR.MINOR.PATCH, increment the:  
    MAJOR version when you make functional cookbook changes,
    MINOR version when you add functionality in a backwards-compatible manner,
    PATCH version when you make backwards-compatible bug fixes.

Testing
-------

[![Build Status](https://travis-ci.org/mlafeldt/skeleton-cookbook.png?branch=master)](https://travis-ci.org/mlafeldt/skeleton-cookbook)

The cookbook provides the following Rake tasks for testing:

    rake foodcritic                   # Lint Chef cookbooks
    rake integration                  # Alias for kitchen:all
    rake kitchen:all                  # Run all test instances
    rake kitchen:default-centos-64    # Run default-centos-64 test instance
    rake kitchen:default-ubuntu-1204  # Run default-ubuntu-1204 test instance
    rake rubocop                      # Run RuboCop style and lint checks
    rake spec                         # Run ChefSpec examples
    rake test                         # Run all tests

License and Author
------------------

Author: Sander Botman (sander.botman@gmail.com)

Copyright (c) 2014, Sander Botman All Rights Reserved.

Contributing
------------

We welcome contributed improvements and bug fixes via the usual workflow:

1. Fork this repository
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new pull request
