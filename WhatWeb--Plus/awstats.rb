Plugin.define do
name "AWStats"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.2"
description "AWStats - Free log file analyzer for advanced statistics (GNU GPL)."
website "http://awstats.sourceforge.net/"
dorks [
'inurl:awstats ext:pl intitle:"Statistics for"',
'intitle:"statistics of" "advanced web statistics"'
]
matches [
    {:certainty=>75, :ghdb=>'inurl:awstats ext:pl +intitle:"Statistics for"'},
    {:name=>"default logo", :text=>'<a href="http://awstats.sourceforge.net" target="_newawstats"><img src="/icon/other/awstats_logo1.png" border=0 alt="awstats Official Web Site" title="awstats Official Web Site"></a>'},
    {:offset=>1, :search=>'body', :regexp=>/AWStats ([\d.]+(?: \(build [\d.]+\))?)/},
    {:text=>'<a href="http://awstats.sourceforge.net" target="_newawstats">Created by awstats</a><br>'},
    {:text=>'<meta http-equiv="description" content="Awstats - Advanced Web Statistics for'},
    {:text=>'awstats.pl?config='},
    {:url=>'awstats.pl?framename=mainright', :version=>/<FONT COLOR="#000000"><b>Advanced Web Statistics ([0-9\.]+ \(build [0-9\.]+\))/},
    {:version=>/<meta name="generator" content="AWStats ([0-9\.]+ \(build [0-9\.]+\))/}, #" good for 6.7
{:version=>/<FONT COLOR="#000000"><b>Advanced Web Statistics ([0-9\.]+ \(build [0-9\.]+\))/}
]
end
