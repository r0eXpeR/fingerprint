Plugin.define do
name "PHPOpenChat"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHPOpenChat is a high performance php-based chat server software for a live chat-room"
website "http://www.phpopenchat.org/"
dorks [
'intitle:"PHPOpenChat Installation" inurl:"admin/install.php"'
]
matches [
{ :regexp=>/<html><body bgcolor="white">[\s]+You don't read the INSTALL instructions!<br>[\s]+Use the <a href="admin\/install\.php">PHPOpenChat-Installer<\/a>[\s]+to install and configure your chat\.[\s]+<\/body><\/html>/ },
{ :regexp=>/<html>[\s]+<head>[\s]+<title>PHPOpenChat Installation<\/title>[\s]+<\/head>[\s]+<body>[\s]+<h2>PHPOpenChat Installer<\/h2>[\s]+Step: [\s]+&nbsp;<b><font color="red">1<\/font><\/b>&nbsp;&nbsp;<b>2<\/b>&nbsp;&nbsp;<b>3<\/b>&nbsp;&nbsp;<b>4<\/b>&nbsp;&nbsp;<b>5<\/b>&nbsp;[\s]+<table border=1>[\s]+<form action="install\.php" method="post">/ },
]
end
