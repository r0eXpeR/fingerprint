Plugin.define do
name "CMScontrol"
authors [
  "Brendan Coles <bcoles at gmail dot com>", 

]
version "0.2"
description "CMScontrol"
website "http://www.cmscontrol.com/"
dorks [
'"CMScontrol" -"SQL Injection" -exploit inurl:"index.php?id_menu="'
]
matches [
    {:ghdb=>'+CMScontrol inurl:"index.php?id_menu="', :certainty=>25},
    {:regexp=>/<META NAME=[\"\']*generator[\"\']* CONTENT=[\"\']*CMScontrol rel 3.x[\"\']*>/i, :version=>'3.x'},
    {:regexp=>/<META name=[\"\']*abstract[\"\']* content=[\"\']*CMScontrol[\"\']*>/i},
    {:regexp=>/<META name=[\"\']*formatter[\"\']* content=[\"\']*CMScontrol eContent[\"\']*>/i},
    {:regexp=>/<META name=[\"\']*generator[\"\']* content=[\"\']*CMScontrol eContent[\"\']*>/i},
    {:text=>'content="CMScontrol'},
    {:text=>'document.write("<ME"+"TA ht"+"tp-eq"+"uiv=\"REF"+"RESH\" con"+"tent=\"1.00; u"+"rl="+"index"+"."+"ph"+"p\">");'}
]
end
