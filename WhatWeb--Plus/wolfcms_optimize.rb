Plugin.define do
name "WolfCMS"
authors [
  "Andrew Horton",

]
version "1.0"
description "WolfCMS is an open-source content management system built with PHP."
website "https://www.wolfcms.org/"
matches [
    {:regexp=>/(?:<a href="[^>]+wolfcms\.org[^>]+>Wolf CMS(?:<.a>)? inside|Thank you for using <a[^>]+>Wolf CMS)/},
    {:regexp=>/href="http:\/\/www.wolfcms.org\/" title="Wolf CMS" rel="noreferrer">Wolf CMS<\/a>[\s]+Inside./},
    {:version=>/png" \/> Wolf CMS ([^<]+)<\/div>/}
]
end
