Plugin.define do
    name "cisco-vds" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco-VDS'   }
]
end