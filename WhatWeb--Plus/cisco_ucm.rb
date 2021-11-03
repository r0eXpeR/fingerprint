Plugin.define do
    name "cisco_ucm" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :text => '/ccmadmin/'   },
    { :text => 'Cisco Unified'   }
]
end