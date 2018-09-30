file '/var/www/html/index.html' do
	content "This is webnode1"
	mode 7555
	owner user
	groups apache
end

service 'httpd' do
	action [:enable,:start]
end
