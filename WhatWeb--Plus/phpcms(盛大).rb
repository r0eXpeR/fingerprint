Plugin.define do
    name "phpcms(盛大)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/admin/index.htm', :text => 'phpcms'   },
    { :url => '/ads/install/templates/ads-float.html', :text => 'phpcms'   },
    { :url => '/announce/install/templates/index.html', :text => 'phpcms'   },
    { :url => '/bill/install/mysql.sql', :text => 'phpcms'   },
    { :url => '/comment/include/js/comment.js', :text => 'phpcms'   },
    { :url => '/data/js/config.js', :text => 'phpcms'   },
    { :url => '/digg/install/templates/index.html', :text => 'phpcms'   },
    { :url => '/editor/js/editor.js', :text => 'phpcms'   },
    { :url => '/error_report/install/mysql.sql', :text => 'phpcms'   },
    { :url => '/formguide/install/templates/form_index.html', :text => 'phpcms'   },
    { :url => '/guestbook/install/templates/index.html', :text => 'phpcms'   },
    { :url => '/house/.htaccess', :text => 'phpcms'   },
    { :url => '/images/js/admin.js', :text => 'phpcms'   },
    { :url => '/index.html', :text => 'phpcms'   },
    { :url => '/install/cms_index.html', :text => 'phpcms'   },
    { :url => '/link/install/templates/index.html', :text => 'phpcms'   },
    { :url => '/mail/install/templates/sendmail.html', :text => 'phpcms'   },
    { :url => '/member/include/js/login.js', :text => 'phpcms'   },
    { :url => '/message/install/mysql.sql', :text => 'phpcms'   },
    { :url => '/module/info/include/mysql/phpcms_info.sql', :text => 'phpcms'   },
    { :url => '/mood/install/templates/header.html', :text => 'phpcms'   },
    { :url => '/order/install/templates/deliver.html', :text => 'phpcms'   },
    { :url => '/page/aboutus.html', :text => 'phpcms'   },
    { :url => '/phpcms/templates/default/member/connect.html', :text => 'phpcms'   },
    { :url => '/phpcms/templates/default/wap/header.html', :text => 'phpcms'   },
    { :url => '/phpsso_server/statics/js/formvalidator.js', :text => 'phpcms'   },
    { :url => '/robots.txt', :text => 'phpcms'   },
    { :url => '/search/install/templates/index.html', :text => 'phpcms'   },
    { :url => '/space/images/js/space.js', :text => 'phpcms'   },
    { :url => '/special/type/dev.html', :text => 'phpcms'   },
    { :url => '/spider/uninstall/mysql.sql', :text => 'phpcms'   },
    { :url => '/stat/uninstall/mysql.sql', :text => 'phpcms'   },
    { :url => '/statics/js/cookie.js', :text => 'phpcms'   },
    { :url => '/templates/default/info/area.html', :text => 'phpcms'   },
    { :url => '/union/install/mysql.sql', :text => 'phpcms'   },
    { :url => '/video/install/templates/category.html', :text => 'phpcms'   },
    { :url => '/vote/install/templates/index.html', :text => 'phpcms'   },
    { :url => '/wenba/install/mysql.sql', :text => 'phpcms'   },
    { :url => '/yp/images/js/global.js', :text => 'phpcms'   }
]
end