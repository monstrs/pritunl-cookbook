require_relative 'spec_helper'

describe package('pritunl') do
  it { should be_installed }
end

describe service('mongod') do
  it { should be_running }
end

describe port(9700) do
  it { should be_listening }
end
