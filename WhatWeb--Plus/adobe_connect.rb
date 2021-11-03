Plugin.define do
    name "adobe_connect" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'BREEZESESSION='   },
    { :text => '/common/scripts/showContent.js'   }
]
end