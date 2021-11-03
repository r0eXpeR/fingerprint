Plugin.define do
    name "paloalto_firewall" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => 'Access to the web page you were trying to visit has been blocked in accordance with company policy'   }
]
end