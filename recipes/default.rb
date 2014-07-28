#
# Author:: Daniel Paulus (<daniel.paulus@icemobile.com>)
# Cookbook Name:: elasticsearch
# Recipe:: default
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

yum_repository node['elasticsearch']['repo']['name'] do
  description node['elasticsearch']['repo']['desc']
  baseurl node['elasticsearch']['repo']['base']
  gpgcheck node['elasticsearch']['repo']['gpgcheck']
  gpgkey node['elasticsearch']['repo']['gpgkey']
  action :create
end

package node['elasticsearch']['package']['name'] do
  action :install
  version node['elasticsearch']['package']['version']
end

package 'java-1.7.0-openjdk' do
  action :install
end

service "elasticsearch" do
  action [:enable, :start]
  supports :status => true, :restart => true, :reload => true
end
