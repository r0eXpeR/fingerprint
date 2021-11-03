Plugin.define do
name "VBulletin"
authors [
  "Andrew Horton",

  "@csalazar", 

  "Bhavin Senjaliya <bhavin.senjaliya@gmail.com>", 

]
version "0.5"
description "VBulletin is a PHP forum."
matches [
    {:certainty=>50, :regexp=>/Copyright &copy;2000 - [0-9]+, Jelsoft Enterprises Ltd./},
    {:certainty=>75, :regexp=>/\* vBulletin [0-9a-z.]+ CSS/},
    {:certainty=>75, :text=>'vb_bullet.gif"'}, #' comment for gedit syntax hilighting
{:regexp=>/Powered by(:)? vBulletin(&reg;)? Version/},
    {:ghdb=>'"Powered by vBulletin" inurl:newreply.php'},
    {:name=>"vbulletin_global.js", :regexp=>/<script type="text\/javascript" src="[a-z0-9.\/]*vbulletin_global.js/},
    {:regexp=>/<div id="copyright">Powered by vBulletin/},
    {:regexp=>/<meta name="generator" content="vBulletin/},
    {:regexp=>/vBulletin ?([\d.]+)?/, :search=>'body',:offset=>1},
    {:search=>"headers[set-cookie]", :regexp=>/bblastactivity/, :name=>"bblastactivity cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/bblastvisit/, :name=>"bblastvisit cookie"},
    {:search=>"headers[set-cookie]", :regexp=>/bbsessionhash/, :name=>"bbsessionhash cookie"},
    {:text=>'Powered by vBulletin'},
    {:text=>'content="vBulletin'},
    {:url=>'/clientscript/vbulletin_md5.js', :text=>'hexcase'},
    {:url=>'/clientscript/vbulletin_menu.js', :text=>'vBulletin'},
    {:version=>/<meta name="generator" content="vBulletin ([0-9a-z.]+)" \/>/,  :name=>"version"},
    {:version=>/Powered by(:)? vBulletin(&reg;)? Version ([0-9a-z.]+)/, :offset=>2,  :name=>"version"},
    {:version=>/\* vBulletin ([0-9a-z.]+) CSS/,  :name=>"version"},
    {:version=>/\/vbulletin\/clientscript\/guestforum\.js\?v=(\d+)/,  :name=>"version"},
    {:version=>/\/vbulletin_read_marker\.js\?v=(\d+)/,  :name=>"version"},
    {:version=>/clientscript\/vbulletin-core\.js\?v=(\d+)/,  :name=>"version"},
    {:version=>/clientscript\/vbulletin_global\.js\?v=(\d+)/,  :name=>"version"},
    {:version=>/clientscript\/vbulletin_md5\.js,qv=(\d+)\.pagespeed\..*?js">/,  :name=>"version"}
]
end
