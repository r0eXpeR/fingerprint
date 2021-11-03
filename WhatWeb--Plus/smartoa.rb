Plugin.define do
    name "smartoa" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'smartoa'   },
    { :text => '/smartoa.plist'   }
]
end