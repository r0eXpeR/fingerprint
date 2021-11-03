Plugin.define do
name "adxstudio-cms"
authors [
  "Aung Khant <http://yehg.net/>", 

  "Andrew Horton", 

]
version "0.2"
description "ADXStudio CMS"
website "http://www.adxstudio.com"
matches [
    {:name=>'Set-cookie Header', :search=>"headers[set-cookie]", :regexp=>/anonprofile/i},
    {:search=>"headers", :text=>'anonprofile'},
    {:text=>'/PoweredByADX.gif'},
    {:text=>'/poweredbyadx.png'},
    {:text=>'Powered by Adxstudio'},
    {:text=>'alt="Powered by Adxstudio"'},
    {:text=>'poweredbyadx.png'}
]
end
