Plugin.define do
    name "godaddy_website_builder" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Go Daddy Website Builder (.+)/, :search => 'body'  }
]
end