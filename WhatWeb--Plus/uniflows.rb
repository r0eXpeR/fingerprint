Plugin.define do
    name "uniflows" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/epaper/templates/blue/uniflows.css', :text => 'imginfo'   },
    { :url => '/epaper/test/images/bg.jpg', :md5 => '0b92c7f3dd83b49d32b91968bdd24c4b'   },
    { :url => '/epaper/test/images/bg1.jpg', :md5 => 'f6224fb661ca49ded46ddb2fa270f63d'   }
]
end