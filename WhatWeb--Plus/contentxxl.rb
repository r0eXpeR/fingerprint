Plugin.define do
name "ContentXXL"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "ContentXXL - CMS [German] - Requires: .NET"
website "http://www.contentxxl.de/"
matches [
    {:string=>/<meta name="generator" content="contentXXL Business Content Management System  [^\(]+\(([^\)]+), [^,^>]+, (Release|Debug)\) \/ contentXXL International GmbH \/ www.contentxxl.de" [\/]?>/},
    {:text=>'content="contentXXL'},
    {:version=>/<meta name="generator" content="contentXXL Business Content Management System  ([^\(]+)\([^\)]+\) \/ contentXXL International GmbH \/ www.contentxxl.de" [\/]?>/}
]
end
