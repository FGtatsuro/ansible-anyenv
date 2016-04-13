require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe command('exec /bin/bash -l && anyenv install ndenv') do
  its(:exit_status) { should eq 0 }
end

describe command('exec /bin/bash -l && which ndenv') do
  its(:exit_status) { should eq 0 }
end
