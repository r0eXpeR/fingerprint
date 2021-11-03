Plugin.define do
    name "adverticum" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /(?:ad\.)?adverticum\.net.g3\.js/, :search => 'body'  },
    { :regexp => /<div (?:id="[a-zA-Z0-9_]*" )?class="goAdverticum/  }
]
end