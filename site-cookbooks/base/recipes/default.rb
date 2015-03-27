#
# Cookbook Name:: base
# Recipe:: default
#
# 
%w{git curl}.each do |pkg|
  package pkg do
    action :install
  end
end
