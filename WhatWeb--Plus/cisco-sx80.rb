Plugin.define do
    name "cisco-sx80" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco-SX80'   }
]
end