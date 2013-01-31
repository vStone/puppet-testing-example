require 'spec_helper'

describe 'example' do
  describe 'on CentOS' do
    let (:facts) { {
      :operatingsystem => 'CentOS',
    } }

    it { should contain_file('foo').with_path('/etc/sysconfig/example') }
  end
  describe 'on Something' do
    let (:facts) { {
      :operatingsystem => 'Something',
    } }

    it { should contain_file('foo').with_path('/etc/example_config') }
  end

  context 'with foo => false' do
    let (:params) { {
      :foo => false
    } }

    it { should_not contain_file('foo') }
  end


end

