Plugin.define do
    name "destoon" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '<meta name="generator" content="Destoon'   },
    { :text => 'destoon_moduleid'   },
    { :url => '/favicon.ico', :md5 => '8375be1e87528a6e6aca699910b1cace'   },
    { :url => '/file/script/config.js', :md5 => '4e3c3d65e1014c60b9163c58d6feb397'   }
]
end