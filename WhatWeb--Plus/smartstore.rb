Plugin.define do
    name "smartstore" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /<!--Powered by Smart[sS]tore/  },
    { :regexp => /<meta property="sm:pagedata/  },
    {:offset => 2, :regexp => /^Smart[sS]tore(.NET)? (.+)$/, :search => 'body'  }
]
end