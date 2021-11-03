Plugin.define do
    name "mermaid" 
    authors [
        "winezero",

    ]
    version "0.1"
    matches [ { :regexp => /.mermaid(?:\.min)?\.js/, :search => 'body'  },
    { :regexp => /<div [^>]*class=["']mermaid["']>/, :certainty => 90  }
]
end