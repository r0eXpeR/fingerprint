Plugin.define do
name "TomatoCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TomatoCMS considers each web page made up of many different elements called widgets. You can easily create, customize the layout of your site like never before through a visual tool called Layout Editor very easy and convenient."
website "http://www.tomatocms.com/"
dorks [
'"powered by TomatoCMS"'
]
matches [
{:text=>'<a href="http://www.tomatocms.com" title="Powered by TomatoCMS" target="_blank">' },
{:text=>"	Tomato.Core.Widget.Loader.baseUrl = 'http://" },
{:text=>'					<h1>TomatoCMS Install Wizard</h1>', :version=>"Install Page" },
]
end
