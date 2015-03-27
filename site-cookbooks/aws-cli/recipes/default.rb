#
# Cookbook Name:: aws-cli
# Recipe:: default
#
package "python" do
  action :install
end

# Reffered - http://docs.aws.amazon.com/cli/latest/userguide/installing.html
bash "install aws-cli" do
  user "root"
  group "root"
  cwd "/usr/local"
  code <<-EOH
    curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
    unzip awscli-bundle.zip
    rm awscli-bundle.zip
    ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
  EOH
  action :run
end
