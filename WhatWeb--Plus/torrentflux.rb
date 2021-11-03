Plugin.define do
name "TorrentFlux"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Open source PHP client for web based management of torrents. Features, downloads, forum. - http://www.torrentflux.com/"
dorks [
'"TorrentFlux Login" intitle:TorrentFlux "Username" "Password"'
]
matches [
{ :text=>'<font class="title">TorrentFlux Login</font>' },
{ :text=>'<td><input type="password" name="iamhim" value="" size="15" style="font-family:verdana,helvetica,sans-serif; font-size:9px; color:#000" /></td>' },
]
passive do
	m=[]
	m << { :name=>"TorrentFlux cookie" } if @headers["set-cookie"] =~ /^TorrentFlux=[a-z\d]+; path=\//
	m
end
end
