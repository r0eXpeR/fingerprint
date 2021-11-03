Plugin.define do
name "TestLink"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "TestLink - open source test management tool"
website "http://www.teamst.org/"
dorks [
'intitle:"TestLink" "New User" "Lost Password" "TestLink project Home" "TestLink is licensed under the GNU GPL"'
]
matches [
    {:certainty=>75, :text=>'<meta name="author" content="Martin Havlat" />'},
    {:regexp=>/<html><head><\/head><body><script type='text\/javascript'>location\.href='https?:\/\/[^\'^\?]+\/login\.php\?note=expired';<\/script><\/body><\/html>/},
    {:text=>'TestLink project <a href="http://testlink.sourceforge.net/docs/testLink.php">Home</a><br />'},
    {:text=>'testlink_library.js'},
    {:version=>/\.png" \/>[\s]*<br \/>TestLink ([^\s^<]+)/}
]
end
