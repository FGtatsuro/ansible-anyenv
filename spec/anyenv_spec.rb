require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe command("su -l -s /bin/bash -c 'anyenv install ndenv'"), :if => ['debian', 'alpine'].include?(os[:family]) do
  its(:exit_status) { should eq 0 }
end

describe command("su -l -s /bin/bash -c 'which ndenv'"), :if => ['debian', 'alpine'].include?(os[:family]) do
  its(:exit_status) { should eq 0 }
end

describe command('source /Users/travis/.profile && anyenv install ndenv'), :if => os[:family] == 'darwin' do
  its(:exit_status) { should eq 0 }
end

describe command('source /Users/travis/.profile && which ndenv'), :if => os[:family] == 'darwin' do
  its(:exit_status) { should eq 0 }
end
