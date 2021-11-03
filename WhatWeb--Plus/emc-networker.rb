Plugin.define do
name "EMC-NetWorker"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "EMC NetWorker (formerly Legato NetWorker) centralizes, automates, and accelerates data backup and recovery."
website "http://www.emc.com/domains/legato/index.htm"
matches [
{ :text=>'<title>Welcome to NetWorker Management Console</title>' },
]
end
