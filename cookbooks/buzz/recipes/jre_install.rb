execute "dl_jre" do
  cwd "#{node['rao']['tomcat-home']}"
  command "aws s3 XXXXXXXXXXXX"
  not_if {file.exist?("#{node['rao']['tomcat-home']/#node['rao']['jdk']}")}
end

execute 'untar' do
  cwd "#{node['rao']['tomcat-home']}"
  command "tar zxf #{node['rao']['jdk']}"
  not_if { ::Dir.exist?(node['rao'][java_home])}
end

execute 'jre' do
cwd "#{node['rao']['tomcat-home']}"
command "XXXXXXXXXXXX"

end
