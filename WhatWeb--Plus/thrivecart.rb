Plugin.define do
    name "thrivecart" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /thrivecart\.js/  }
]
end