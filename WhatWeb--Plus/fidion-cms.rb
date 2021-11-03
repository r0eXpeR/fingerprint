Plugin.define do
name "Fidion-CMS"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "CMS"
website "http://www.fidion.de/"
dorks [
'"powered by FCMS Copyright"'
]
matches [
    {:search=>"headers", :text=>'fCMS='},
    {:text=>'<!-- ================== This site is powered by: ==================== -->'},
    {:text=>'<!-- fCMS-Template head.tpl begins -->'},
    {:text=>'<!-- fCMS-Template head.tpl begins'},
    {:text=>'<!-- | fCMS by fidion GmbH, Wüg.         http://www.fidion.de  | -->'}
]
end
