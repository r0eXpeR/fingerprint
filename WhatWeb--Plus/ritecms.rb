Plugin.define do
    name "ritecms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^RiteCMS(?: (.+))?/,:offset => 1, :search => 'body'  }
]
end