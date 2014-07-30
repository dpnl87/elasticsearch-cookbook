require 'spec_helper'

describe 'elasticsearch::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'install java' do
    expect(chef_run).to install_package('java-1.7.0-openjdk')
  end

  it 'install elasticsearch' do
    expect(chef_run).to install_package('elasticsearch').with_version('1.2.3-1')
  end

end
