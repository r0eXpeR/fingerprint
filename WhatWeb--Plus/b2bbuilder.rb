Plugin.define do
    name "b2bbuilder" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="B2Bbuilder'   },
    { :text => 'translateButtonId = "B2Bbuilder'   },
    { :url => '/favicon.ico', :md5 => '05b54c4fff0791bbc052ec474bc11878'   },
    { :url => '/favicon.ico', :md5 => 'dff7f7fc1ebf81aff8b7c6b57e274207'   },
    { :url => '/image/admin/logo.png', :md5 => '1bc137c3ff19c94ab450ff31f1d56f61'   },
    { :url => '/image/admin/logo.png', :md5 => '8f7ddcaae3df2fd91d2dd9e7c6c43d14'   }
]
end