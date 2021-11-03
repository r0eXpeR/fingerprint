Plugin.define do
    name "cisco-cds" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Cisco-CDS'   }
]
end