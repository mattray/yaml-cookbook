# get a big hash
hash1 = {
        'golf': 'hotel',
        'kilo': ['lima', 'mike', 'november'],
        'india': {
                  'juliett': true
                 },
        'alpha': {
                  'charlie': 'delta',
                  'bravo': 10,
                 },
        'echo': 'foxtrot'
       }

hash2 = {
        'golf': 'hotel',
        'kilo': ['lima', 'mike', 'november'],
        'india': {
                  'juliett': true,
                  'oscar': 14
                 },
        'alpha': {
                  'charlie': 'delta',
                  'bravo': 10,
                 },
       }

# write out some YAML
yaml_file "#{Chef::Config[:file_cache_path]}/test1.yaml" do
  owner 'vagrant'
  group 'vagrant'
  mode '0640'
  content hash1
  action :create
end

yaml_file "#{Chef::Config[:file_cache_path]}/test2.yaml" do
  owner 'vagrant'
  group 'vagrant'
  mode '0640'
  content hash2
  action :create_if_missing
end

yaml_file "#{Chef::Config[:file_cache_path]}/test2.yaml" do
  owner 'vagrant'
  group 'vagrant'
  mode '0644'
  content hash2
  action :touch
end

yaml_file "NOOP #{Chef::Config[:file_cache_path]}/test1.yaml" do
  path "#{Chef::Config[:file_cache_path]}/test1.yaml"
  owner 'root'
  group 'root'
  mode '0640'
  content hash1
  action :create_if_missing
end

yaml_file "#{Chef::Config[:file_cache_path]}/test3.yaml" do
  action :delete
end
