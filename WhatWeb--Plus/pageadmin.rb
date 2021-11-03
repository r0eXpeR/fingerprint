Plugin.define do
    name "pageadmin" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/e/images/favicon.ico'   },
    { :text => 'content="PageAdmin CMS'   },
    { :url => '/admin/images/login_r1_c1.jpg', :md5 => '3b0397c10a95f2277cab33ffa821009b'   },
    { :url => '/e/install/images/bg_1.gif', :md5 => '76efad2703792d609f374710121a056d'   },
    { :url => '/e/install/images/bg_1.gif', :md5 => 'b3a135e302f9b390321b6e4ca7b19917'   },
    { :url => '/e/install/images/logo.gif', :md5 => '4686d086a472354238483f65ed13f565'   },
    { :url => '/e/js/comm.js', :md5 => '0b726739e6c97b6f800231e31301e9b8'   },
    { :url => '/e/js/comm.js', :md5 => 'df689539f35070d6948efd02c6f0130b'   },
    { :url => '/e/js/lang/zh-cn.js', :md5 => '55b4396bac94c6eb98fe4a4cf4434c26'   },
    { :url => '/e/js/zh-cn/lang.js', :md5 => 'ad125ceafcec5a03b37b2a766360ebdc'   },
    { :url => '/e/master/images/login_r1_c1.jpg', :md5 => '3b0397c10a95f2277cab33ffa821009b'   },
    { :url => '/e/master/images/login_r2_c1.jpg', :md5 => 'cb61ba1bfef8f2c7f63f48574a777154'   },
    { :url => '/master/images/login_r1_c1.jpg', :md5 => '3b0397c10a95f2277cab33ffa821009b'   }
]
end