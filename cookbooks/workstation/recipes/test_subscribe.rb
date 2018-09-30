service 'httpd' do
	subscribes :reload,"file[/var/www/html/index.html]"
end

file '/var/www/html/index.html' do
	content 'Linux Academy workstation : LAB3'
end 
