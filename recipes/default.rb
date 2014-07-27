#
# Cookbook Name:: elasticsearch
# Recipe:: default
#
# Copyright (C) 2014 IceMobile
#

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
