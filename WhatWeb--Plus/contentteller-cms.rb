Plugin.define do
name "Contentteller-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Contentteller - A powerful Content Management System with 20 modules designed for high traffic websites."
website "http://www.contentteller.com/en/"
dorks [
'"powered by Contentteller"'
]
matches [
    {:text=>'<meta name="generator" content="Esselbach Contentteller CMS" />'},
    {:text=>'content="Esselbach Contentteller CMS'},
    {:version=>/Powered by <a href="http:\/\/www.contentteller.com">Contentteller&reg; (Business Edition|Standard Edition)<\/a><img src="index.php\?ct=core&amp;action=tasks" alt="" \/>/}
]
end
