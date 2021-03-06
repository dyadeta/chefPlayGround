package 'vim-enhanced'
package 'nano'
package 'emacs'

package 'tree' do
  action :install
end

package 'git' do
  action :install
end

package 'ntp' 

file '/etc/motd' do
  content 'This computer is a property of mine'
  action :create
  owner 'root'
  group 'root'
end

service 'ntpd' do
action [ :enable, :start ]
end

