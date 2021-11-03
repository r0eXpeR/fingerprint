Plugin.define do
    name "taodi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :url => '/css/green_list.css', :text => '.taodi_mainbox'   },
    { :url => '/css/pink_list.css', :text => '.taodi_mainbox'   }
]
end