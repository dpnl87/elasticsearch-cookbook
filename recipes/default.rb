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
