#
# Author:: Daniel Paulus (<daniel.paulus@icemobile.com>)
# Cookbook Name:: elasticsearch
# Attributes:: default
#
# Copyright 2014, IceMobile.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

## Repository details
# Name of the repository
default['elasticsearch']['repo']['name']     = 'elasticsearch'
# Description for the repository
default['elasticsearch']['repo']['desc']     = 'Elasticsearch repository for 1.2.x packages'
# Repository base url
default['elasticsearch']['repo']['base']     = 'http://packages.elasticsearch.org/elasticsearch/1.2/centos'
# Should the gpgcheck be enabled for the repository
default['elasticsearch']['repo']['gpgcheck'] = true
# Which gpgkey is used for signing
default['elasticsearch']['repo']['gpgkey']   = 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'

## Package details
# Name of the elasticsearch package to install
default['elasticsearch']['package']['name']    = 'elasticsearch'
# Version of the package to install
default['elasticsearch']['package']['version'] = '1.2.3-1'

# Name of the service to start/restart
default['elasticsearch']['service']['name'] = 'elasticsearch'

# Name of the java package to install
default['elasticsearch']['java']['package']['name'] = 'java-1.7.0-openjdk'
