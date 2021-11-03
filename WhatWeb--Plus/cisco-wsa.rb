Plugin.define do
    name "cisco-wsa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco-WSA'   }
]
end