Plugin.define do
name "Pixel-Ads-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Pixel Ads Script"
website "http://www.pixel-ads-script.com/"
matches [
{ :text=>'<a href="index.php?magnify=1">Magnifier On</a></div>' },
{ :text=>'<a href="index.php?magnify=1">Zoom On</a></div>' },
{ :text=>'  <title>Pixel Ads Script</title>' },
{ :text=>'  <title>Scrap Pixels - Pixel List</title>' },
{ :text=>'  <title>Pixel Ads Script Administration - Administrator Login</title>' },
{ :text=>'          <td width="850" class="sitetitle">Pixel Ads Script' },
{ :regexp=>/          <td width="150" class="statsbox" bgcolor="#FFFFFF"><strong>Pixels Sold:<\/strong> [\d\,]+<br>/ },
{ :text=>' href="http://www.pixel-ads-script.com">Powered by: Pixel-Ads-Script.Com</a></div>' }
]
end
