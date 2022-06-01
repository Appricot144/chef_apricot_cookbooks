#
# Cookbook:: create_file
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.
file '/tmp/myenvironment' do
  content node.chef_environment
end
