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

default['elasticsearch']['repo']['name']     = 'elasticsearch'
default['elasticsearch']['repo']['desc']     = 'Elasticsearch repository for 1.2.x packages'
default['elasticsearch']['repo']['base']     = 'http://packages.elasticsearch.org/elasticsearch/1.2/centos'
default['elasticsearch']['repo']['gpgcheck'] = true
default['elasticsearch']['repo']['gpgkey']   = 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'

default['elasticsearch']['package']['name']    = 'elasticsearch'
default['elasticsearch']['package']['version'] = '1.2.3-1'

default['elasticsearch']['service']['name'] = 'elasticsearch'

default['elasticsearch']['java']['package']['name'] = 'java-1.7.0-openjdk'
