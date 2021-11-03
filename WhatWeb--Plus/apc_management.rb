Plugin.define do
    name "apc_management" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'APC Management Card'   },
    { :text => 'This object on the APC Management Web Server is protected'   }
]
end