Plugin.define do
    name "allegro_rompager" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :search => 'headers[server]',:offset => 1, :regexp => /Allegro-Software-RomPager(?:.([\d.]+))?/  }
]
end