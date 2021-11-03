Plugin.define do
    name "网宿" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cdn Cache Server'   },
    { :search => "headers", :text => 'WS CDN Server'   }
]
end