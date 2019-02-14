echo "external_url 'https://192.168.99.100'" > /etc/gitlab/gitlab.rb
echo "nginx['enable'] = true" >> /etc/gitlab/gitlab.rb
echo "nginx['redirect_http_to_https'] = true" >> /etc/gitlab/gitlab.rb
echo "nginx['redirect_http_to_https_port'] = 80" >> /etc/gitlab/gitlab.rb
echo "nginx['ssl_certificate'] = '/etc/gitlab/ssl/gitlab.crt'" >> /etc/gitlab/gitlab.rb
echo "nginx['ssl_certificate_key'] = '/etc/gitlab/ssl/gitlab.key'" >> /etc/gitlab/gitlab.rb
echo "gitlab_rails['gitlab_shell_ssh_port'] = 2020" >> /etc/gitlab/gitlab.rb
echo "Port 2020" >> /etc/ssh/ssh_config
service ssh restart
