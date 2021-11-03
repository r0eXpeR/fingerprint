Plugin.define do
    name "wisycms" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :search => 'body', :regexp => /^wisy CMS[ v]{0,3}([0-9.,]*)/  }
]
end