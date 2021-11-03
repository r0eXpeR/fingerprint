Plugin.define do
name "php-ping"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "php-ping - PHP powered ping web interface."
matches [
{ :ghdb=>'"Enter ip" inurl:"php-ping.php"', :certainty=>75 },
{ :regexp=>/<form methode="post" action="[^>]*>[\s]*Enter IP or Host[^<]*<[^<]*type="text" name="host" value="[\d\.]*"><\/input>[\s]*Enter Count[^>]*name="count" size="2" value="4"><\/input>[^>]*[\s]*<input type="submit"[^>]*name="submit" value="Ping!"><\/input><\/form><br><b><\/b>/ },
]
end
