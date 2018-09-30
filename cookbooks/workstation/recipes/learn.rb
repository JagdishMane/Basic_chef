package 'apache' do
	package_name 'httpd'
	action :install
end

service 'httpd' do
	action [:enable,:start]
end

file '/var/www/html/index.html' do
	content 'Linux Academy workstation'
	mode	0755
	owner	'root'
	group	'apache'
end

service 'httpd' do
	action [:enable,:restart]
end

file '/etc/motd' do
	content 'Welcome to Linux Academy workstartion'
end
