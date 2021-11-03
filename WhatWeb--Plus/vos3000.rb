Plugin.define do
    name "vos3000" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<meta name="description" content="VOS3000'   },
    { :text => '<meta name="keywords" content="VOS3000'   },
    { :text => 'VOS3000'   },
    { :text => 'images/vos3000.ico'   },
    { :url => '/chs/images/favicon.ico', :md5 => 'ec48166d7be37e8d50b132b07fdd2af6'   }
]
end