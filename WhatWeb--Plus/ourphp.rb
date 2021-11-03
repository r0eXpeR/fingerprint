Plugin.define do
    name "ourphp" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Powered by ourphp'   },
    { :text => 'content="OURPHP'   },
    { :url => '/favicon.ico', :md5 => 'a081cf3acc29aa08a215607faa762e61'   }
]
end