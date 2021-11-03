Plugin.define do
    name "cscms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/csdj/admin/js/admin.js', :text => 'Cscms'   },
    { :url => '/csdj/images/tip-top.png', :md5 => '8953e4f362adadc2fd1bb573e8998a10'   },
    { :url => '/csdj/js/plajax.js', :text => 'cscms'   },
    { :url => '/skins/index/default/images/tj.gif', :md5 => '1a33948d32ae519a62cb8dab5caf9ffd'   }
]
end