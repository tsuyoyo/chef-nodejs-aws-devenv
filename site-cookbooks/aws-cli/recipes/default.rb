#
# Cookbook Name:: aws-cli
# Recipe:: default
#
include_recipe "python"

python_pip "awscli"

# --------------------------------------------------------------
# Reffered - http://docs.aws.amazon.com/cli/latest/userguide/installing.html
# (pipを使わないでinstallする場合の書き方。作ったので残しておく)
# ---------------------------------------------------------------
#bash "install aws-cli" do
#  user "root"
#  group "root"
#  cwd "/usr/local"
#  code <<-EOH
#    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
#    unzip awscli-bundle.zip
#    rm awscli-bundle.zip
#    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
#  EOH
#  action :run
#end

# Referred : https://docs.chef.io/resource_directory.html
directory "/home/#{node['vagrant']['user']}/.aws" do
  owner node['vagrant']['user']
  group node['vagrant']['group']
  mode 0755
  action :create
end

# TODO : "/home/#{node[:user]}/redmine" <-- こんな書き方したい
template "credentials" do
  path "/home/vagrant/.aws/credentials"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

template "config" do
  path "/home/vagrant/.aws/config"
  owner "vagrant"
  group "vagrant"
  mode 0644
end

