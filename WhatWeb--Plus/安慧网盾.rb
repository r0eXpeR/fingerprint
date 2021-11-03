Plugin.define do
    name "安慧网盾" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Protected-By: AnHui Web Firewall'   }
]
end