require 'spec_helper_acceptance'

describe 'jenkins class' do

    it 'should should run successfully' do
      pp = <<-EOS
        exec { "apt-update":
          command => "/usr/bin/apt-get update"
        }
        
        include 'apache'
      EOS

      expect(apply_manifest(pp).exit_code).to eq(0)
    end

    describe service('apache2') do
    	it{should be_enabled}
    end

     describe port(80) do
    	it{should be_listening}
    end
end