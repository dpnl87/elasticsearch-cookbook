require 'spec_helper'

describe package('elasticsearch') do
  it { should be_installed  }
end

describe package('java-1.7.0-openjdk') do
  it { should be_installed }
end

describe service('elasticsearch') do
  it { should be_running }
end

describe port('9200') do
  it { should be_listening }
end

describe port('9300') do
  it { should be_listening }
end

describe file('/etc/yum.repos.d/elasticsearch.repo') do
  it { should be_file }
end
