Plugin.define do
name "phpGreetCards"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP greeting card mailer"
website "http://www.w2b.ru/webapplications/index.php"
dorks [
'"Powered by phpGreetCards"'
]
matches [
{ :text=>'<td align="right"><font color="#b8c2cc">Powered by <a href="http://www.w2b.ru/webapplications/index.php" target="_blank">phpGreetCards</a>, ' },
{ :text=>'<td align="right"><font color="#b8c2cc">Powered by <a href="http://www.w2bpm.com/index.php?cat=phpGreetCards" target="_blank">phpGreetCards</a>, ' },
]
end
