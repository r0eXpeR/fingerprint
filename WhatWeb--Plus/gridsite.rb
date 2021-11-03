Plugin.define do
name "GridSite"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "In its simplest application, GridSite uses X.509 certificates loaded into unmodified versions of web browsers like Internet Explorer, Netscape or Mozilla to authenticate users, and then grants read and write authorization on this basis. HTML and text files can be edited within a browser window, or pages and binary files can be uploaded from local disk. Certificate based authentification of users is now far more practical with the start of large scale issuing of X.509 certificates within Grid projects."
website "http://www.gridsite.org/"
dorks [
'inurl:gridsite-admin.cgi filetype:cgi -inurl'
]
matches [
    {:text=>"<!-- start of gridsitefoot.txt -->"},
    {:text=>'<a href="gridsite-admin.cgi?cmd=history&amp;file=index.html">View&nbsp;page&nbsp;history</a>'},
    {:text=>'<a href="gridsite-admin.cgi?cmd=print&amp;file=index.html">Print&nbsp;View</a>'},
    {:text=>'<a href="http://www.gridsite.org/">GridSite'},
    {:text=>'gridsite-admin.cgi?cmd'},
    {:version=>/Built with <a href="http:\/\/www.gridsite.org\/">GridSite<\/a> ([\d\.]+)/},
    {:version=>/Built with <a href="http:\/\/www.gridsite.org\/">GridSite<\/a>&nbsp;([\d\.]+)/}
]
end
