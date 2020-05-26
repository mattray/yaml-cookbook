name 'yaml'

# Where to find external cookbooks:
default_source :supermarket

# test harness
cookbook 'test_cookbook', path: 'test/integration/test_cookbook/'
cookbook 'yaml', path: '.'

run_list 'test_cookbook'
