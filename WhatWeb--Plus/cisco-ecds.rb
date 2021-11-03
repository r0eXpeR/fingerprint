Plugin.define do
    name "cisco-ecds" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco-ECDS/'   }
]
end