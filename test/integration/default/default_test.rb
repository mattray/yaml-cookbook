# InSpec test for recipe yaml::default

describe file '/tmp/kitchen/cache/test1.yaml' do
  it { should exist }
  its('group') { should eq 'vagrant' }
  its('owner') { should eq 'vagrant' }
  its('mode') { should cmp '0640' }
  its('content') { should match /^golf: hotel$/ }
  its('content') { should match /^kilo:$/ }
  its('content') { should match /^- lima$/ }
  its('content') { should match /^- mike$/ }
  its('content') { should match /^- november$/ }
  its('content') { should match /^india:$/ }
  its('content') { should match /^  juliett: true$/ }
  its('content') { should match /^alpha:$/ }
  its('content') { should match /^  charlie: delta$/ }
  its('content') { should match /^  bravo: 10$/ }
  its('content') { should match /^echo: foxtrot$/ }
  end

describe file '/tmp/kitchen/cache/test2.yaml' do
  it { should exist }
  its('group') { should eq 'vagrant' }
  its('owner') { should eq 'vagrant' }
  its('mode') { should cmp '0644' }
  its('content') { should match /^golf: hotel$/ }
  its('content') { should match /^kilo:$/ }
  its('content') { should match /^- lima$/ }
  its('content') { should match /^- mike$/ }
  its('content') { should match /^- november$/ }
  its('content') { should match /^india:$/ }
  its('content') { should match /^  juliett: true$/ }
  its('content') { should match /^  oscar: 14$/ }
  its('content') { should match /^alpha:$/ }
  its('content') { should match /^  charlie: delta$/ }
  its('content') { should match /^  bravo: 10$/ }
  end
