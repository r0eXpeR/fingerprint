Plugin.define do
name "ShopEx"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "eCommerce [Chinese]"
website "http://www.shopex.cn/"
dorks [
'"Powered by ShopEX"'
]
matches [
    {:certainty=>75, :regexp=>/<title>[^<]* -- Powered by Shop(e|E)x<\/title>/},
    {:regexp=>/<link href="syssite\/home\/shop\/[\d]+\/images\/[\d]+\/css\.css" rel="stylesheet" type="text\/css">/},
    {:text=>"<p align=center><font color=black style='font-size:9pt;font-family:Arial'>Powered by </font><a href='http://www.shopex.cn' target='_blank'><font color=navy style='font-size:9pt;font-family:Arial;text-decoration:under-line'>Shop<font><font color=orange style='font-size:9pt;font-family:Arial;text-decoration:under-line'>Ex<font></a>"},
    {:text=>'@author litie[aita]shopex.cn'},
    {:text=>'content="ShopEx'},
    {:url=>'/core/api/site/5.0/api_5_0_site.php', :md5=>'374e8da9d1a89434d0ea6e4ff8275b44'},
    {:url=>'/favicon.ico', :md5=>'cf3bd71744aab1120d9c63f191a14682'},
    {:version=>/<meta name="generator" content="ShopEx ([\d\.]+)" \/>/}
]
end
