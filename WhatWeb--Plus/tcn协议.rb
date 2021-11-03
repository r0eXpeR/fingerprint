Plugin.define do
    name "tcn协议" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Tcn: choice'   },
    { :search => "headers", :text => 'Tcn: list'   }
]
end