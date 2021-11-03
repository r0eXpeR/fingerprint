Plugin.define do
    name "projectpoi" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /^(?:https):?..ppoi\.org.lib./, :search => 'body'  }
]
end