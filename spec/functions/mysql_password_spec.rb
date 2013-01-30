require 'spec_helper'

describe 'mysql_password' do

  let(:scope) { PuppetlabsSpec::PuppetInternals.scope }

  it 'should exist' do
    Puppet::Parser::Functions.function('mysql_password').should == 'function_mysql_password'
  end

  it 'should throw an error on invalid types' do
    lambda {
      scope.function_mysql_password([{:foo => :bar}])
    }.should(raise_error(Puppet::ParseError))
  end

  it 'should convert a password to a hash' do
    password = 'mypass'
    scope.function_mysql_password([password]).should == '*6C8989366EAF75BB670AD8EA7A7FC1176A95CEF4'
  end

end
