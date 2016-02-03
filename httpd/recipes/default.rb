package "httpd" do
  action :install
end

file "/var/www/html/test.php" do
  content "<?php echo 'test'; ?>"
  action :create
end

service "httpd" do
  action [ :enable, :start ]
end
