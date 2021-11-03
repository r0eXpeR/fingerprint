Plugin.define do
name "Intraxxion-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Intraxxion - CMS"
website "http://intraxxion.com/"
matches [
    {:text=>'<!-- site built by Intraxxion'},
    {:text=>'<!-- site built by Intraxxion, www.intraxxion.com, info@intraxxion.com, tel: +31 45 5650207, fax: +31 45 5650123'},
    {:text=>'<!-- site built by Intraxxion, www.intraxxion.com, more_info@intraxxion.com, tel: +31 45 5650207, fax: +31 45 5650123'},
    {:text=>'content="Intraxxion'},
    {:version=>/<meta name="generator" content="Intraxxion CMS ([\d\.]{1,5})" \/>/}
]
end
