Plugin.define do
name "Advanced-Image-Hosting-Script"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "AIHS is a highly-flexible advanced image hosting solution for anyone who wants to offer an image hosting services of any kind."
website "http://yabsoft.com/aihs-feature.php"
matches [
    {:text=>'    <td colspan=2 align=center><h3>Advanced Image Host Script</h3></td>'},
    {:text=>'  .title                          { font-size: 10px; font-weight: bold; line-height: 150%; color: #FFFFFF; height: 26px; background-image: url(./tile_back.gif) }'},
    {:text=>'Welcome to install AIHS Script'},
    {:text=>'yabsoft.com" )'},
    {:version=>/<center><b>Welcome to install AIHS Script ([\d\.]+)<\/b><\/center>/},
    {:version=>/<tr><td class=info width=100%>Welcome to install Advanced Image Hosting Script Pro ([\d\.]+) on your server<\/td><\/tr>/},
    {:version=>/Powered by: <B><a href="http:\/\/yabsoft.com">AIH v([\d\.]+)<\/a><\/B>/}
]
end
