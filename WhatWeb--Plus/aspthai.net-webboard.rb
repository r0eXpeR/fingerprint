Plugin.define do
name "ASPThai_Net-Webboard"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "ASPThai.Net Webboard"
website "http://www.aspthai.net/"
dorks [
'"powered by ASPThai.Net Webboard version"'
]
matches [
{ :text=>'<meta name="copyright" content="Copyright (C) 2002-2005 Supap Wanawan" />' },
{ :version=>/  <br \/><br \/><span class="text" style="font-size:10px">Powered by <a href="http:\/\/www.aspthai.net\/" target="_blank" style="font-size:10px">ASPThai.Net Webboard<\/a> version ([\d\.]+)<\/span><br \/>/ },
{ :version=>/<!-- ASPThai.Net Webboard ver. ([\d\.]+) is written and produced by Supap Wanawan/ },
]
end
