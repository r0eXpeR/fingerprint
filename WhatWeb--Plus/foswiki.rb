Plugin.define do
    name "foswiki" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<div class="foswiki(?:Copyright|Page|Main)">/  }
]
end