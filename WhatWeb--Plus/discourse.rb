Plugin.define do
    name "discourse" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /Discourse(?: ?.?([\d.]+\d))?/, :search => 'body'  }
]
end