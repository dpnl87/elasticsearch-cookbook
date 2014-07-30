require 'spec_helper'

describe 'elasticsearch::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  it 'creates the elasticsearch repo' do
    expect(chef_run).to create_yum_repository('elasticsearch')
  end

end
