Plugin.define do
    name "froala_editor" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+class="[^"]*(?:fr-view|fr-box)/  }
]
end