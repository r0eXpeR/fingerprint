Plugin.define do
    name "cisco-dlt" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco-DLT'   },
    { :text => 'System name: Cisco DLT'   }
]
end