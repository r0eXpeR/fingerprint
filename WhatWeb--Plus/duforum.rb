Plugin.define do
name "DUforum"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "Forum. Homepage used to be http://www.duware.com/"
dorks [
'"powered by duforum" intitle:DUdforum'
]
matches [
{:certainty=>75, :ghdb=>'+"powered by duforum" +intitle:DUdforum' },
{:name=>"default title",  :regexp=>/<title>DUdforum[0-9a-zA-Z\ \.-]+<\/title>/},
{:name=>"default text", :text=>'<td align="right" valign="middle" class="text">Powered by <a href="http://www.duware.com" target="_blank">DUforum</a></td>'
}
]
end
