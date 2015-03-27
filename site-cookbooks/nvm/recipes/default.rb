#
# Cookbook Name:: nvm
# Recipe:: default
#
#
git "/usr/local/nvm" do
  repository "git://github.com/creationix/nvm.git"
  notifies :run, "bash[nvm.sh]"
end

bash "nvm.sh" do
  code <<-EOH
    . /usr/local/nvm/nvm.sh
    nvm install v0.12.1
  EOH
  action :nothing
end

template "/etc/profile.d/nvm.sh" do
  source "nvm.sh.erb"
  mode 00644
end

