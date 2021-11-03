Plugin.define do
    name "wecenter" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'WeCenter'   },
    { :text => 'aw_template.js'   },
    { :url => '/static/common/topic-min-img.png', :md5 => '9c57dedaa97eddf30f47e09f0e98e50b'   },
    { :url => '/static/js/aw_template.js', :text => 'wecenter'   },
    { :url => '/static/js/fileupload.js', :text => 'wecenter'   },
    { :url => '/static/js/plug_module/blank.gif', :md5 => '325472601571f31e1bf00674c368d335'   }
]
end