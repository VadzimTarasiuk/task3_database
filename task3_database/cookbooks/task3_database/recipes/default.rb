#
# Cookbook:: task3_database
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
node.default['mysql']['dev_db']['sql_files']['task3_database::dev_db/users.sql'] = true
node.default['mysql']['dev_db'] = 'test'

mysql_client 'default' do
  action :create
end

mysql_service 'default' do
  port '3306' 
  version '5.5'
  initial_root_password 'password'
  action [:create, :start]
end