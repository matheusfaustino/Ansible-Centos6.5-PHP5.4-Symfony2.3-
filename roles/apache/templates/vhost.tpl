<VirtualHost *:80>
  DirectoryIndex index.php index.html

  ServerAdmin webmaster@example.com
  DocumentRoot {{ doc_root }}/{{ item.doc_root }}

  ServerName {{ item.server_name }}
  ServerAlias www.{{ item.server_name }}

  <Directory "{{ doc_root }}/{{ item.doc_root }}">
    AllowOverride All
    Options -Indexes FollowSymLinks
    Order allow,deny
    Allow from all
  </Directory>

</VirtualHost>
