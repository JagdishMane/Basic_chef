file '/var/www/html/index.html' do
	content "This is webnode1---v2.0.0"
	mode 755
	owner "user"
	group "apache"
end

service 'httpd' do
	action [:enable,:start]
end

webnodes = search('node', 'role:web')

webnodes.each do | node|
	puts node
end
