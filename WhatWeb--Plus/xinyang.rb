Plugin.define do
    name "xinyang" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/common/checkdata.js', :text => 'liuheng.200712.27:'   },
    { :url => '/opac/css/css.css', :text => 'background:url(../img/an.gif)'   },
    { :url => '/opac/img/logo.gif', :md5 => 'de7219883618587074e9edc46e9fb6f2'   }
]
end