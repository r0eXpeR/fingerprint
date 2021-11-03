Plugin.define do
name "jCore"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "jCore is a free and open source content management system (CMS) written in PHP and distributed under the GNU General Public License."
website "http://jcore.net/about"
dorks [
'intitle:"Admin - jCore - the Webmaster\'s Multisite CMS"'
]
matches [
    {:text=>'JCORE_VERSION ='},
    {:version=>/<link href='https?:\/\/[^'^\?]+\/static\.php\?request=css(&amp;admin=1)?&amp;[\d]+\-v([\d\.]+)/, :offset=>1 },
    {:version=>/<script type='text\/javascript'>\s+var JCORE_VERSION = '([^']+)';/}
]
end
