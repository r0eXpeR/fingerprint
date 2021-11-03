Plugin.define do
name "Oracle-Application-Server"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Oracle Application Server - superseded by Oracle iAS (Internet Application Server)"
website "http://www.oracle.com/technetwork/middleware/ias/index.html"
matches [
    {:search=>"headers", :text=>'Oracle-Application-Server'},
    {:search=>"headers[server]", :module=>/^Oracle[ -]Application[ -]Server.+ (OracleAS-Web-Cache-1[01]g\/[^\s]+)/},
    {:search=>"headers[server]", :string=>/^Oracle-Application-Server-(1[01]g)/},
    {:search=>"headers[server]", :version=>/^Oracle Application Server\/1[01]g \(([^\s^\)]+)\)/},
    {:search=>"headers[server]", :version=>/^Oracle-Application-Server-1[01]g\/([^\s]+)/}
]
end
