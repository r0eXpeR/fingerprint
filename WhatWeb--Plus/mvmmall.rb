Plugin.define do
    name "mvmmall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'content="MvMmall'   },
    { :url => '/favicon.ico', :md5 => 'db2e15a0fcb892ea1d681bb9c5915506'   },
    { :url => '/images/admincp/cpicon.gif', :md5 => '459ea752c044ec4dc744c4d6fdc78d9e'   },
    { :url => '/images/enums.js', :md5 => '459ea752c044ec4dc744c4d6fdc78d9e'   },
    { :url => '/images/pay/chinabank.gif', :md5 => '4f13d30d549ca98324a9289790009744'   },
    { :url => '/language/cn/admin/lang.js', :md5 => 'f48f9784f61e981decfae2d55bbdad4a'   }
]
end