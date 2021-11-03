Plugin.define do
name "Warcraft-3-Frozen-Throne-Mod-Config-File"
authors [
  "Brendan Coles <bcoles@gmail.com>", 

]
version "0.1"
description "The Warcraft 3 mod for AMX-Mod-X for Half-Life uses a config file which contains mySQL username, password, server, database name, table name. This plugin grabs the mySQL username, password and server."
matches [
{ :text=>'// Radius to give XP to teammates near where the special objective is completed (rescued hosties, bomb planted, killed vip, vip escaped, default is 750)' },
]
passive do
        m=[]
        if @body =~ /wc3_sql_dbhost		"([^\"]+)"/ and @body =~ /wc3_sql_dbuser		"([^\"]+)"/ and @body =~ /wc3_sql_dbpass		"([^\"]*)"/
                version=@body.scan(/wc3_sql_dbuser		"([^\"]+)"/)[0][0] + ":" + @body.scan(/wc3_sql_dbpass		"([^\"]*)"/)[0][0] + "@" + @body.scan(/wc3_sql_dbhost		"([^\"]+)"/)[0][0]
                m << {:version=>version}
        end
        m
end
end
