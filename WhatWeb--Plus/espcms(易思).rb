Plugin.define do
    name "espcms(易思)" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/', :text => 'espcms'   },
    { :url => '/adminsoft/control/connected.php', :text => 'espcms'   },
    { :url => '/adminsoft/control/sqlmanage.php', :text => 'espcms'   },
    { :url => '/adminsoft/include/admin_language_cn.php', :text => 'espcms'   },
    { :url => '/adminsoft/js/control.js', :text => 'espcms'   },
    { :url => '/adminsoft/templates/images/class_bg.jpg', :md5 => '7ca4a25818a0c261841b9c0df8968e23'   },
    { :url => '/adminsoft/templates/images/login_line.png', :md5 => 'aa782fa301d616db1527e81c1bd6834c'   },
    { :url => '/adminsoft/templates/images/login_line.png', :md5 => 'b1e011b40783bad70cbe8e2da622d4a6'   },
    { :url => '/adminsoft/templates/images/login_title.png', :md5 => '451cfba70adc60cb3804b0ad9b72bead'   },
    { :url => '/adminsoft/templates/images/login_title.png', :md5 => '87db8a3e67ea2e6e08bc05c574692142'   },
    { :url => '/adminsoft/templates/images/login_title.png', :md5 => 'e7a30897caa1e2a9d22dc17910768fe9'   },
    { :url => '/adminsoft/templates/images/windowclose.jpg', :md5 => 'a065fe4dcf529c47e21be6d664d84cc5'   },
    { :url => '/install/dbmysql/db.sql', :text => 'espcms'   },
    { :url => '/install/dbmysql/demodb.sql', :text => 'espcms'   },
    { :url => '/install/lan_inc.php', :text => 'espcms'   },
    { :url => '/install/sys_inc.php', :text => 'espcms'   },
    { :url => '/install/templates/step.html', :text => 'espcms'   },
    { :url => '/license.txt', :text => 'espcms'   },
    { :url => '/public/class_dbmysql.php', :text => 'espcms'   },
    { :url => '/public/plug/im/im_bg.png', :md5 => '702ba61913dbdebfeaa403379b5cfc8a'   },
    { :url => '/public/tinyMCE/themes/simple/img/icons.gif', :md5 => '1c860788c919c0ba62bca6be37b8b263'   },
    { :url => '/public/tinyMCE/themes/simple/img/icons.gif', :md5 => '3a228c1277d7bdfada1ad8935a69d5da'   },
    { :url => '/templates/wap/cn/public/footer.html', :text => 'espcms'   },
    { :url => '/templates/wap/en/public/footer.html', :text => 'espcms'   }
]
end