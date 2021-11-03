Plugin.define do
name "PHP-Fusion"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "PHP-Fusion, a light-weight open-source content management system (CMS) - Requires: PHP and MySQL"
website "http://www.php-fusion.co.uk/"
dorks [
'"Powered by PHP-Fusion copyright" intitle:News'
]
matches [
    {:certainty=>75, :ghdb=>'"Powered by PHP-Fusion copyright" +intitle:News'},
    {:certainty=>75, :regexp=>/<!--counter-->[\d,]+ unique visits</},
    {:regexp=>/PHP-Fusion (.+)$/,:offset=>1, :search=>'headers[x-powered-by]'},
    {:regexp=>/Powered by <a href="[^>]+php-fusion/},
    {:search=>"headers[set-cookie]", :name=>"fusion_visited Cookie", :regexp=>/fusion_visited=/},
    {:string=>/Powered by <a href='http:\/\/www\.php-fusion\.co\.uk'>PHP-Fusion<\/a> copyright &copy; 2002 - ([\d]{4})/},
    {:text=>"<td align='right' class='profile_user_level tbl1'><!--profile_user_level-->"},
    {:text=>"<td align='right' class='profile_user_name tbl1'><!--profile_user_name-->"},
    {:text=>"<td align='right' class='tbl1 profile_user_level'><!--profile_user_level-->"},
    {:text=>"<td align='right' class='tbl1 profile_user_name'><!--profile_user_name-->"},
    {:text=>"class='tbl profile_user_avatar'><!--profile_user_avatar--><img src='images/avatars/"}
]
end
