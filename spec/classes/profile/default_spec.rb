require 'spec_helper'
describe 'cdpuppet::profile::jenkins' do
  let(:facts) {
    {
        :osfamily => 'RedHat',
        :operatingsystem => 'RedHat',
        :operatingsystemrelease => "6",
    }
  }

  context 'with defaults for all parameters' do
    it { should contain_class('cdpuppet::profile::jenkins') }
    it { should contain_yumrepo('epel').with({'baseurl' => 'http://download.fedoraproject.org/pub/epel/6/x86_64'})}
  end
end
