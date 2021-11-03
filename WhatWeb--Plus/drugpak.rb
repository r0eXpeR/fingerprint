Plugin.define do
name "DrugPak"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The DrugPak Software Suite is the premier random drug and alcohol testing management software available today. Hundreds of employers, TPAs, MROs, SAPs, clinics, hospitals, and occupational health departments use DrugPak to effectively and efficiently manage drug testing."
website "http://www.drugpak.com/"
dorks [
'inurl:dplive.dll'
]
matches [
    {:certainty=>25, :text=>'<!--Assist making SSL connection-->'},
    {:regexp=>/<!--Request processed in [\d]{2} min, [\d]{2} sec, [\d]{3} ms--><\/BODY>/},
    {:text=>'/dplimg/DPSTYLE.CSS'},
    {:text=>'<LINK REL=StyleSheet HREF="/dplimg/DPSTYLE.CSS" TYPE="text/css" media="all">'},
    {:text=>'<LINK REL=StyleSheet HREF="<#imagepath>/<#_style1 default=dpstyle.css>" TYPE="text/css" MEDIA=screen>'},

    {:text=>'<hr>Powered by DrugPak</body>'},
    {:text=>'Powered by DrugPak'}
]
end
