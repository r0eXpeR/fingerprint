Plugin.define do
    name "天融信vpn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'TopWebServer'   },
    { :search => "headers", :text => 'topsecsvportalname'   }
]
end