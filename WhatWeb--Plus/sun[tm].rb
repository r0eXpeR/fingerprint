Plugin.define do
    name "sun[tm]" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Server: Sun-ONE-Web-Server'   },
    { :text => 'Sun[tm] ONE Web Server'   }
]
end