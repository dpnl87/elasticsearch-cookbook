require 'spec_helper'

describe 'elasticsearch::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates the elasticsearch repo' do
    expect(chef_run).to create_yum_repository('elasticsearch')
  end

  it 'install elasticsearch' do
    expect(chef_run).to install_package('elasticsearch').with_version('1.2.3-1')
  end

  it 'install java' do
    expect(chef_run).to install_package('java-1.7.0-openjdk')
  end

  it 'manages the elasticsearch service' do
    expect(chef_run).to enable_service('elasticsearch')
    expect(chef_run).to start_service('elasticsearch')
  end

end
