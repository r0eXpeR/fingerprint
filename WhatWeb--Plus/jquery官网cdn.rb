Plugin.define do
    name "jquery官网cdn" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'code.jquery.com'   },
    { :text => 'code.jquery.com'   }
]
end