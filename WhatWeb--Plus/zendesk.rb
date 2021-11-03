Plugin.define do
    name "zendesk" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /static\.zdassets\.com/, :search => 'body'  }
]
end