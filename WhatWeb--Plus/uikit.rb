Plugin.define do
    name "uikit" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+class="[^"]*(?:uk-container|uk-section)/  },
    { :regexp => /uikit.*\.js/, :search => 'body'  }
]
end