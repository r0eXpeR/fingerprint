Plugin.define do
name "CruxCMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CruxCMS - Online Content Manager"
website "http://www.cruxsoftware.co.uk/"
dorks [
'"powered by Crux CMS" -vulnerability'
]
matches [
    {:text=>'<font color="#666666"><center>Powered by <a href="http://www.cruxcms.co.uk">Crux CMS</a></center> </font>'},
    {:text=>'<font color="#666666"><center>Powered by <a href="http://www.cruxsoftware.co.uk">Crux CMS</a></center> </font>'},
    {:text=>'<meta name="Generator" content="Created by Crux CMS http://www.cruxcms.co.uk">'},
    {:text=>'<meta name="Generator" content="Created by CruxCMS http://www.cruxsoftware.co.uk">'},
    {:text=>'Created by CruxCMS'},
    {:text=>'title="CruxCMS" class="blank'}
]
end
