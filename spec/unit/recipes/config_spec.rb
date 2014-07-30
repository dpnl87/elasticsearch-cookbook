require 'spec_helper'

describe 'elasticsearch::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'manages the elasticsearch service' do
    expect(chef_run).to enable_service('elasticsearch')
    expect(chef_run).to start_service('elasticsearch')
  end

end
