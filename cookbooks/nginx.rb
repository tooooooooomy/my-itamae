  template "/etc/nginx/nginx.conf" do
    action :create
    source "nginx/templates/nginx.conf.erb"
    mode "0644"
    notifies :reload, "service[nginx]"
  end
