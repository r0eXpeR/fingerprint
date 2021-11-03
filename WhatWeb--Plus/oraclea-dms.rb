Plugin.define do
    name "oraclea-dms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'X-Oracle-Dms-Ecid'   }
]
end