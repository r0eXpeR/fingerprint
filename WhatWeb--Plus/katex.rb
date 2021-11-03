Plugin.define do
    name "katex" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :offset => 1, :regexp => /katex(@|.)[0-9.]+(?:.dist)?.katex(?:\.min)?\.(mjs|js|css)/, :search => 'body'  }
]
end