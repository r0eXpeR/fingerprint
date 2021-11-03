Plugin.define do
    name "cisco_asa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco ASA'   }
]
end