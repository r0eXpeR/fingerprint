Plugin.define do
    name "linksys_dd-wrt" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Linksys DD-WRT'   }
]
end