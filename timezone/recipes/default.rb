#
# Cookbook Name:: timezone
# Recipe:: default
#
# Author yuichi@news2u.co.jp
#
# All rights reserved - Do Not Redistribute
#
package "tzdata"

link "/etc/localtime" do
  to "/usr/share/zoneinfo/Japan"
end

clock = Chef::Util::FileEdit.new("/etc/sysconfig/clock")
clock.search_file_replace_line(/^ZONE=.*$/, "ZONE=\"Asia/Tokyo\"")
clock.write_file