Plugin.define do
name "Elite-Gaming-Ladders"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Elite Gaming Ladders - Leagues, tournaments and online game battles script"
website "http://eliteladders.com/"
dorks [
'"Powered by Elite Gaming Ladders"',
'inurl:"ladders.php?platform="'
]
matches [
    {:certainty=>75, :ghdb=>'inurl:"ladders.php?platform=" "Powered by Elite Gaming Ladders"'},
    {:md5=>"ac60e7f75ff832cc7e0bab5eee67e008"},
    {:regexp=>/<b><span style="color:#013171;">Design By: <\/span> Soulast<span style="color:#013171;"> \| Powered [bB]y: <\/span>[\s]?<a href="http:\/\/(www\.)?eliteladders\.com"/},

    {:text=>"<!-- Copyright - Removing this link back to Elite Ladders without permission will result in suspension of your license  -->"},
    {:text=>"<!-- DESIGNER AND POWERED BY - START  - You must leave this Copyright link back to Elite Ladders in place othersise your license will be revoked -->"},
    {:text=>"<!-- DO NOT EDIT ABOVE THIS LINE UNLESS YOU KNOW WHAT YOU ARE DOIN - END -->"},
    {:text=>"<!-- Do Not Edit Below This Line Unless You Know What You're Doing -->"},
    {:text=>"<!-- EGL INFORMATION - BLOCK END -->"},
    {:text=>'Powered by Elite'},
    {:version=>/Powered [bB]y:? <a href='http:\/\/(www\.)?eliteladders\.com'>[\s]+<span style=["']color:#[^;]{6};["']>Elite Gaming Ladders v([^<]+)<\/span><\/a>/, :offset=>1 },
    {:version=>/Powered by: <a href='http:\/\/(www\.)?eliteladders\.com'>Elite Gaming Ladders (\s|&nbsp;)?v([^<]+)<\/a>/, :offset=>2}
]
end
