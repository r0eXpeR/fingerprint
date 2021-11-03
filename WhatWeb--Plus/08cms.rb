Plugin.define do
    name "08cms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="08CMS'   },
    { :text => 'typeof(_08cms)'   },
    { :url => '/images/admina/arrow.jpg', :md5 => '4d31afa41252d32d8a9aefe04796eb4e'   },
    { :url => '/images/admina/arrow.jpg', :md5 => '6ad561345b55814902d014707015cf72'   },
    { :url => '/images/admina/logo.png', :md5 => '413946cd43e990aa551335198ae5b631'   },
    { :url => '/images/admina/logo.png', :md5 => 'db113c0f641da45947a371c4b7e1d280'   },
    { :url => '/images/admina/sitmap0.png', :md5 => '71cc4f949f5a50008048e8943c985c0e'   },
    { :url => '/images/admina/sitmap0.png', :md5 => 'e0c4b6301b769d596d183fa9688b002a'   }
]
end