Plugin.define do
    name "searchspring" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /cdn\.searchspring\.net/  }
]
end