Plugin.define do
name "FluxBB"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles at gmail dot com>", 

]
version "0.5"
description "Open Source forum written in PHP"
website "http://fluxbb.org/ - Aggressive matches can identify 1.2.x, 1.3.x and 1.4.x"
dorks [
'"Powered by FluxBB"'
]
matches [
    {:certainty=>25, :regexp=>/<link rel="stylesheet" type="text\/css" href="style\/(Cobalt|Lithium|Mercury|Oxygen|Radium|Sulfur)\.css" \/>/},
    {:certainty=>75, :regexp=>/<div id="brdwelcome" class="inbox">[\s]+<p>[^<]+<\/p>[\s]+<\/div>/},
    {:certainty=>75, :text=>'<li id="navlogin"><a href="login.php">'},
    {:name=>"Powered by", :regexp=>/>P(owered by|ropuls&#233; par) (<strong>)?<a href="http:\/\/fluxbb\.org\/">FluxBB<\/a>/},
    {:regexp=>/<p id="poweredby">[^<]+<a href="https?:..fluxbb\.org.">/},
    {:text=>'Powered by <a href="http://fluxbb.org/'},
    {:version=>/>P(owered by|ropuls&#233; par) <a href="http:\/\/fluxbb\.org\/">FluxBB<\/a> ([\d\.]+)</, :offset=>1}
]
aggressive do
	m=[]
files=[
{:version=>"1.2.x",	:path=>"style/Sulfur.css", :md5=>"8d49e829aaf77164d0be3e05ef67c63d"},
{:version=>"1.4-rc1",   :path=>"style/Sulfur.css", :md5=>"ec6a6ac259f3de9a7c7f1b1b544387ba"},
{:version=>"1.4-rc2 or 1.4-rc3", :path=>"style/Sulfur.css", :md5=>"1f0e9882d761837f01b148f1aa38df9f"},
{:version=>"1.4-beta1 or 1.4-beta2", :path=>"style/Sulfur.css", :md5=>"88fb6eac3671593ef57c4b6b76802280"},
{:version=>"1.4.0 - 1.4.2", :path=>"style/Sulfur.css", :md5=>"8c719837ddd3d1b76c9bdd2bf39b7078" },
{:version=>"1.4.3", :path=>"style/Sulfur.css", :md5=>"d6207b6358017e91f3adef28764634a7"},
{:version=>"1.4.4 - 1.4.5", :path=>"style/Sulfur.css", :md5=>"ededb4d5139af9984a4e64fc080ce0e4"},
{:version=>"1.3", 	:path=>"style/print.css", :md5=>"0956e3e8738ee13ee4845b90acd80a9c"},
{:version=>"1.2.x",     :path=>"style/Mercury.css", :md5=>"02a0558c65d3d2e7c6895f6bd6e1edf9"},
{:version=>"1.4-beta1 or 1.4-beta2", :path=>"style/Mercury.css", :md5=>"c14d6b084de46779f3b6fb396e74be19"},
{:version=>"1.4-rc1", 	:path=>"style/Mercury.css", :md5=>"f89d52345d2d54a7026703d9a99380a7"},
{:version=>"1.4-rc2 or 1.4-rc3", :path=>"style/Mercury.css", :md5=>"55e3014174acc5026774b868f09bc378"},
{:version=>"1.4.0 - 1.4.2", :path=>"style/Mercury.css", :md5=>"9ac090828cc194ca2d28b4d8294eec62"},
{:version=>"1.4.3", :path=>"style/Mercury.css", :md5=>"191905f7acea9b7f378007b7c020296b"},
{:version=>"1.4.4 - 1.4.5", :path=>"style/Mercury.css", :md5=>"024fc47a49c4e7d56feaadea290ca5d3"},
{:version=>"1.2.x", :path=>"include/template/redirect.tpl", :md5=>"1f71f1b79ca455f691b66e91d47523ec"},
{:version=>"1.3-beta2", :path=>"include/template/redirect.tpl", :md5=>"8b8646ca85c42103ab1941ce33b4058c"},
{:version=>"1.3-legacy or 1.3-r718", :path=>"include/template/redirect.tpl", :md5=>"d7f4ca403f7d4453158b0765196f8173"},
{:version=>"1.4-beta1 or 1.4-beta2", :path=>"include/template/redirect.tpl", :md5=>"ec3fc0a2fa3c13a8599be3cb4cd2aa71"},
{:version=>"1.4-rc1", :path=>"include/template/redirect.tpl", :md5=>"2b361b3c0a7c6c81fa37da171e2c3514"},
{:version=>"1.4-rc2 or 1.4-rc3", :path=>"include/template/redirect.tpl", :md5=>"582d9fd6679af0d26df157399a70864d" },
{:version=>"1.4.x",	:path=>"include/template/redirect.tpl", :md5=>"441a1cd28ac4da75350d8d8438989e29"}
]
	to_download = files.map {|x| x[:path]}.sort.uniq
	downloads={}
	to_download.each do |d|
		target = URI.join(@base_uri.to_s,d).to_s	
		status,url,ip,body,headers=open_target(target)
		downloads[d] = {:md5sum=>Digest::MD5.hexdigest(body).to_s}	
	end
	version=nil
	files.each do |thisfile|
		unless downloads[thisfile[:path]].nil?
			version=thisfile[:version] if downloads[thisfile[:path]][:md5sum] == thisfile[:md5]
		end
	end
	unless version.nil?
		m << {:name=>"md5 sums of files", :version=>version}
	end
	m
end
end
