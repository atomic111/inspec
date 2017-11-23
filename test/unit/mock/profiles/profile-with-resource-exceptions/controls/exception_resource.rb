# encoding: utf-8

describe exception_resource_test('should raise ResourceSkipped', :skip_me) do
  its('value') { should eq 'does not matter' }
end

describe exception_resource_test('should raise ResourceFailed', :fail_me) do
  its('value') { should eq 'does not matter' }
end

describe exception_resource_test('should pass') do
  its('value') { should eq 'should pass' }
end

describe exception_resource_test('fail inside matcher') do
  its('inside_matcher') { should eq 'does not matter' }
end

describe exception_resource_test('skip inside matcher') do
  its('inside_matcher') { should eq 'does not matter' }
end

control 'should-work-within-control' do
  describe exception_resource_test('should skip', :skip_me) do
    its('value') { should eq 'does not matter' }
  end

  describe exception_resource_test('should fail', :fail_me) do
    its('value') { should eq 'does not matter' }
  end
end

describe exception_resource_test('skip_me').matters('does not matter') do
  its('matters') { should eq 'does not matter' }
end

describe exception_resource_test('fail_me').matters('does not matter') do
  its('matters') { should eq 'does not matter' }
end

describe exception_resource_test('should_pass').matters('it really does') do
  its('matters') { should cmp 'it really does' }
end

