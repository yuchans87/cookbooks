#
# Cookbook Name:: i18n
# Recipe:: default
#
# Author yuichi@news2u.co.jp
#
# All rights reserved - Do Not Redistribute
#
i18n = Chef::Util::FileEdit.new("/etc/sysconfig/i18n")
i18n.search_file_replace_line(/^LANG=.*$/, "LANG=\"ja_JP\.UTF-8\"")
i18n.write_file