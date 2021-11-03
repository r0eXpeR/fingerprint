Plugin.define do
name "ClipBucket"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ClipBucket is an OpenSource Multimedia Management Script"
website "http://clip-bucket.com"
dorks [
'"Forged by ClipBucket"'
]
matches [
    {:search=>"headers[set-cookie]", :regexp=>/pageredir=https?%3A%2F%2F/, :certainty=>25 },
    {:string=>/<meta name="copyright" content="ClipBucket - PHPBucket ClipBucket 2007 - (20[\d]{2})" \/>/},
    {:text=>'<!-- ClipBucket v2 -->', :version=>"2.x"},
    {:text=>'<!-- ClipBucket'},
    {:text=>'<!-- Forged by ClipBucket -->'},
    {:text=>'<!-- Forged by ClipBucket ends -->'},
    {:text=>'<!-- Forged by ClipBucket'},
    {:text=>'<!-- Please do not remove this unless you have license -->'},
    {:text=>'<!-- Setting Template Variables -->'},
    {:text=>'<meta name="author" content="Arslan Hassan - http://clip-bucket.com/arslan-hassan" />'},
    {:text=>'Forged by <a href="http://clip-bucket.com/">ClipBucket</a>'},
    {:text=>'content="ClipBucket'},
    {:text=>'href="http://clip-bucket.com/">ClipBucket'},
    {:version=>/<!-- ClipBucket version ([\d\.]+) -->/}
]
end
