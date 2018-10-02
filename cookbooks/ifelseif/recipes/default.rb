#
# Cookbook:: ifelseif
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
if node['platform_family'] == 'rhel'
	file '/home/user/rhel.txt' do
		content 'RHEL'
	end
elsif node['platform_family'] == 'debian'
	file '/home/user/debian.txt' do
		content 'DEBIAN'
	end
end
