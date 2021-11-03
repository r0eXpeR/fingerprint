Plugin.define do
    name "asciinema" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<asciinema-player/  },
    { :regexp => /asciinema\.org./, :search => 'body'  }
]
end