Plugin.define do
    name "svelte" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<[^>]+class=\"[^\"]+\ssvelte-[\w]*/  }
]
end