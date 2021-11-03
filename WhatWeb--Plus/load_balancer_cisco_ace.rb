Plugin.define do
    name "load_balancer_cisco_ace" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco ACE'   }
]
end