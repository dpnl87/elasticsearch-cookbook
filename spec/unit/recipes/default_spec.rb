require 'spec_helper'

describe 'cookbook_template::default' do
  let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

  # TODO: add unit tests

end
