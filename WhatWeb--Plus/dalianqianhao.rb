Plugin.define do
    name "dalianqianhao" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/ACTIONLOGON.APPPROCESS?mode=5', :text => 'javascript:return Judge();'   },
    { :url => '/User_JSP/images/Logon.gif', :md5 => '6eb8477036c2eb10b2d9b151dc2198a0'   }
]
end