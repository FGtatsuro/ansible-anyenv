require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe command('anyenv install ndenv && exec $SHELL -l') do
  its(:exit_status) { should eq 0 }
end

describe command('which ndenv') do
  its(:exit_status) { should eq 0 }
end
