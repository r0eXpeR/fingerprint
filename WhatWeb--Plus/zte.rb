Plugin.define do
    name "zte" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '', :text => '<title>F660</title>'   },
    { :url => '', :text => '<title>ZXV10 MS90'   },
    { :url => '/images/login.jpg', :md5 => '2e93fe9c4844f396de8ef811ce6a48d0'   },
    { :url => '/images/login_02.gif', :md5 => '5e5a716c090c1e121caf3f8324527d67'   },
    { :url => '/img/banner.gif', :md5 => '744230817f17c491db2d576791fba5c8'   }
]
end