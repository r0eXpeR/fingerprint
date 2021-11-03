Plugin.define do
    name "privoxy代理" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => "headers", :text => 'Privoxy'   }
]
end