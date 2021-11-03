Plugin.define do
name "Adcon-Telemetry-Gateway"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Adcon Telemetry Gateway base station - Manages large networks of UHF, GSM and GPRS RTUs automatically."
website "http://www.adcon.at/"
matches [
    {:model=>/<\/font> <font face="Verdana,Arial,Helvetica,Geneva" size="4"><b>Welcome to the ([^\s]+) Telemetry Gateway!<\/b><\/font>/},
    {:model=>/<body onload="onLoadChangeConfiguratorLinks\(\)">[\s]+<h1 class="line1">([^\s]+) Telemetry Gateway<\/h1>/},
    {:search=>"headers", :text=>'addUPI'},
    {:search=>"headers[server]", :module=>/^addUPI Server [^\s]+ \+(SSL)/},
    {:search=>"headers[server]", :string=>/^addUPI (Server [^\s]+)/},
    {:text=>'<a name="configurator" href="/cgi-bin/configurator.jnlp">configure your Gateway</a>.'},
    {:text=>'<area href="http://www.adcon.at" coords="446,0,565,66" shape="rect" title="Adcon Telemetry" alt="Adcon Telemetry\'s web site">'},
    {:text=>'Adcon Telemetry GmbH;'},
    {:url=>"/images/background.gif", :md5=>"ba53de81edddae5e112c254d2ab182dc"},
    {:url=>"/mainpicture.jpeg", :md5=>"1e051ae64434f4092dc98774ff592406"},
    {:version=>/<font face="Verdana,Arial,Helvetica,Geneva" size="2">Release ([^\s^,]+), &copy;20[^\s]{2} Adcon Telemetry GmbH; all other trademarks mentioned here are registered with their owners\.<\/font>/},
    {:version=>/<hr>[\s]+<p>[\s]+Release ([^\s^,]+), &copy; 20[\d]{2} Adcon Telemetry GmbH<br>/}
]
end
