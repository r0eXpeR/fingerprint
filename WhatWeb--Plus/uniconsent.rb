Plugin.define do
    name "uniconsent" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cmp\.uniconsent\.mgr\.consensu\.org.dfp\.js/, :search => 'body'  }
]
end