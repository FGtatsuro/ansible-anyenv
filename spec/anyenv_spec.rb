require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

set :shell, '/bin/bash'
set :login_shell, true

describe command('anyenv install ndenv') do
  its(:exit_status) { should eq 0 }
end

describe command('which ndenv') do
  its(:exit_status) { should eq 0 }
end
