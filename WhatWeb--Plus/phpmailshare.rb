Plugin.define do
name "phpMailShare"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "phpMailShare is a small php script that allows you to share emails with your friends. It uses IMAP to access your mail account and can be used with any mail server that provides IMAP access, including Gmail."
website "tekreaders.com/blog/phpmailshare/"
matches [
{ :version=>/<div align="center">Powered by <a href="http:\/\/tekreaders\.com\/blog\/phpmailshare\/" target="_blank">phpMailShare<\/a> ([^<]+[\d\.\sa-z])<\/div>/ },
{ :text=>'<a href="index.php?action=viewbox&amp;box=0">' },
]
end
