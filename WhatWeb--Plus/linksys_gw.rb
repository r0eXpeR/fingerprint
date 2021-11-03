Plugin.define do
    name "linksys_gw" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Linksys GW'   }
]
end