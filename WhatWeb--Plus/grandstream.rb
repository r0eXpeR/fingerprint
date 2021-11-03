Plugin.define do
    name "grandstream" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Grandstream'   },
    { :text => 'Grandstream'   }
]
end