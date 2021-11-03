Plugin.define do
    name "phpmywind" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="PHPMyWind'   },
    { :text => 'phpMyWind.com All Rights Reserved'   },
    { :url => '/admin/editor/plugins/flash/flash.js', :text => 'PHPMyWind'   },
    { :url => '/admin/templates/js/frame.js', :text => 'phpmywind'   },
    { :url => '/data/api/alipay/images/alipay.gif', :md5 => '83ed689d5e526921cea3026c5ae0bafa'   },
    { :url => '/data/watermark/watermarket_backup.png', :md5 => '041055a199d8cad38801c9df55efc5eb'   },
    { :url => '/robots.txt', :text => 'PHPMyWind'   }
]
end