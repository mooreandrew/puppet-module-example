require 'spec_helper'

describe 'application' do
  context 'applied to supported operating system' do
    on_supported_os.each do |os, facts|
      context "#{os}" do
        let(:facts) do
          facts
        end

        context "without any parameters" do
          let(:params) {{ }}

          it { is_expected.to compile.with_all_deps }
          it { is_expected.to contain_class('example') }

        end
      end
    end
  end


  context 'applied to unsupported operating system' do
    describe 'ubuntu-14-x86_64' do
      let(:facts) {{
        :osfamily        => 'Debian',
        :operatingsystem => 'Ubuntu'
      }}

      it { is_expected.to raise_error(Puppet::Error, /Ubuntu not supported/) }
    end
  end

end
