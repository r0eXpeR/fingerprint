Plugin.define do
name "EDK"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EDK is an Open Source Killboard for EVE-Online, maintained by the EVE Development Network. Requirements: PHP >= version 5, the GD Library, MySQL >= version 5"
website "http://wiki.eve-id.net/EDK"
dorks [
'(inurl:alliance_detail | inurl:pilot_detail | inurl:corp_detail)'
]
matches [
    {:ghdb=>"inurl:alliance_detail | inurl:pilot_detail | inurl:corp_detail"},
    {:text=>'&amp;scl_id=39">Industrial Command Ship</a></b></td>'},
    {:text=>'<!-- /killlistable.tpl -->'},
    {:text=>'<div class="menu-caption">Kills &amp; losses</div>'},
    {:text=>'<tr class="kb-table-row-even">'}
]
end
