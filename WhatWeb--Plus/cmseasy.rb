Plugin.define do
    name "cmseasy" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'http://www.cmseasy.cn/service_1.html'   },
    { :text => 'Powered by CmsEasy'   },
    { :text => 'content="CmsEasy'   },
    { :url => '/bbs/css/images/announ.gif', :md5 => '58e959b455c4a49e431dd28868699fe4'   },
    { :url => '/bbs/css/images/avatar.gif', :md5 => 'abf773557bfc1c13a9195ccab619ceb5'   },
    { :url => '/celive/admin/live/loading.gif', :md5 => '11188b5f7d29016c1b75601d16fc5710'   },
    { :url => '/celive/js/images/btn.gif', :md5 => '9c533ec6ac867c3b53d46ebfba173b05'   },
    { :url => '/celive/templates/default/images/admin/yes.gif', :md5 => '9d0aa47f55f95d392dce3b1b12e89d65'   },
    { :url => '/celive/templates/default/skin/admin/bg.gif', :md5 => '5a32a9a43815d203842b68e7d14e9303'   },
    { :url => '/favicon.ico', :md5 => '1d3b0614059f6a05c7c382e5a0646237'   },
    { :url => '/favicon.ico', :md5 => '842ef968b721403178fbe08f1f2e5dfc'   },
    { :url => '/images/admin/readme.gif', :md5 => '3ca64935f89925da7e026d65a85852f7'   },
    { :url => '/images/admin/readme.gif', :md5 => 'f41f58d4ba82fdb6321a840034c8a0fd'   },
    { :url => '/images/logo_wap.png', :md5 => 'b9281e6bd84987b3bcb5684d89c313cc'   },
    { :url => '/images/logo_wap.png', :md5 => 'ea7df0f2227edaf63758210bea2041a1'   },
    { :url => '/js/upimg/subbotton.gif', :md5 => '16c38dd8f84747a9d725aa575e5bfc27'   },
    { :url => '/js/upimg/subbotton.gif', :md5 => 'bbd26a98bdbb956f9d29fed899789471'   },
    { :url => '/template/admin/skin/images/bg.jpg', :md5 => '5254c432184310dd9d0e748d701fd56d'   },
    { :url => '/template/admin/skin/images/bg.jpg', :md5 => 'a184792f8d065812790468783efdc1cb'   }
]
end