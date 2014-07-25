#
# Cookbook Name:: elasticsearch
# Recipe:: default
#
# Copyright (C) 2014 IceMobile
#

yum_repository 'ElasticSearch' do
  description 'Elasticsearch repository for 1.2.x packages'
  baseurl 'http://packages.elasticsearch.org/elasticsearch/1.2/centos'
  gpgcheck true
  gpgkey 'http://packages.elasticsearch.org/GPG-KEY-elasticsearch'
  action :create
end

package 'elasticsearch' do
  action :install
  version '1.2.3-1'
end

package 'java-1.7.0-openjdk' do
  action :install
end

service "elasticsearch" do
  action [:enable, :start]
  supports :status => true, :restart => true, :reload => true
end
