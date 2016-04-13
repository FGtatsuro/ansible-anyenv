require "spec_helper_#{ENV['SPEC_TARGET_BACKEND']}"

describe command('which renv') do
  its(:exit_status) { should eq 0 }
end

describe command('which plenv') do
  its(:exit_status) { should eq 0 }
end

describe command('which pyenv') do
  its(:exit_status) { should eq 0 }
end

describe command('which phpenv') do
  its(:exit_status) { should eq 0 }
end

describe command('which ndenv') do
  its(:exit_status) { should eq 0 }
end

describe command('which denv') do
  its(:exit_status) { should eq 0 }
end

describe command('which jenv') do
  its(:exit_status) { should eq 0 }
end

describe command('which luaenv') do
  its(:exit_status) { should eq 0 }
end

describe command('which goenv') do
  its(:exit_status) { should eq 0 }
end
