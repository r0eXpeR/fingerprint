Plugin.define do
    name "thinksns" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'T3_lang'   },
    { :search => "headers", :text => 'TSV3_lang'   },
    { :text => '_static/image/favicon.ico'   },
    { :url => '/addons/theme/stv1/_static/js/core.js', :text => 'ThinkSNS'   },
    { :url => '/apps/public/_static/image/f_r_t.png', :md5 => '9cc8bf47492a8055c8a79a6cbe3e93c6'   },
    { :url => '/apps/w3g/_static/js/z.js', :text => 'thinksns'   },
    { :url => '/apps/weiba/Appinfo/icon_app_small.png', :md5 => '3010efd8f2a89a9a8750144b5f141804'   }
]
end