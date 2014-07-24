require 'spec_helper'

describe 'elasticsearch::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates the elasticsearch repo' do
    expect(chef_run).to create_yum_repository('ElasticSearch')
  end

  it 'installes elasticsearch' do
    expect(chef_run).to install_package('elasticsearch').with_version('1.2.3-1')
  end

end
