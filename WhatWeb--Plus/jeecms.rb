Plugin.define do
    name "jeecms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by JEECMS'   },
    { :text => 'http://www.jeecms.com'   },
    { :url => '/common_res/js/pony.js', :md5 => 'e35895263a04757cf1b5d8a711ffdc9a'   },
    { :url => '/front_res/front.css', :md5 => 'f5898f194537e821483f117253762291'   },
    { :url => '/r/cms/www/red/img/prompt.jpg', :md5 => '1bc654e36d809615d463d9bf110d75e8'   },
    { :url => '/res/jeecms/img/admin/icon.png', :md5 => 'd669c8de1fab38ecad88328118ff5f82'   },
    { :url => '/res/jeecms/img/admin/icon.png', :md5 => 'e796e745a89c38521bf1292808379317'   },
    { :url => '/res/jeecms/img/login/llogo.jpg', :md5 => 'a321fb9e888181da07cdf4c8e98b3034'   }
]
end