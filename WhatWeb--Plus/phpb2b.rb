Plugin.define do
    name "phpb2b" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered By PHPB2B'   },
    { :url => '/robots.txt', :text => 'robots.txt for PHPB2B'   },
    { :url => '/templates/skins/default/screenshot.jpg', :md5 => 'a322dfd639bd61a5aadc580bd8516dcd'   }
]
end