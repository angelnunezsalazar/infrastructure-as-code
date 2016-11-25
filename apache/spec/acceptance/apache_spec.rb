require 'spec_helper_acceptance'

describe 'apache class' do

    it 'should should run successfully' do
      pp = "include 'apache'"

      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    describe service('apache2') do
    	it{should be_enabled}
    end

    describe port(80) do
    	it{should be_listening}
    end
end