Plugin.define do
    name "netgear_dd-wrt" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'NetGear DD-wrt'   }
]
end