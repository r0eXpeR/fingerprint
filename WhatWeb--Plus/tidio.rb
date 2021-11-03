Plugin.define do
    name "tidio" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'body', :regexp => /code\.tidio\.co/  }
]
end