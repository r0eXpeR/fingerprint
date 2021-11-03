Plugin.define do
    name "weixinpl" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/weixinpl/guide/css/resource.css', :text => '.ui-viewport-transitioning .ui-loading {'   },
    { :url => '/weixinpl/mingpian3/css/tips.css', :text => '.tip_message .tip_ico_hits{background-position:-6px -54px;background-repeat:no-repeat;width:45px;}'   },
    { :url => '/weixinpl/pic/default/error.png', :md5 => 'c24990de269a197edc0a14b115b1751a'   }
]
end