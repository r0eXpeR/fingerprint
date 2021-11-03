Plugin.define do
name "PortalApp"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "PortalApp is a fast, flexible, configurable CMS and portal system that can be used to create everything from Blogs to Web sites."
website "http://www.portalapp.com/"
dorks [
'"powered by PortalApp" -exploit'
]
matches [
{:regexp=>/<img src='[\/]*images\/palogo_gr_17.gif' height=23 alt='powered by PortalApp' align=[\'|\"]*[center|middle]+[\'|\"]*><\/A>/ },
{:regexp=>/<meta name=[\'|\"]*generator[\'|\"]* content=[\'|\"]*aspapp.com[\'|\"]*[\ \/]*>/ },
]
end
