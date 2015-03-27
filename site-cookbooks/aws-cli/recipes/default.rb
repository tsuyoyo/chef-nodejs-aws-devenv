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
