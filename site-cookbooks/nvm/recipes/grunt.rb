bash "grunt" do
  code <<-EOH
    . /usr/local/nvm/nvm.sh
    nvm use v0.12.1
    npm install -g grunt-cli
  EOH
  action :nothing
  subscribes :run, "bash[nvm.sh]", :delayed
end

