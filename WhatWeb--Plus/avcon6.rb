Plugin.define do
    name "avcon6" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'AVCON6系统管理平台'   },
    { :text => 'filename=AVCON6Setup.exe'   },
    { :text => 'language_dispose.action'   },
    { :url => '/inc/WebLogin.js', :text => 'avcon'   }
]
end