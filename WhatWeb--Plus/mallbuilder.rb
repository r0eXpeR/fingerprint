Plugin.define do
    name "mallbuilder" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by MallBuilder'   },
    { :text => 'content="MallBuilder'   },
    { :url => '/favicon.ico', :md5 => '9b808fca01060a77d853a56336c2d3fb'   },
    { :url => '/image/default/icon.png', :md5 => '466d11df3a2333aba76b3e81556176a4'   }
]
end