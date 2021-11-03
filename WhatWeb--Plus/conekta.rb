Plugin.define do
    name "conekta" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /cdn\.conekta\.\w+.js.(?:v([\d.]+)|)/,:offset => 1, :search => 'body'  },
    { :regexp => /conektaapi.v([\d.]+)/,:offset => 1, :search => 'body'  }
]
end