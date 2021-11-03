Plugin.define do
    name "blade" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'headers[x-powered-by]', :regexp => /blade-([\w.]+)?/  }
]
end