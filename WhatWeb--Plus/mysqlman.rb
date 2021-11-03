Plugin.define do
name "MySQLMan"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "MySQLMan is a web based MySQL database manager."
website "http://www.gossamer-threads.com/products/archive.html"
dorks [
'inurl:"mysql.cgi?do="'
]
matches [
{ :text=>'| <A href="mysql.cgi?do=top_level_op&data_source=&action=create_db">Create</A>' },
{ :version=>/<p align="right"><a href="http:\/\/www\.gossamer-threads\.com\/scripts\/"><font face="Verdana, Arial, Helvetica" size="1">MySQLMan[\s]+v\. ([^\s^<]+)<br>/ },
]
end
