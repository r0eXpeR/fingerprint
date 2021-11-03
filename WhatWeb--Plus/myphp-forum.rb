Plugin.define do
name "MyPHP-Forum"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "MyPHP-Forum"
website "http://www.myphp.ws/"
dorks [
'"powered by MyPHP Forum" -Vulnerability'
]
matches [
{ :version=>/    <td width="50%" class="copy" height="24">Powered by: MyPHP Forum v([\d\.]+)/ },
{ :version=>/    <td width="50%" class="copy" height="24">Powered by: <a href="http:\/\/www.myphp.ws">MyPHP Forum v([\d\.]+)/ },
]
end
