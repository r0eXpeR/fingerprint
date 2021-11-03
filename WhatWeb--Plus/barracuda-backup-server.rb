Plugin.define do
name "Barracuda-Backup-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Local inline Deduplication Backup Systems with available offsite Cloud Storage or site to site replication."
website "https://www.barracudanetworks.com/ns/products/backup_overview.php"
matches [
    {:search=>"headers", :text=>'BACKUP_LOCAL_LOCALE'},
    {:search=>"headers[set-cookie]", :regexp=>/BACKUP_LOCAL_LOCALE=/},
    {:text=>'<div id="logo-wrapper"><a id="logo" href="http://www.barracudanetworks.com/ns/?a=backup_localui">Barracuda Networks</a></div>'},
    {:url=>"/auth/signin/", :model=>/<div id="label">Backup Server ([^\s^<]+)<\/div>/},
    {:url=>"/include/cui/images/favicon.ico", :md5=>"de2b6edbf7930f5dd0ffe0528b2bbcf4"}
]
end
