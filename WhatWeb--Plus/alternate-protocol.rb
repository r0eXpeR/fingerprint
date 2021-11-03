Plugin.define do
    name "alternate-protocol" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Alternate-Protocol'   }
]
end