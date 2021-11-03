Plugin.define do
    name "海康威视" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:search=>"headers", :text=>'DVRDVS-Webs'},
    {:search=>"headers", :text=>'Hikvision'},
    {:search=>"headers", :text=>'_goaheadwebSessionId'},
    {:text=>'doc/page/login.asp")'},
    {:text=>'g_szCacheTime'},
    {:url=>'/doc/images/login/input_normal.png', :md5=>'aa3905b0ece948af798deb6cad690b56'},
    {:url=>'/doc/images/login/login_14.png', :md5=>'0051c8e1d78d80d2b5b130a9988c544a'}
]
end