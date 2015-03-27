#
# Cookbook Name:: base
# Recipe:: default
#
# 
%w{git curl zip unzip}.each do |pkg|
  package pkg do
    action :install
  end
end
