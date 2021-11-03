Plugin.define do
name "mySQL-Error"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "This plugin detects mySQL errors and grabs the username, server and database details."
dorks [
'mySQL "Error: Access denied for user" "using password: YES"|"using password: NO"|"to database"',
'Warning mysql_connect "function.mysql-connect" "Access denied for user"',
'"Warning: mysql_connect" "function.mysql-connect" "Lost connection to MySQL server at \'reading initial communication packet\'" ext:php'
]
matches [
{ :regexp=>/You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '|You have an error in your SQL syntax near '/, :certainty=>25 },
{ :text=>"Connessione non riuscita: Can't connect to local MySQL server through socket ", :certainty=>25 },
{ :text=>"<b>Warning</b>:  mysql_connect() [<a href='function.mysql-connect'>function.mysql-connect</a>]: Can't connect to local MySQL server through socket" },
{ :text=>"Warning: mysql_connect() [function.mysql-connect]: Lost connection to MySQL server at 'reading initial communication packet', ", :certainty=>25 },
{ :text=>"<b>Warning</b>:  mysql_connect() [<a href='function.mysql-connect'>function.mysql-connect</a>]: Lost connection to MySQL server at 'reading initial communication packet', " },
{ :account=>/<b>Warning<\/b>:  mysql_connect\(\) \[<a href='function.mysql-connect'>function.mysql-connect<\/a>\]: Access denied for user ([^\ ]+)/ },
{ :account=>/<b>Warning<\/b>:  mysql_query\(\) \[<a href='function.mysql-query'>function.mysql-query<\/a>\]: Access denied for user ([^\ ]+)/ },
{ :account=>/Error: Access denied for user ([^\ ]+) to database ([^\s]+)/ },
{ :string=>/Error: Access denied for user ([^\ ]+) to database ([^\s]+)/, :offset=>1 },
{ :string=>/Error: Connection to mySQL-database at ([^\ ]+) failed!/ },
{ :string=>/Errore: Non riesco a connettermi al server MySql ([a-z0-9\.\-\_]+)/ },
{ :string=>/Errore: Non riesco a selezionare il database ([a-z0-9\.\-\_]+)/ },
]
end
