Plugin.define do
name "chillyCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "chillyCMS is a Content Management System. This is a software which allows you to create a website without any programming skills."
website "http://chillycms.bplaced.net/"
dorks [
'inurl:chillyCMS/core/show.site.php',
'"powered by chillyCMS"'
]
matches [
    {:text=>'	<p>&copy;2010 <a href="">chillycms.bplaced.net</a>,'},
    {:text=>'	<p>&copy;2010 <a href="">demo.opensourcecms.com</a>,'},
    {:text=>'	powered by <a href="http://FrozenPepper.de">chillyCMS</a>.'},
    {:text=>'powered by <a href="http://FrozenPepper.de'}
]
end
