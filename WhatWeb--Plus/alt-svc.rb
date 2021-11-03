Plugin.define do
    name "alt-svc" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Alt-Svc'   }
]
end