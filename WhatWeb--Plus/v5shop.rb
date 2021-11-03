Plugin.define do
    name "v5shop" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by V5Shop'   },
    { :text => 'content="V5shop'   },
    { :text => 'v5shop'   },
    { :url => '/favicon.ico', :md5 => '9b77f0102bed99fb8643f003dfe42b8c'   },
    { :url => '/install/images/logo.jpg', :md5 => 'c8fe8a6c2a19e8f0d3f2574e76020c74'   },
    { :url => '/weblogin/images/login1.jpg', :md5 => '36af060c18c90ddeea69458f5ab91de0'   }
]
end