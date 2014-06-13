# see http://guides.rubyonrails.org/development_dependencies_install.html
package 'libxml2'
package 'libxml2-devel'
package 'libxslt'
package 'libxslt-devel'
package 'mysql-devel'
execute "setting up nodejs repo" do
  user 'root'
  command 'rpm --import https://fedoraproject.org/static/0608B895.txt'
  command 'rpm -Uvh http://download-i2.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm'
  command 'yum install nodejs npm --enablerepo=epel'
  action :run
end
