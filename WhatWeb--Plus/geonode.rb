Plugin.define do
name "GeoNode"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "GeoNode is a web-based application and platform for developing geospatial information systems (GIS) and for deploying spatial data infrastructures (SDI). "
website "https://github.com/GeoNode/geonode/"
dorks [
'"Powered by GeoNode" intitle:"Explore Layers"'
]
matches [
    {:name=>'Footer',
  :version=>%r{Powered by <a href="http://geonode.org">GeoNode</a> <em>version ([a-z0-9\.]+)</em>} },
    {:name=>'Help link',
  :text=>'<a href="/help/" rel="tooltip" title="help"><i class="icon-question-sign"></i></a>'},
    {:text=>'Powered by <a href="http://geonode.org'},
    {:text=>'href="/catalogue/opensearch" title="GeoNode Search'}
]
end
