Plugin.define do
name "Gitweb"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Gitweb is a Git web interface, the one working on http://www.kernel.org/git/. It is written in Perl, and can be used as a CGI script, or as a mod_perl legacy script (run by ModPerl::Registry handler). It allows browsing a git repository (or a set of git repositories) using a web browser."
website "http://git.or.cz/gitwiki/Gitweb"
dorks [
'"Project" "Description" "Owner" "Last Change" "Search" "summary" "shortlog" "log" "tree" "TXT" "OPML" intitle:git'
]
matches [
    {:module=>/<!\-\- git core binaries version ([\d\.a-z]{1,25}) \-\->/},
    {:module=>/<meta name="generator" content="gitweb\/[\d\.a-z]{1,25} git\/([\d\.a-z]{1,25})"\/>/},
    {:offset=>1, :search=>'body', :regexp=>/gitweb(?:.([\d.]+\d))?/},
    {:regexp=>/<!-- git web interface version ([\d.]+)?/,:offset=>1},
    {:regexp=>/static.gitweb\.js$/, :search=>'body'},
    {:text=>'/gitweb.css'},
    {:text=>'/gitweb.js'},
    {:text=>'content="gitweb'},
    {:version=>/<!\-\- git web interface version ([\d\.a-z]{1,25}), \(C\) 2005-2006, Kay Sievers <kay.sievers@vrfy.org>, Christian Gierke \-\->/},
    {:version=>/<meta name="generator" content="gitweb\/([\d\.a-z]{1,25}) git\/[\d\.a-z]{1,25}"\/>/}
]
end
