Plugin.define do
name "BackupPC"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "BackupPC is a high-performance, enterprise-grade system for backing up Linux, WinXX and MacOSX PCs and laptops to a server's disk."
website "http://backuppc.sourceforge.net/"
dorks [
'intitle:"BackupPC Server Status" inurl:BackupPC_Admin'
]
matches [
    {:certainty=>75, :ghdb=>'inurl:"/cgi-bin/BackupPC_Admin"'},
    {:search=>"headers", :text=>'Backup'},
    {:search=>"headers", :text=>'BackupPC_Admin'},
    {:search=>"headers[www-authenticate]", :regexp=>/Basic realm="(Backup Admin|BackupPC admin|backuppc)"/},
    {:text=>'</head><body onLoad="document.getElementById(\'NavMenu\').style.height=document.body.scrollHeight">'},
    {:text=>'<input type="hidden" name="action" value="hostInfo"><input type="submit" value="Go" name="ignore">'},
    {:url=>"/", :search=>"headers[location]", :regexp=>/\/cgi-bin\/BackupPC_Admin$/}
]
end
