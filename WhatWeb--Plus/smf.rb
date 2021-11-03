Plugin.define do
name "SMF"
authors [
  "Andrew Horton",

  "Brendan Coles <bcoles at gmail dot com>", 

  "@csalazar", 

]
version "0.6"
description "SMF (Simple Machines Forum) is an opensource forum written in PHP"
website "www.simplemachines.org"
dorks [
'"Powered by SMF"'
]
matches [
    {:name=>"copyright link", :text=>'<a href="http://www.simplemachines.org/about/copyright.php" title="Free Forum Software" target="_blank"'},
    {:name=>"javascript", :text=>'document.getElementById("upshrink").src = smf_images_url + '},
    {:name=>"smflogo gif", :regexp=>/<img class="floatright" id="smflogo" src="[^"]*\/images\/smflogo.gif" alt="Simple Machines Forum" \/>/},
    {:regexp=>/credits.?" title="Simple Machines Forum" target="_blank" class="new_win">SMF ([0-9.]+)<.a>/,:offset=>1  },
    {:version=>/<a href=".*?" title="Simple Machines Forum" target="_blank" class="new_win">SMF ([^<]+)/},
    {:version=>/<a href="http:\/\/www.simplemachines.org\/" title="Simple Machines Forum" target="_blank"( class="new_win")?>Powered by SMF ([^<]+)/, :offset=>1}
]
aggressive do
	m=[]
files=[
{ :md5=>'ede483ddc2d684d708aee1df7e9de681', :version=>'1.0', :path=>'readme.html' },
{ :md5=>'3b120ada16b743ce27a810c8105fae40', :version=>'1.0 RC2', :path=>'readme.html' },
{ :md5=>'b73b15701372af001176948e62de00ac', :version=>'1.0.1 or 1.0.2', :path=>'readme.html' },
{ :md5=>'f60c721e72537b23c1afaf0633401cd5', :version=>'1.0.3 - 1.0.16', :path=>'readme.html' },
{ :md5=>'3deb358d76a6994aa9983f5ed38836af', :version=>'1.1', :path=>'readme.html' },
{ :md5=>'1393566c558c1d1d774f0a78f079538a', :version=>'1.1 beta3p', :path=>'readme.html' },
{ :md5=>'e93f0023701693407c2286d557c2c2d6', :version=>'1.1 RC1', :path=>'readme.html' },
{ :md5=>'97689622417fbf14fa3b10ebedb9644f', :version=>'1.1 RC2', :path=>'readme.html' },
{ :md5=>'3b607dd7ee4357702258bdd22ebdc1f8', :version=>'1.1 RC3', :path=>'readme.html' },
{ :md5=>'3deb358d76a6994aa9983f5ed38836af', :version=>'1.1.1 - 1.1.11', :path=>'readme.html' },
{ :md5=>'2f36557b360975451650eec1d48c79bf', :version=>'2.0 beta3.1p or 2.0 beta3p', :path=>'readme.html' },
{ :md5=>'02da089eaee5a90bb36e37a4e95bc712', :version=>'2.0 beta4p', :path=>'readme.html' },
{ :md5=>'3aeee6d20350784af068a70b1bfe04fb', :version=>'2.0 RC1-x', :path=>'readme.html' },
{ :md5=>'ff976e1647243eaa36a0fba78dae5bdb', :version=>'2.0 RC2', :path=>'readme.html' },
{ :md5=>'b7e4578b6d13bfe9a2393e04f8a9c6b5', :version=>'2.0 RC3', :path=>'readme.html' },
{ :md5=>'a5d38f19dc72114da004f35f4ab0b1e7', :version=>'2.0 RC4', :path=>'readme.html' },
]
	to_download = files.map {|x| x[:path]}.sort.uniq
	downloads={}
	to_download.each do |d|
		target = URI.join(@base_uri.to_s,d).to_s	
		_status,_url,_ip,body,_headers = open_target(target)
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
