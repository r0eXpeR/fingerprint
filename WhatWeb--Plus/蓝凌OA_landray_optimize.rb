Plugin.define do
    name "蓝凌OA" 
    authors [
        "winezero",

    ]
    version "0.1"
matches [
    {:md5=>'302464c3f6207d57240649926cfc7bd4'},
    {:regexp=>/蓝凌软件|StylePath:\/resource\/style\/default\/|\/resource\/customization/},
    {:text=>'/scripts/jquery.landray.common.js'},
    {:text=>'v11_QRcodeBar clr'},
    {:url=>'/App_Themes/Login/default/images/bg_form_TL.png', :md5=>'d2093064429e9062da93a66c644d0b26'},
    {:url=>'/App_Themes/Login/default/images/img_login.png', :md5=>'b515185204249d45501d840918a3d25c'},
    {:url=>'/App_Themes/Login/default/images/logo.png', :md5=>'3b8f451cf5006971dc0b7fa20abd7809'},
    {:url=>'/scripts/jquery.landray.common.js', :regexp=>/.LEIS_header_nav .optionBar/}
]
end