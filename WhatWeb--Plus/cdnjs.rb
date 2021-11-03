Plugin.define do
    name "cdnjs" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'cdnjs.cloudflare.com/ajax/libs'   },
    { :text => 'cdnjs.cloudflare.com/ajax/libs'   }
]
end