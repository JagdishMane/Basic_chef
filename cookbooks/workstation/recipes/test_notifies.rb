service 'httpd' do
end

file '/var/www/html/index.html' do
	content 'Linux Academy workstation : LAB2'
	notifies :restart, "service[httpd]"
end 
