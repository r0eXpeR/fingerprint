Plugin.define do
    name "mautic" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /[^a-z]mtc.*\.js/, :search => 'body'  }
]
end