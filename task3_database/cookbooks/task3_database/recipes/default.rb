#
# Cookbook:: task3_database
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
mysql_client 'default' do
  action :create
end

mysql_service 'default' do
  port '3306' 
  version '5.5'
  initial_root_password 'password'
  action [:create, :start]
end