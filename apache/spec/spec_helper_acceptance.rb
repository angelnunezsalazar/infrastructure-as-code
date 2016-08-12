require 'beaker-rspec/spec_helper'
require 'beaker-rspec/helpers/serverspec'

RSpec.configure do |c|
  # Module root
  module_root = File.expand_path(File.join(File.dirname(__FILE__), '..'))

  # Readable test descriptions
  c.formatter = :documentation
 
  # Configure all nodes in nodeset
  c.before :suite do
    hosts.each do |host|
      # Install this module
      copy_module_to(host, :source => module_root,
                           :target_module_path => '/etc/puppet/modules/',
                           :module_name => 'apache')
    end
  end
end