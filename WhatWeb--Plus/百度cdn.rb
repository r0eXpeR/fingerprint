Plugin.define do
    name "百度cdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'apps.bdimg.com'   },
    { :search => "headers", :text => 'libs.baidu.com'   },
    { :text => 'apps.bdimg.com'   },
    { :text => 'libs.baidu.com'   }
]
end