Plugin.define do
name "Koobi"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "Shop/CMS software [German]"
website "http://www.Dream4.de/"
dorks [
'"powered by Koobi PRO|SHOP|CMS" -"SQL Injection"'
]
matches [
    {:offset=>1, :regexp=>/<!--[^K>-]+Koobi ([a-z\d.]+)/},
    {:regexp=>/Koobi/, :search=>'body'},
    {:regexp=>/Powered by <a title="Koobi ist ein komfortables und leistungsf&auml;higes Content-Management-System \(CMS\) f&uuml;r Privatpersonen, Vereine, kleine und mittelst&auml;ndische Unternehmen, die einen professionellen Internetauftritt realisieren m&ouml;chten."[^>]+>Koobi/i},
    {:text=>'<!-- powered by koobi - do not remove this info! -->'},
    {:version=>/    Diese Webseite wurde mit Koobi[\ :]*(SHOP|PRO|CMS)[\ \-]*([\d\.\ a-z]+) erstellt./, :offset=>1},
    {:version=>/<div class="copyright">powered by Koobi CMS ([\d\.]+)/},
    {:version=>/<meta name="generator" content="\(c\) Koobi ([\d\.]+), http:\/\/www.dream4.de" \/>/},
    {:version=>/Powered by <a title="Koobi ist ein komfortables und leistungsf&auml;higes Content-Management-System \(CMS\) f&uuml;r Privatpersonen, Vereine, kleine und mittelst&auml;ndische Unternehmen, die einen professionellen Internetauftritt realisieren m&ouml;chten."[^>]*>Koobi[\ :]*(SHOP|PRO|CMS)<\/a> ([\d\.]+)/i, :offset=>1},
    {:version=>/Powered by <a[^>]+href="http:\/\/www.dream4.de\/cms\/content\/6\/koobi\/1\/">Koobi<\/a> (PRO|SHOP|CMS)[\s]*([\d\.\ a-z]+)/i, :offset=>1},
    {:version=>/powered by <a class="foot" href="http:\/\/www.antichat.ru" target="_blank">Koobi Pro ([\d\.]+) \[nulled by censored! from antichat.ru\]<\/a>/, :string=>"Nulled"},
    {:version=>/powered by <a class="foot" href="http:\/\/www.dream4.de\/[^>]+>Koobi Pro ([\d\.]+)<\/a>/i, :string=>"Pro"},
    {:version=>/powered by <a[^>]+href="http:\/\/www.dream4.de\/[^>]+>koobi-cms<\/a> ([\d\.]+)/i}
]
end
