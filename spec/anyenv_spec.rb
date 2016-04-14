require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe command('exec /bin/bash -l && anyenv install ndenv'), :if => ['debian', 'alpine'].include?(os[:family]) do
  its(:exit_status) { should eq 0 }
end

describe command('exec /bin/bash -l && which ndenv'), :if => ['debian', 'alpine'].include?(os[:family]) do
  its(:exit_status) { should eq 0 }
end

describe command('source /Users/travis/.profile && anyenv install ndenv'), :if => os[:family] == 'darwin' do
  its(:exit_status) { should eq 0 }
end

describe command('source /Users/travis/.profile && which ndenv'), :if => os[:family] == 'darwin' do
  its(:exit_status) { should eq 0 }
end
