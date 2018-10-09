#
# Cookbook:: apache1
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'httpd'

service 'httpd' do
	action [:enable,:start]
end


file "/var/www/html/index.html" do
	content "This is apache1 cookbook version 1.0.0"
	owner "root"
	group "root"
	mode 0755
	notifies :restart, "service[httpd]"
end
