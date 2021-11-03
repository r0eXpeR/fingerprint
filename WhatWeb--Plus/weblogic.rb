Plugin.define do
    name "weblogic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/console/framework/skins/wlsconsole/images/login_WebLogic_branding.png'     },
    { :text => 'Welcome to Weblogic Application Server'     },
    { :text => '<i>Hypertext Transfer Protocol -- HTTP/1.1</i>'    },
    { :text => '<title>Oracle WebLogic Server 管理控制台</title>'    },
    { :text => 'Error 403--'     },
    { :text => 'Error 404--Not Found'    },
    { :text => 'Welcome to Weblogic Application Server'    },
    { :url => '/console/framework/skins/wlsconsole/images/Branding_Login_WeblogicConsole.gif', :md5 => 'fc50c550d6aba02e62f607a6905c8554'     },
    { :url => '/console/framework/skins/wlsconsole/images/Branding_WeblogicConsole.gif', :md5 => '943ffab4d425979a3bb0bacaa4d0deb7'     },
    { :url => '/console/framework/skins/wlsconsole/images/Loginarea_Background.png', :md5 => 'fdc6dc439124a7c685c98bcaebfd0e0a'     },
    { :url => '/console/framework/skins/wlsconsole/images/pageIdle.gif', :md5 => '86d99c1988ecd9b9e1f09d34b318f7ca'     },
    { :url => '/console/images/button_bg_n.png', :md5 => '83676097dde461e00c4f9da0a8e00a89'     }
]
end