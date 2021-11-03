Plugin.define do
name "Basic-PHP-Events-Lister"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PHP event calendar"
website "http://www.mevin.com/"
dorks [
'"Powered by: mevin productions" inurl:event.php'
]
matches [
    {:text=>'<br /><center><input class="text" type="submit" name="submitBtn" value="Login" /></center>'},
    {:text=>'<center><br> <a href=recover.php>Lost your password?</a></center>'},
    {:text=>'Powered by: <a href="http://www.mevin.com/">'},
    {:text=>'Powered by: <a href="http://www.mevin.com/">mevin productions</a>'}
]
end
