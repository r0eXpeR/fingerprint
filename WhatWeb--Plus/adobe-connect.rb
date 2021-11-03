Plugin.define do
name "Adobe-Connect"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Adobe Connect is an enterprise web conferencing solution for online meetings, eLearning, and webinars used by leading corporations and government agencies."
website "https://www.adobe.com/products/adobeconnect.html"
matches [
{ :text=>'<script src="/common/scripts/showContent.js"></script><script type="text/javascript" src="/common/scripts/breezeUI.js"></script><script>' },
{ :version=>/<a class="loginHelp" title="([^\s^\"]+)" target="_blank" href="\/common\/help\/[^\/]+\/go\/login_ts\.html"( target="_blank")?>Help<\/a>/ },
{ :search=>"headers[BREEZESESSION]", :regexp=>/BREEZESESSION=breez[^;]+;/ },
{ :url=>"/favicon.ico", :md5=>"b93d28579e6a42ca452c35e8f1eb23ea" },
]
end
