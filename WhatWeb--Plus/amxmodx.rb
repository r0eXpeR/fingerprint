Plugin.define do
name "AMX-Mod-X"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

  "Andrew Horton", 

]
version "0.2"
description "AMX Mod X is a versatile Half-Life metamod plugin which is targetted toward server administration."
website "http://www.amxmodx.org/"
dorks [
'ext:cfg "Linux users may encounter problems if they specify"'
]
matches [
{ :text=>'// *NOTE* amx_sql_type specifies the DEFAULT database type which admin.sma will use.' },
]
passive do
	m=[]
	if @body =~ /amx_sql_host[\s]+"([^\"]*)"/ and @body =~ /amx_sql_user[\s]+"([^\"]+)"/ and @body =~ /amx_sql_pass[\s]+"([^\"]*)"/
                version=@body.scan(/amx_sql_user[\s]+"([^\"]+)"/)[0][0] + ":" + @body.scan(/amx_sql_pass[\s]+"([^\"]*)"/)[0][0] + "@" + @body.scan(/amx_sql_host[\s]+"([^\"]+)"/)[0][0]
                m << {:version=>version}
        end
        m
end
end
