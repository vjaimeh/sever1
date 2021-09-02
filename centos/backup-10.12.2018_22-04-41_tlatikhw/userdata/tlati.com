--- 
customlog: 
  - 
    format: combined
    target: /usr/local/apache/domlogs/tlati.com
  - 
    format: "\"%{%s}t %I .\\n%{%s}t %O .\""
    target: /usr/local/apache/domlogs/tlati.com-bytes_log
documentroot: /home/tlatikhw/public_html
group: tlatikhw
hascgi: 1
homedir: /home/tlatikhw
ip: 209.99.16.119
owner: root
phpopenbasedirprotect: 1
port: 8080
scriptalias: 
  - 
    path: /home/tlatikhw/public_html/cgi-bin
    url: /cgi-bin/
  - 
    path: /home/tlatikhw/public_html/cgi-bin/
    url: /cgi-bin/
serveradmin: webmaster@tlati.com
serveralias: www.tlati.com mail.tlati.com mail.tlati.com.cp-51.webhostbox.net www.tlati.com.cp-51.webhostbox.net tlati.com.cp-51.webhostbox.net
servername: tlati.com
ssl: 1
usecanonicalname: 'Off'
user: tlatikhw
userdirprotect: ''
