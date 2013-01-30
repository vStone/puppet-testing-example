require 'spec_helper'
require 'facter/is_example'

describe 'Facter::Util::Fact' do
  before { Facter.clear }
  after  { Facter.clear }

  describe 'host' do
    it 'noexample.com' do
      Facter.fact(:fqdn).stubs(:value).returns('noexample.com')
      Facter.fact(:is_example).value.should == false
    end
    it 'some.example.com' do
      Facter.fact(:fqdn).stubs(:value).returns('some.example.com')
      Facter.fact(:is_example).value.should == true
    end
  end

end
