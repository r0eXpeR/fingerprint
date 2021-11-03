Plugin.define do
    name "4-tell" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /4tellcdn\.azureedge\.net/  }
]
end