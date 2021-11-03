Plugin.define do
    name "koken" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--\s+KOKEN DEBUGGING/  },
    { :regexp => /<html lang="en" class="k-source-essays k-lens-essays">/  },
    { :regexp => /Koken ([\d.]+)/, :search => 'body',:offset => 1  },
    { :regexp => /koken(?:\.js\?([\d.]+)|.storage)/,:offset => 1, :search => 'body'  }
]
end