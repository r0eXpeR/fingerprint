Plugin.define do
    name "linksys_fw" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Linksys FW'   }
]
end