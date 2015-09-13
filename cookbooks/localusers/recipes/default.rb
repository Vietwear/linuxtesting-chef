#
# Cookbook Name:: localusers
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
search(:users,"*:*").each do |data|
  user data["id"] do 
    comment data["comment"]
    uid data["uid"]
    gid data["gid"]
    home data["home"]
    shell data["shell"]
  end
end
service 'memcached' do
  action :nothing
  supports :status => true, :start => true, :stop => true, :restart => true
end
include_recipe "localusers::grum"
