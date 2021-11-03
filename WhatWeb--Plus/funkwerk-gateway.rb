Plugin.define do
name "Funkwerk-Gateway"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "Funkwerk Gateway"
website "http://www.funkwerk-ec.com/"
dorks [
'intitle:"Funkwerk * Home Page" "Initial Configuration" "Advanced Configuration"'
]
matches [
    {:search=>"headers", :text=>'Funkwerk BOSS'},
    {:search=>"headers[server]", :regexp=>/^fec\/[\d\.]+ \(Funkwerk BOSS\)$/},
    {:string=>/Welcome to your Funkwerk Gateway <b>([^<]+)<\/b>\.<\/font><br><\/td><\/tr><\/tbody><\/table><\/blockquote>/},
    {:text=>'Welcome to your Funkwerk Gateway'},
    {:url=>"/state", :model=>/<TR>[\s]+<TD BGCOLOR="#C0C0C0">Type of System<\/TD>[\s]+<TD><FONT COLOR="#0000FF">([^<]+)<\/FONT><BR><\/TD>/},

    {:url=>"/state", :string=>/<TR>[\s]+<TD BGCOLOR="#C0C0C0">System Name<\/TD>[\s]+<TD><FONT COLOR="#0000FF">([^<]+)<\/FONT><BR><\/TD>/},

    {:url=>"/state", :version=>/<TR>[\s]+<TD BGCOLOR="#C0C0C0">Software<\/TD>[\s]+<TD><FONT COLOR="#0000FF">V\.(.+) IPSec from [\d]{4}\/[\d]{2}\/[\d]{2} [\d]{2}:[\d]{2}:[\d]{2}<\/FONT><BR><\/TD>/}

]
end
